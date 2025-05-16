<template>
  <div>
    <div>
      <!-- <el-image style="animation: header-effect 2s"
                class="background-image"
                v-once
                lazy
                :src="$constant.random_image+new Date()+Math.floor(Math.random()*10)"
                fit="cover">
        <div slot="error" class="image-slot background-image-error"></div>
      </el-image> -->
      <el-image
        style="animation: header-effect 2s"
        class="background-image"
        lazy
        :src="backgrounds[currentIndex]"
        fit="cover"
        :show-error="false"
      >
        <div slot="error" class="image-slot background-image-error"></div>
      </el-image>
      <!-- 输入框 -->
      <div class="message-in" style="text-align: center">
        <h2 class="message-title">树洞</h2>
        <div>
          <input class="message-input"
                 type="text"
                 style="outline: none;width: 70%"
                 placeholder="留下点什么啦~"
                 v-model="messageContent"
                 @click="show = true"
                 maxlength="60"/>
          <button v-show="show"
                  style="margin-left: 12px;cursor: pointer;width: 20%"
                  @click="submitMessage"
                  class="message-input">发射
          </button>
        </div>
      </div>
      <!-- 弹幕 -->
      <div class="barrage-container">
        <vue-baberrage :barrageList="barrageList" :loop="true"></vue-baberrage>
      </div>
    </div>
    <div class="comment-wrap">
      <div class="comment-content">
        <comment :source="$constant.source" :type="'message'" :userId="$constant.userId"></comment>
      </div>
      <myFooter></myFooter>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

const comment = () => import( "./comment/comment");
const myFooter = () => import( "./common/myFooter");


export default {
  components: {
    comment,
    myFooter
  },
  data() {
    return {
      show: false,
      messageContent: "",
      // background: {"background": "url(" + this.$store.state.webInfo.backgroundImage + ") center center / cover no-repeat"},
      barrageList: [],
      currentIndex: 0, // 当前显示的背景图索引
      backgrounds: [], // 存储所有背景图的路径
      // 手动指定错误时的背景图路径，或者使用默认的路径
      errorBackground: "../assets/file/4kdbl.jpg"
    };
  },
  created() {
    this.getTreeHole();
  },
  mounted() {
    this.getRandomcovers(); // 初始化背景图片
    setInterval(() => {
      this.changeBackground(); // 更改背景图片
    }, 9000); // 切换时间为 9 秒
  },
  methods: {
    getTreeHole() {
      this.$http.get(this.$constant.baseURL + "/webInfo/listTreeHole")
        .then((res) => {
          if (!this.$common.isEmpty(res.data)) {
            res.data.forEach(m => {
              this.barrageList.push({
                id: m.id,
                avatar: m.avatar,
                msg: m.message,
                time: Math.floor(Math.random() * 5 + 10)
              });
            });
          }
        })
        .catch((error) => {
          this.$message({
            message: error.message,
            type: "error"
          });
        });
    },
    //在缓存读取图片
    getRandomcovers() {
      // 检查浏览器是否支持 localStorage
      // 如果不支持，则直接从接口获取背景图
      if (!localStorage) {
        this.requestBackgrounds();
        return;
      }

      // 检查是否已经有背景图缓存在本地存储中
      const cachedBackgrounds = localStorage.getItem('backgrounds');

      if (cachedBackgrounds) {
        this.backgrounds = JSON.parse(cachedBackgrounds);
        this.currentIndex = Math.floor(Math.random() * this.backgrounds.length);
      } else {
        this.requestBackgrounds();
      }
    },

    requestBackgrounds() {
      this.$http
        .get(this.$constant.baseURL + "/webInfo/getWebInfo")
        .then((res) => {
          if (!this.$common.isEmpty(res.data)) {
            let randomCover = JSON.parse(res.data.randomCover);
            this.backgrounds = randomCover;

            // 将背景图缓存在本地存储中
            localStorage.setItem('backgrounds', JSON.stringify(randomCover));

            // 随机选择一张背景图作为当前背景图
            this.currentIndex = Math.floor(Math.random() * this.backgrounds.length);
          }
        })
        .catch((error) => {
          this.$message({
            message: error.message,
            type: "error"
          });
        });
    },
    // 获取背景图片
    // getRandomcovers() {
    //   this.$http
    //     .get(this.$constant.baseURL + "/webInfo/getWebInfo")
    //     .then((res) => {
    //       if (!this.$common.isEmpty(res.data)) {
    //         let randomCover = JSON.parse(res.data.randomCover);
    //         this.backgrounds = randomCover;
    //       }
    //     })
    //     .catch((error) => {
    //       this.$message({
    //         message: error.message,
    //         type: "error"
    //       });
    //     });
    // },
    // 更改背景图片
    changeBackground() {
      // 更新索引
      this.currentIndex++;
      if (this.currentIndex >= this.backgrounds.length) {
        // 如果已经到了最后一张背景图，则回到第一张
        this.currentIndex = 0;
      }
    },
    submitMessage() {
      // 检查是否包含违禁词或非法字符
      axios.get('https://qiniu.maoye.vip/weijinci/ForbiddenWord.json')
        .then(res => {
          if (!this.$common.isEmpty(res.data)) {
            const illegalWords = res.data.map(item => item.messages); // 使用从 JSON 文件获取的词语来生成违禁词列表
            const illegalChars = /<|>|\/|\\|\(|\)|'|"/g; // 定义非法字符正则表达式

            if (this.messageContent.trim() === "") {
              this.$message({
                message: "你还没写呢~",
                type: "warning"
              });
              return;
            } else if (illegalWords.some(word => this.messageContent.includes(word))) { // 检查是否包含违禁词
              this.$message({
                message: "存在违禁词！",
                type: "warning"
              });
              this.messageContent = "";
              this.show = false;
              return;
            } else if (illegalChars.test(this.messageContent)) { // 检查是否包含非法字符
              this.$message({
                message: "存在非法字符！",
                type: "warning"
              });
              this.messageContent = "";
              this.show = false;
              return;
            }

            let treeHole = {
              message: this.messageContent.trim()
            };

            if (!this.$common.isEmpty(this.$store.state.currentUser) && !this.$common.isEmpty(this.$store.state.currentUser.avatar)) {
              treeHole.avatar = this.$store.state.currentUser.avatar;
            }

            this.$http.post(this.$constant.baseURL + "/webInfo/saveTreeHole", treeHole)
              .then((res) => {
                if (!this.$common.isEmpty(res.data)) {
                  this.barrageList.push({
                    id: res.data.id,
                    avatar: res.data.avatar,
                    msg: res.data.message,
                    time: Math.floor(Math.random() * 5 + 10)
                  });
                }
              })
              .catch((error) => {
                this.$message({
                  message: error.message,
                  type: "error"
                });
              });

            this.messageContent = "";
            this.show = false;
          }
        })
        .catch(error => {
          this.$message({
            message: error.message,
            type: 'error'
          });
        });
    }
  }
}
</script>

<style scoped>

.message-in {
  position: absolute;
  left: 50%;
  top: 40%;
  transform: translate(-50%, -50%);
  color: var(--white);
  animation: hideToShow 2.5s;
  width: 360px;
  z-index: 10;
}

.message-title {
  user-select: none;
  text-align: center;
}

.message-input {
  border-radius: 1.2rem;
  border: var(--white) 1px solid;
  color: var(--white);
  background: var(--transparent);
  padding: 10px 10px;
}

.message-input::-webkit-input-placeholder {
  color: var(--white);
}

.barrage-container {
  position: absolute;
  top: 50px;
  left: 0;
  right: 0;
  bottom: 0;
  height: calc(100% - 50px);
  width: 100%;
  user-select: none;
  overflow: hidden;
}

.comment-wrap {
  background: var(--background);
  position: absolute;
  top: 100vh;
  width: 100%;
}

.comment-content {
  max-width: 800px;
  margin: 0 auto;
  padding: 40px 20px;
}
</style>
