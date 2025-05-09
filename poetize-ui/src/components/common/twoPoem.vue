<template>
  <div class="poem-container myCenter my-animation-hideToShow"
       v-if="!$common.isEmpty(guShi.origin) || !$common.isEmpty(hitokoto.hitokoto)">
    <!-- 背景图片 -->
    <el-image class="my-el-image poem-image"
              style="position: absolute;margin-top: -50px"
              v-once
              lazy
              :src="currentBackground"
              fit="cover">
      <div slot="error" class="image-slot background-image-error"></div>
    </el-image>
<!--    <el-image class="my-el-image poem-image"-->
<!--              style="position: absolute;margin-top: -50px"-->
<!--              v-once-->
<!--              lazy-->
<!--              :src="$constant.random_image+new Date()+Math.floor(Math.random()*10)"-->
<!--              fit="cover">-->
<!--      <div slot="error" class="image-slot"></div>-->
<!--    </el-image>-->
    <div class="poem-wrap">
      <div v-if="isShehui"><span>鬼畜全明星</span></div>
      <div v-else><span>{{isHitokoto?hitokoto.from:guShi.origin}}</span></div>
      <p class="poem">{{isHitokoto?hitokoto.hitokoto:guShi.content}}</p>
      <p class="info" v-if="!isShehui && (!isHitokoto || (isHitokoto && !$common.isEmpty(hitokoto.from_who)))">
        {{isHitokoto?hitokoto.from_who:guShi.author}}
      </p>
    </div>
  </div>
</template>
<script>
import axios from 'axios'
  export default {

    props: {
      isHitokoto: {
        type: Boolean,
        default: true
      },
      isShehui: {
        type: Boolean,
        default: false
      }
    },
    data() {
      return {
        backgrounds: "", //背景图片
        // currentBackground: '', //博客接口获取开启
        currentBackgroundIndex: 0 ,// 当前背景图片的索引
        guShi: {
          "content": "...",
          "origin": "...",
          "author": "...",
          "category": "..."
        },
        hitokoto: {
          "hitokoto": "...",
          "from": "...",
          "from_who": "..."
        }
      };
    },
    created() {
      if (!this.isShehui) {
        if (this.isHitokoto) {
          this.getHitokoto();
        } else {
          this.getGuShi();
        }
      } else {
        this.hitokoto.from = "";
        this.hitokoto.from_who = "";
        this.sendShehui();
      }
    },
    computed: {
      //必应接口开启随机刷新
      currentBackground() {
        return this.backgrounds[this.currentBackgroundIndex];
      }
    },
    mounted() {
      //设置定时任务随机更换背景图片
      this.getRandomcovers();
      setInterval(() => {
        this.getRandomcovers();
        this.requestBackgrounds();
      }, 9000); // 每30分钟更换一次背景
    },
    methods: {
      //缓存加载
      getRandomcovers() {
        // 检查浏览器是否支持 localStorage
        // 如果不支持，则直接请求接口获取背景图
        if (!localStorage) {
          this.requestBackgrounds();
          return;
        }

        // 检查是否已经有背景图缓存在本地存储中
        const cachedBackgrounds = localStorage.getItem('backgrounds');

        if (cachedBackgrounds) {
          this.backgrounds = JSON.parse(cachedBackgrounds);
          this.currentBackgroundIndex = Math.floor(Math.random() * this.backgrounds.length);
        } else {
          this.requestBackgrounds();
        }
      },

      requestBackgrounds() {
        axios.get('https://qiniu.maoye.vip/ArticleFengMian/json/ArticleFengMian.json')
          .then(res => {
            if (!this.$common.isEmpty(res.data)) {
              this.backgrounds = res.data.data.map(item => 'https://qiniu.maoye.vip/' + item.url);
              this.currentBackgroundIndex = Math.floor(Math.random() * this.backgrounds.length);

              // 将背景图缓存到本地存储中
              localStorage.setItem('backgrounds', JSON.stringify(this.backgrounds));
            }
          })
          .catch(error => {
            this.$message({
              message: error.message,
              type: 'error'
            })
          })
      },
      //随机背景图
      // getRandomcovers() {
      //   axios.get('https://qiniu.maoye.vip/ArticleFengMian/json/ArticleFengMian.json')
      //       //axios.get('https://raw.onmicrosoft.cn/Bing-Wallpaper-Action/main/data/zh-CN_all.json')
      //       .then(res => {
      //         if (!this.$common.isEmpty(res.data)) {
      //
      //           this.backgrounds = res.data.data.map(item => 'https://qiniu.maoye.vip/' + item.url);
      //           //console.log(this.backgrounds);
      //           //this.currentBackground = this.backgrounds[Math.floor(Math.random() * this.backgrounds.length)];
      //           this.currentBackgroundIndex = Math.floor(Math.random() * this.backgrounds.length);
      //         }
      //       })
      //       .catch(error => {
      //         this.$message({
      //           message: error.message,
      //           type: 'error'
      //         })
      //       })
      // },
      sendShehui() {
        let that = this;
        let xhr = new XMLHttpRequest();
        xhr.open('get', this.$constant.shehui);
        xhr.onreadystatechange = function () {
          if (xhr.readyState === 4) {
            let shehui = xhr.responseText;
            that.hitokoto.hitokoto = shehui.substring(1, shehui.length - 1);
          }
        };
        xhr.send();
      },
      getGuShi() {
        let that = this;
        let xhr = new XMLHttpRequest();
        xhr.open('get', this.$constant.jinrishici);
        xhr.onreadystatechange = function () {
          if (xhr.readyState === 4) {
            that.guShi = JSON.parse(xhr.responseText);
          }
        };
        xhr.send();
      },
      getHitokoto() {
        let that = this;
        let xhr = new XMLHttpRequest();
        xhr.open('get', this.$constant.hitokoto);
        xhr.onreadystatechange = function () {
          if (xhr.readyState === 4) {
            that.hitokoto = JSON.parse(xhr.responseText);
          }
        }
        xhr.send();
      }
    }
  };
</script>
<style scoped>

  .poem-container {
    padding: 90px 0 40px;
    position: relative;
  }

  .poem-wrap {
    border-radius: 10px;
    z-index: 10;
    text-align: center;
    letter-spacing: 4px;
    font-weight: 300;
    width: 100%;
    max-width: 800px;
  }

  .poem-wrap div span {
    padding: 5px 10px;
    color: var(--white);
    font-size: 2em;
    border-radius: 5px;
  }

  .poem-wrap p {
    width: 100%;
    max-width: 800px;
    color: var(--white);
  }

  .poem-wrap p.poem {
    margin: 40px auto;
    font-size: 1.5em;
  }

  .poem-wrap p.info {
    margin: 20px auto 40px;
    font-size: 1.1em;
  }
</style>
