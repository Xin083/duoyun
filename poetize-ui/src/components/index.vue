<template>
  <div>
    <loader :loading="loading">
      <!-- 加载页面 -->
      <template slot="loader">
        <div>
          <zombie></zombie>
        </div>
      </template>
      <!-- 内容页面 -->
      <template slot="body">
        <!-- 首页图片 -->
        <el-image style="animation: header-effect 2s"
                  class="background-image"

                  lazy
                  :src="currentBackground"
                  fit="cover">
          <div slot="error" class="image-slot background-image-error"></div>
        </el-image>
<!--        <el-image style="animation: header-effect 2s"-->
<!--                  class="background-image"-->
<!--                  v-once-->
<!--                  lazy-->
<!--                  :src="!$common.isEmpty($store.state.webInfo.backgroundImage)?$store.state.webInfo.backgroundImage:$constant.random_image+new Date()+Math.floor(Math.random()*10)"-->
<!--                  fit="cover">-->
<!--          <div slot="error" class="image-slot background-image-error"></div>-->
<!--        </el-image>-->
        <!-- 首页文字 -->
        <div class="signature-wall myCenter my-animation-hideToShow">
          <h1 class="playful">
            <span v-for="(a, index) in $store.state.webInfo.webTitle" :key="index">{{a}}</span>
          </h1>
          <!--打字机-->
          <div class="printer">
            <Typewriter></Typewriter>
          </div>
          <!--          <div style="display: none" class="printer" @click="getGuShi()">-->
          <!--            <printer :printerInfo="printerInfo">-->
          <!--              <template slot="paper" slot-scope="scope">-->
          <!--                <h3>-->
          <!--                  {{ scope.content }}<span class="cursor">|</span>-->
          <!--                </h3>-->
          <!--              </template>-->
          <!--            </printer>-->
          <!--          </div>-->
          <div id="bannerWave1"></div>
          <div id="bannerWave2"></div>
          <i class="el-icon-arrow-down" @click="navigation('.page-container-wrap')"></i>
        </div>
        <!-- 首页内容 -->
        <div class="page-container-wrap">
          <div class="page-container">
            <div class="aside-content" v-if="showAside">
              <myAside @selectSort="selectSort" @selectArticle="selectArticle"></myAside>
            </div>
            <div class="recent-posts">
              <div class="announcement background-opacity">
                <i class="fa fa-volume-up" aria-hidden="true"></i>
                <div>
                  <div v-for="(notice, index) in $store.state.webInfo.notices" :key="index">
                    {{ notice }}
                  </div>
                </div>
              </div>

              <div v-show="indexType === 1">
                <div v-for="(sort, index) in sortInfo" :key="index">
                  <div v-if="!$common.isEmpty(sortArticles[sort.id])">
                    <div class="sort-article-first">
                      <div>
                        <svg viewBox="0 0 1024 1024" width="20" height="20"
                             style="vertical-align: -2px;margin-bottom: -2px">
                          <path
                            d="M367.36 482.304H195.9936c-63.3344 0-114.6368-51.3536-114.6368-114.6368V196.2496c0-63.3344 51.3536-114.6368 114.6368-114.6368h171.4176c63.3344 0 114.6368 51.3536 114.6368 114.6368V367.616c0 63.3344-51.3536 114.688-114.688 114.688zM367.36 938.752H195.9936c-63.3344 0-114.6368-51.3536-114.6368-114.6368v-171.4176c0-63.3344 51.3536-114.6368 114.6368-114.6368h171.4176c63.3344 0 114.6368 51.3536 114.6368 114.6368v171.4176c0 63.3344-51.3536 114.6368-114.688 114.6368zM828.672 938.752h-171.4176c-63.3344 0-114.6368-51.3536-114.6368-114.6368v-171.4176c0-63.3344 51.3536-114.6368 114.6368-114.6368h171.4176c63.3344 0 114.6368 51.3536 114.6368 114.6368v171.4176c0 63.3344-51.3024 114.6368-114.6368 114.6368zM828.672 482.304h-171.4176c-63.3344 0-114.6368-51.3536-114.6368-114.6368V196.2496c0-63.3344 51.3536-114.6368 114.6368-114.6368h171.4176c63.3344 0 114.6368 51.3536 114.6368 114.6368V367.616c0 63.3344-51.3024 114.688-114.6368 114.688z"
                            fill="#FF623E"></path>
                        </svg>
                        {{sort.sortName}}
                      </div>
                      <div class="article-more" @click="$router.push({path: '/sort', query: {sortId: sort.id}})">
                        <svg viewBox="0 0 1024 1024" width="20" height="20"
                             style="vertical-align: -2px;margin-bottom: -2px">
                          <path
                            d="M347.3 897.3H142.2c-30.8 0-51.4-31.7-38.9-59.9l136.1-306.1c4.9-11 4.9-23.6 0-34.6L103.3 190.6c-12.5-28.2 8.1-59.9 38.9-59.9h205.1c16.8 0 32.1 9.9 38.9 25.3l151.4 340.7c4.9 11 4.9 23.6 0 34.6L386.3 872.1c-6.9 15.3-22.1 25.2-39 25.2z"
                            fill="#009F72"></path>
                          <path
                            d="M730.4 897.3H525.3c-30.8 0-51.4-31.7-38.9-59.9l136.1-306.1c4.9-11 4.9-23.6 0-34.6L486.4 190.6c-12.5-28.2 8.1-59.9 38.9-59.9h205.1c16.8 0 32.1 9.9 38.9 25.3l151.4 340.7c4.9 11 4.9 23.6 0 34.6L769.3 872.1c-6.8 15.3-22.1 25.2-38.9 25.2z"
                            fill="#F9DB88"></path>
                        </svg>
                        MORE
                      </div>
                    </div>
                    <sortArticle :articleList="sortArticles[sort.id]"></sortArticle>
                  </div>
                </div>
              </div>

              <div v-show="indexType === 2">
                <articleList :articleList="articles"></articleList>
                <div class="pagination-wrap">
                  <div @click="pageArticles()" class="pagination" v-if="pagination.total !== articles.length">
                    下一页
                  </div>
                  <div v-else style="user-select: none">
                    ~~到底啦~~
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
<!--FPS-->
        <Fps></Fps>
        <!--音乐播放器-->
<!--        <music></music>-->
        <!-- 挂绳小猫咪-->
<!--        <Cat></Cat>-->
        <!-- 页脚 -->
        <div style="background: var(--background)">
          <myFooter></myFooter>
        </div>
      </template>
    </loader>
  </div>
</template>
<script>
  const loader = () => import( "./common/loader");
  const zombie = () => import( "./common/zombie");
  //const printer = () => import( "./common/printer");
  const articleList = () => import( "./articleList");
  const sortArticle = () => import( "./common/sortArticle");
  const myFooter = () => import( "./common/myFooter");
  const myAside = () => import( "./myAside");
  //const music = () => import("./music/music");//音乐播放器
 // const Cat = () => import("./cat/Cat"); //猫咪挂绳
  const Typewriter = () => import( "./common/Typewriter"); //彩色打字机
  const Fps = () => import("./common/Fps");  //FPS

  export default {
    components: {
      loader,
      zombie,
      //printer,
      articleList,
      sortArticle,
      myFooter,
      myAside,
      Fps,
      //music,
      //Cat,
      Typewriter
    },

    data() {
      return {
        backgrounds: "", //背景图片数组
        currentBackground: '', //图片路径
        loading: false,
        showAside: true,
        indexType: 1,
        printerInfo: "你看对面的青山多漂亮",
        pagination: {
          current: 1,
          size: 10,
          total: 0,
          searchKey: "",
          sortId: null,
          articleSearch: ""
        },
        guShi: {
          "content": "",
          "origin": "",
          "author": "",
          "category": ""
        },
        articles: [],
        sortArticles: {}
      };
    },

    watch: {},

    created() {
      this.getGuShi();
      this.getSortArticles();
    },

    computed: {
      sortInfo() {
        return this.$store.state.sortInfo;
      }
    },

    mounted() {

      //定时器开始图片随机刷新
      //this.getRandomcovers();
      this.getRandomCovers();
      this.retrieveCovers();
      setInterval(() => {
        //this.getRandomcovers();
        this.getRandomCovers();
        this.setCurrentBackground();
      }, 9000); // 每分钟更换一次背景
    },

    methods: {
      //缓存加载
      getRandomCovers() {
        // 先尝试从缓存中获取背景图片
        const cachedCovers = localStorage.getItem('backgrounds');
        if (cachedCovers) {
          this.backgrounds = JSON.parse(cachedCovers);
          // 读取保存在缓存中的当前背景图片
          const cachedCurrentBackground = localStorage.getItem('currentBackground');
          //
          if (cachedCurrentBackground) {
            this.currentBackground = cachedCurrentBackground;
          } else {
            this.setCurrentBackground();
          }
        } else {
          this.retrieveCovers();
        }
      },

      retrieveCovers() {
        this.$http.get(this.$constant.baseURL + "/webInfo/getWebInfo")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              const randomCover = JSON.parse(res.data.randomCover);
              this.backgrounds = randomCover;
              // 将背景图片保存在缓存中
              localStorage.setItem('backgrounds', JSON.stringify(randomCover));
              //console.log("缓存里面的图片为"+localStorage.setItem('backgrounds', JSON.stringify(randomCover)));
              this.setCurrentBackground();
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },

      setCurrentBackground() {
        const randomIndex = Math.floor(Math.random() * this.backgrounds.length);
        this.currentBackground = this.backgrounds[randomIndex];
        // 将当前背景图片保存在缓存中
        localStorage.setItem('currentBackground', this.currentBackground);
      },
      //随机背景图
      // getRandomcovers() {
      //   this.$http.get(this.$constant.baseURL + "/webInfo/getWebInfo")
      //       .then((res) => {
      //         if (!this.$common.isEmpty(res.data)) {
      //           //console.log(res.data);
      //           let randomCover = JSON.parse(res.data.randomCover);
      //           this.backgrounds = randomCover;
      //           //console.log(this.backgrounds);
      //           const randomIndex = Math.floor(Math.random() * this.backgrounds.length);
      //           this.currentBackground = this.backgrounds[randomIndex];
      //
      //           //console.log("图片路径:"+this.currentBackground);
      //
      //         }
      //       })
      //       .catch((error) => {
      //         this.$message({
      //           message: error.message,
      //           type: "error"
      //         });
      //       });
      // },
      async selectSort(sort) {
        this.pagination = {
          current: 1,
          size: 10,
          total: 0,
          searchKey: "",
          sortId: sort.id,
          articleSearch: ""
        };
        this.articles = [];
        await this.getArticles();
        this.$nextTick(() => {
          this.indexType = 2;
          $(".announcement").css("max-width", "780px");
          document.querySelector('.recent-posts').scrollIntoView({
            behavior: "smooth",
            block: "start",
            inline: "nearest"
          });
        });
      },
      async selectArticle(articleSearch) {
        this.pagination = {
          current: 1,
          size: 10,
          total: 0,
          searchKey: "",
          sortId: null,
          articleSearch: articleSearch
        };
        this.articles = [];
        await this.getArticles();
        this.$nextTick(() => {
          this.indexType = 2;
          $(".announcement").css("max-width", "780px");
          document.querySelector('.recent-posts').scrollIntoView({
            behavior: "smooth",
            block: "start",
            inline: "nearest"
          });
        });
      },
      pageArticles() {
        this.pagination.current = this.pagination.current + 1;
        this.getArticles();
      },

      async getArticles() {
        await this.$http.post(this.$constant.baseURL + "/article/listArticle", this.pagination)
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.articles = this.articles.concat(res.data.records);
              this.pagination.total = res.data.total;
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      getSortArticles() {
        this.$http.get(this.$constant.baseURL + "/article/listSortArticle")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.sortArticles = res.data;
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      navigation(selector) {
        let pageId = document.querySelector(selector);
        window.scrollTo({
          top: pageId.offsetTop,
          behavior: "smooth"
        });
      },
      getGuShi() {
        let that = this;
        let xhr = new XMLHttpRequest();
        xhr.open('get', this.$constant.jinrishici);
        xhr.onreadystatechange = function () {
          if (xhr.readyState === 4) {
            that.guShi = JSON.parse(xhr.responseText);
            that.printerInfo = that.guShi.content;
          }
        };
        xhr.send();
      }
    }
  }
</script>

<style scoped>

  .signature-wall {
    /* 向下排列 */
    display: flex;
    flex-direction: column;
    position: relative;
    user-select: none;
    height: 100vh;
    overflow: hidden;
  }

  .playful {
    color: var(--white);
    font-size: 40px;
  }

  .sort-article-first {
    margin: 40px auto 20px;
    display: flex;
    justify-content: space-between;
    color: var(--greyFont);
    border-bottom: 1px dashed var(--lightGray);
    padding-bottom: 5px;
  }

  .article-more {
    cursor: pointer;
    transition: all 0.3s;
  }

  .article-more:hover {
    color: var(--lightGreen);
    font-weight: 700;
    transform: scale(1.1);
  }

  /*.playful span {*/
  /*  position: relative;*/
  /*  color: #5362f6;*/
  /*  text-shadow: 0.25px 0.25px #e485f8, 0.5px 0.5px #e485f8, 0.75px 0.75px #e485f8,*/
  /*  1px 1px #e485f8, 1.25px 1.25px #e485f8, 1.5px 1.5px #e485f8, 1.75px 1.75px #e485f8,*/
  /*  2px 2px #e485f8, 2.25px 2.25px #e485f8, 2.5px 2.5px #e485f8, 2.75px 2.75px #e485f8,*/
  /*  3px 3px #e485f8, 3.25px 3.25px #e485f8, 3.5px 3.5px #e485f8, 3.75px 3.75px #e485f8,*/
  /*  4px 4px #e485f8, 4.25px 4.25px #e485f8, 4.5px 4.5px #e485f8, 4.75px 4.75px #e485f8,*/
  /*  5px 5px #e485f8, 5.25px 5.25px #e485f8, 5.5px 5.5px #e485f8, 5.75px 5.75px #e485f8,*/
  /*  6px 6px #e485f8;*/
  /*  animation: scatter 1.75s infinite;*/
  /*  font-weight: normal;*/
  /*}*/

  /*.playful span:nth-child(2n) {*/
  /*  color: #ed625c;*/
  /*  text-shadow: 0.25px 0.25px #f2a063, 0.5px 0.5px #f2a063, 0.75px 0.75px #f2a063,*/
  /*  1px 1px #f2a063, 1.25px 1.25px #f2a063, 1.5px 1.5px #f2a063, 1.75px 1.75px #f2a063,*/
  /*  2px 2px #f2a063, 2.25px 2.25px #f2a063, 2.5px 2.5px #f2a063, 2.75px 2.75px #f2a063,*/
  /*  3px 3px #f2a063, 3.25px 3.25px #f2a063, 3.5px 3.5px #f2a063, 3.75px 3.75px #f2a063,*/
  /*  4px 4px #f2a063, 4.25px 4.25px #f2a063, 4.5px 4.5px #f2a063, 4.75px 4.75px #f2a063,*/
  /*  5px 5px #f2a063, 5.25px 5.25px #f2a063, 5.5px 5.5px #f2a063, 5.75px 5.75px #f2a063,*/
  /*  6px 6px #f2a063;*/
  /*  animation-delay: 0.3s;*/
  /*}*/

  /*.playful span:nth-child(3n) {*/
  /*  color: #ffd913;*/
  /*  text-shadow: 0.25px 0.25px #6ec0a9, 0.5px 0.5px #6ec0a9, 0.75px 0.75px #6ec0a9,*/
  /*  1px 1px #6ec0a9, 1.25px 1.25px #6ec0a9, 1.5px 1.5px #6ec0a9, 1.75px 1.75px #6ec0a9,*/
  /*  2px 2px #6ec0a9, 2.25px 2.25px #6ec0a9, 2.5px 2.5px #6ec0a9, 2.75px 2.75px #6ec0a9,*/
  /*  3px 3px #6ec0a9, 3.25px 3.25px #6ec0a9, 3.5px 3.5px #6ec0a9, 3.75px 3.75px #6ec0a9,*/
  /*  4px 4px #6ec0a9, 4.25px 4.25px #6ec0a9, 4.5px 4.5px #6ec0a9, 4.75px 4.75px #6ec0a9,*/
  /*  5px 5px #6ec0a9, 5.25px 5.25px #6ec0a9, 5.5px 5.5px #6ec0a9, 5.75px 5.75px #6ec0a9,*/
  /*  6px 6px #6ec0a9;*/
  /*  animation-delay: 0.15s;*/
  /*}*/

  /*.playful span:nth-child(5n) {*/
  /*  color: #555bff;*/
  /*  text-shadow: 0.25px 0.25px #e485f8, 0.5px 0.5px #e485f8, 0.75px 0.75px #e485f8,*/
  /*  1px 1px #e485f8, 1.25px 1.25px #e485f8, 1.5px 1.5px #e485f8, 1.75px 1.75px #e485f8,*/
  /*  2px 2px #e485f8, 2.25px 2.25px #e485f8, 2.5px 2.5px #e485f8, 2.75px 2.75px #e485f8,*/
  /*  3px 3px #e485f8, 3.25px 3.25px #e485f8, 3.5px 3.5px #e485f8, 3.75px 3.75px #e485f8,*/
  /*  4px 4px #e485f8, 4.25px 4.25px #e485f8, 4.5px 4.5px #e485f8, 4.75px 4.75px #e485f8,*/
  /*  5px 5px #e485f8, 5.25px 5.25px #e485f8, 5.5px 5.5px #e485f8, 5.75px 5.75px #e485f8,*/
  /*  6px 6px #e485f8;*/
  /*  animation-delay: 0.4s;*/
  /*}*/

  /*.playful span:nth-child(7n) {*/
  /*  color: #ff9c55;*/
  /*  text-shadow: 0.25px 0.25px #ff5555, 0.5px 0.5px #ff5555, 0.75px 0.75px #ff5555,*/
  /*  1px 1px #ff5555, 1.25px 1.25px #ff5555, 1.5px 1.5px #ff5555, 1.75px 1.75px #ff5555,*/
  /*  2px 2px #ff5555, 2.25px 2.25px #ff5555, 2.5px 2.5px #ff5555, 2.75px 2.75px #ff5555,*/
  /*  3px 3px #ff5555, 3.25px 3.25px #ff5555, 3.5px 3.5px #ff5555, 3.75px 3.75px #ff5555,*/
  /*  4px 4px #ff5555, 4.25px 4.25px #ff5555, 4.5px 4.5px #ff5555, 4.75px 4.75px #ff5555,*/
  /*  5px 5px #ff5555, 5.25px 5.25px #ff5555, 5.5px 5.5px #ff5555, 5.75px 5.75px #ff5555,*/
  /*  6px 6px #ff5555;*/
  /*  animation-delay: 0.25s;*/
  /*}*/

  .printer {
    cursor: pointer;
    color: var(--white);
    background: var(--translucent);
    border-radius: 10px;
    padding-left: 10px;
    padding-right: 10px;
    font-size: large;
  }

  #bannerWave1 {
    height: 84px;
    background: var(--bannerWave1);
    position: absolute;
    width: 200%;
    bottom: 0;
    z-index: 10;
    animation: gradientBG 120s linear infinite;
  }

  #bannerWave2 {
    height: 100px;
    background: var(--bannerWave2);
    position: absolute;
    width: 400%;
    bottom: 0;
    z-index: 5;
    animation: gradientBG 120s linear infinite;
  }

  /* 光标 */
  .cursor {
    margin-left: 1px;
    animation: hideToShow 0.7s infinite;
    font-weight: 200;
  }

  .el-icon-arrow-down {
    font-size: 40px;
    font-weight: bold;
    color: var(--white);
    position: absolute;
    bottom: 60px;
    animation: my-shake 1.5s ease-out infinite;
    z-index: 15;
    cursor: pointer;
  }

  .page-container-wrap {
    background: var(--background);
    position: relative;
  }

  .page-container {
    display: flex;
    justify-content: center;
    width: 90%;
    padding: 0 20px 40px 20px;
    margin: 0 auto;
    flex-direction: row;
  }

  .recent-posts {
    width: 70%;
  }

  .announcement {
    padding: 22px;
    border: 1px dashed var(--lightGray);
    color: var(--greyFont);
    border-radius: 10px;
    display: flex;
    margin: 40px auto 40px;
  }

  .announcement i {
    color: var(--themeBackground);
    font-size: 22px;
    margin: auto 0;
    animation: scale 0.8s ease-in-out infinite;
  }

  .announcement div div {
    margin-left: 20px;
    line-height: 30px;
  }

  .aside-content {
    width: calc(30% - 40px);
    user-select: none;
    margin-top: 40px;
    margin-right: 40px;
    max-width: 300px;
    float: right;
  }

  .pagination-wrap {
    display: flex;
    justify-content: center;
    margin-top: 40px;
  }

  .pagination {
    padding: 13px 15px;
    border: 1px solid var(--lightGray);
    border-radius: 3rem;
    color: var(--greyFont);
    width: 100px;
    user-select: none;
    cursor: pointer;
    text-align: center;
  }

  .pagination:hover {
    border: 1px solid var(--themeBackground);
    color: var(--themeBackground);
    box-shadow: 0 0 5px var(--themeBackground);
  }

  @media screen and (max-width: 1100px) {
    .recent-posts {
      width: 100%;
    }

    .page-container {
      width: 100%;
    }
  }

  @media screen and (max-width: 1000px) {

    .page-container {
      /* 文章栏与侧标栏垂直排列 */
      flex-direction: column;
    }

    .aside-content {
      width: 100%;
      max-width: unset;
      float: unset;
      margin: 40px auto 0;
    }
  }

  @media screen and (max-width: 768px) {

    h1 {
      font-size: 35px;
    }
  }
</style>
