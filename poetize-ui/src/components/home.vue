<template>
  <div>
    <!-- el过渡动画 -->
    <transition name="el-fade-in-linear">
      <!-- 导航栏 -->
      <div v-show="toolbar.visible"
           @mouseenter="hoverEnter = true"
           @mouseleave="hoverEnter = false"
           :class="[{ enter: toolbar.enter }, { hoverEnter: (hoverEnter || this.$route.path === '/favorite' || this.$route.path === '/travel') && !toolbar.enter }]"
           class="toolbar-content myBetween">
        <!-- 网站名称 -->
        <div class="toolbar-title">
          <h2 @click="$router.push({path: '/'})">{{$store.state.webInfo.webName}}</h2>
        </div>

        <!-- 手机导航按钮 -->
        <div v-if="$common.mobile() || mobile"
             class="toolbar-mobile-menu"
             @click="toolbarDrawer = !toolbarDrawer"
             :class="{ enter: toolbar.enter }">
          <i class="el-icon-s-operation"></i>
        </div>

        <!-- 导航列表 -->
        <div v-else>
          <ul class="scroll-menu">
            <li @click="$router.push({path: '/'})">
              <div class="my-menu">
                🏡 <span>首页</span>
              </div>
            </li>

            <el-dropdown :hide-timeout="500" placement="bottom">
              <li>
                <div class="my-menu">
                  📒 <span>分类</span>
                </div>
              </li>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item v-for="(sort, index) in sortInfo" :key="index">
                  <div @click="$router.push({path: '/sort', query: {sortId: sort.id}})">
                    {{sort.sortName}}
                  </div>
                </el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>

            <!-- 爱情买卖 -->
            <li @click="$router.push({path: '/love'})">
              <div class="my-menu">
                💋 <span>爱情</span>
              </div>
            </li>

            <!-- 旅拍 -->
            <li @click="$router.push({path: '/travel'})">
              <div class="my-menu">
                🌏 <span>旅拍</span>
              </div>
            </li>

            <!-- 百宝箱 -->
            <li @click="$router.push({path: '/favorite'})">
              <div class="my-menu">
                🧰 <span>百宝箱</span>
              </div>
            </li>

            <!-- 聊天室 -->
            <li @click="goIm()">
              <div class="my-menu">
                💬 <span>非礼勿言</span>
              </div>
            </li>
            <!-- 留言 -->
            <li @click="$router.push({path: '/message'})">
              <div class="my-menu">
                📪 <span>留言</span>
              </div>
            </li>
            <!-- 友人帐 -->
            <li @click="$router.push({path: '/friend'})">
              <div class="my-menu">
                💃 <span>友人帐</span>
              </div>
            </li>
            <!-- 小游戏 -->
            <li>
              <div class="my-menu">
                🎮 <span>小游戏</span>
                <el-dropdown placement="bottom">
                  <i class="el-icon-arrow-down el-icon--right" style="margin-left: 5px;"></i>
                  <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item @click.native="$router.push({path: '/game'})">
                      <i aria-hidden="true"></i> <span>🎮 随机电脑游戏</span>
                    </el-dropdown-item>
                    <el-dropdown-item @click.native="$router.push({path: '/game'})">
                      <i aria-hidden="true"></i> <span>🎮 随机手机游戏</span>
                    </el-dropdown-item>
                  </el-dropdown-menu>
                </el-dropdown>
              </div>
            </li>

            <!-- 关于 -->
            <li @click="$router.push({path: '/about'})">
              <div class="my-menu">
                🐟 <span>关于</span>
              </div>
            </li>

            <!--白天黑夜模式切换 -->
            <li>
              <div class="my-menu">
                <DarkModeSwitch></DarkModeSwitch>
              </div>
            </li>
            <!-- 个人中心 -->
            <li>
              <el-dropdown placement="bottom">
                <el-avatar class="user-avatar" :size="36"
                           style="margin-top: 12px"
                           :src="!$common.isEmpty($store.state.currentUser)?$store.state.currentUser.avatar:$store.state.webInfo.avatar">
                </el-avatar>

                <el-dropdown-menu slot="dropdown">
                  <el-dropdown-item @click.native="$router.push({path: '/user'})"
                                    v-if="!$common.isEmpty($store.state.currentUser)">
                    <i class="fa fa-user-circle" aria-hidden="true"></i> <span>个人中心</span>
                  </el-dropdown-item>
                  <el-dropdown-item @click.native="changePassword()"
                                    v-if="!$common.isEmpty($store.state.currentUser)">
                    <i class="fa fa-user-md" aria-hidden="true"></i> <span>修改密码</span>
                  </el-dropdown-item>
                  <el-dropdown-item @click.native="logout()" v-if="!$common.isEmpty($store.state.currentUser)">
                    <i class="fa fa-sign-out" aria-hidden="true"></i> <span>退出</span>
                  </el-dropdown-item>
                  <el-dropdown-item @click.native="$router.push({path: '/login'})"
                                    v-if="$common.isEmpty($store.state.currentUser)">
                    <i class="fa fa-sign-in" aria-hidden="true"></i> <span>登陆</span>
                  </el-dropdown-item>
                </el-dropdown-menu>
              </el-dropdown>
            </li>

          </ul>
        </div>
      </div>
    </transition>
    <!-- 修改密码框 -->
    <el-dialog
      title="修改密码"
      :visible.sync="disChangePwd"
      :modal-append-to-body="false"
      width="30%">
      <el-form ref="dataForm" :rules="rules" :model="dataForm" status-icon label-position="left" label-width="100px" style="width: auto; margin-left:50px;">
        <el-form-item label="原密码" prop="oldPassword">
          <el-input v-model="dataForm.oldPassword" type="password"/>
        </el-form-item>
        <el-form-item label="新密码" prop="newPassword">
          <el-input v-model="dataForm.newPassword" type="password" auto-complete="off"/>
        </el-form-item>
        <el-form-item label="确认密码" prop="newPassword2">
          <el-input v-model="dataForm.newPassword2" type="password" auto-complete="off"/>
        </el-form-item>
      </el-form>
      <div style="text-align: center;">
        <el-button @click="disChangePwd = false">取消</el-button>
        <el-button type="primary" @click="reqChangePassword()">确定</el-button>
      </div>
    </el-dialog>
    <div id="main-container">
      <router-view></router-view>
    </div>

    <!-- 回到顶部按钮 -->
<!--    <div href="#" class="cd-top" v-if="!$common.mobile()" @click="toTop()"></div>-->

    <div class="toolButton" style="display: none">
      <div class="backTop" v-if="toolButton" @click="toTop()">
        <!-- 回到顶部按钮 -->
        <svg viewBox="0 0 1024 1024" width="50" height="50">
          <path
            d="M696.741825 447.714002c2.717387-214.485615-173.757803-312.227566-187.33574-320.371729-10.857551 5.430775-190.050127 103.168727-187.33274 320.371729-35.297037 24.435488-73.306463 65.1623-67.875688 135.752376 5.430775 70.589076 76.018851 119.460051 103.168726 116.745664 27.152875-2.716387 19.004713-21.7221 19.004713-21.7221l8.148162-38.011425s40.721814 59.732525 51.583363 59.732525h146.609927c13.574938 0 51.585363-59.732525 51.585363-59.732525l8.147162 38.011425s-8.147162 19.005713 19.004713 21.7221c27.148876 2.714388 97.738951-46.156588 103.168727-116.745664s-32.57965-111.316888-67.876688-135.752376z m-187.33574-2.713388c-5.426776 0-70.589076-2.717387-78.733239-78.737238 2.713388-73.306463 73.306463-78.733239 78.733239-81.450626 5.430775 0 76.02385 8.144163 78.736238 81.450626-8.143163 76.019851-73.305463 78.737238-78.736238 78.737238z m0 0"
            fill="#000000"></path>
          <path
            d="M423.602441 746.060699c6.47054-6.297579 12.823107-7.017417 21.629121-2.784372 34.520213 16.582259 70.232157 19.645568 107.031855 9.116944 8.118169-2.323476 15.974396-5.475765 23.598677-9.22392 13.712907-6.73648 26.003134 0.8878 26.080116 16.13936 0.109975 22.574907-0.024994 45.142816 0.080982 67.709725 0.031993 7.464316-2.277486 13.322995-9.44387 16.608254-7.277358 3.333248-13.765895 1.961558-19.526595-3.264264-3.653176-3.313253-7.063407-6.897444-10.634601-10.304675-6.563519-6.259588-6.676494-6.25259-10.625603 1.603638-8.437097 16.80121-16.821205 33.623415-25.257302 50.423625-2.489438 4.953882-5.706713 9.196925-11.411426 10.775569-8.355115 2.315478-15.772442-1.070758-20.272427-9.867774-8.774021-17.15313-17.269104-34.453228-25.918153-51.669344-3.750154-7.469315-3.9891-7.479313-10.141712-1.514658-3.715162 3.602187-7.31435 7.326347-11.142486 10.800563-5.571743 5.060858-11.934308 6.269586-18.936728 3.207277-6.82746-2.984327-9.869774-8.483086-9.892769-15.685462-0.070984-23.506697-0.041991-47.018393-0.020995-70.532089 0.007998-4.679944 1.46467-8.785018 4.803916-11.538397z"
            fill="#000000"></path>
        </svg>
      </div>

      <el-popover style="display: none" placement="left"
                  :close-delay="500"
                  trigger="hover">
        <div slot="reference">
          <i class="fa fa-cog iconRotate" style="color: var(--black)" aria-hidden="true"></i>
        </div>
        <div class="my-setting">
          <div>
            <!-- 太阳按钮 -->
            <i v-if="isDark" class="el-icon-sunny iconRotate" @click="changeColor()"></i>
            <!-- 月亮按钮 -->
            <i v-else class="fa fa-moon-o" aria-hidden="true" @click="changeColor()"></i>
          </div>
          <div>
            <i class="fa fa-snowflake-o" aria-hidden="true" @click="changeMouseAnimation()"></i>
          </div>
        </div>
      </el-popover>
    </div>

    <!-- 点击动画 -->
    <canvas v-if="mouseAnimation" id="mousedown"
            style="position:fixed;left:0;top:0;pointer-events:none;z-index: 1000">
    </canvas>

    <!-- 图片预览 -->
    <div id="outerImg">
      <div id="innerImg" style="position:absolute">
        <img id="bigImg" src=""/>
      </div>
    </div>

    <el-drawer :visible.sync="toolbarDrawer"
               :show-close="false"
               size="65%"
               custom-class="toolbarDrawer"
               title="欢迎光临"
               direction="ltr">
      <div>
        <ul class="small-menu">
          <li @click="smallMenu({path: '/'})">
            <div>
              🏡 <span>首页</span>
            </div>
          </li>

          <li>
            <div>
              📒 <span>分类</span>
            </div>
            <div>
              <div v-for="(menu, index) in sortInfo"
                   :key="index"
                   class="sortMenu"
                   @click="smallMenu({path: '/sort', query: {sortId: menu.id}})">
                {{menu.sortName}}
              </div>
            </div>
          </li>

          <!-- 爱情买卖 -->
          <li @click="smallMenu({path: '/love'})">
            <div>
              💋 <span>爱情</span>
            </div>
          </li>

          <!-- 旅拍 -->
          <li @click="smallMenu({path: '/travel'})">
            <div>
              🌏 <span>旅拍</span>
            </div>
          </li>

          <!-- 百宝箱 -->
          <li @click="smallMenu({path: '/favorite'})">
            <div>
              🧰 <span>百宝箱</span>
            </div>
          </li>

          <!-- 聊天室 -->
          <li @click="goIm()">
            <div>
              💬 <span>非礼勿言</span>
            </div>
          </li>
          <!-- 留言 -->
          <li @click="smallMenu({path: '/message'})">
            <div>
              📪 <span>留言</span>
            </div>
          </li>
          <!-- 友人帐 -->
          <li @click="smallMenu({path: '/friend'})">
            <div>
              💃 <span>友人帐</span>
            </div>
          </li>

           <!-- 小游戏 -->
           <li>
            <div class="my-menu">
              🎮 <span>小游戏</span>
              <el-dropdown placement="bottom">
                <i class="el-icon-arrow-down el-icon--right" style="margin-left: 5px;"></i>
                <el-dropdown-menu slot="dropdown">
                  <el-dropdown-item @click.native="openPcGame">
                    <i aria-hidden="true"></i> <span>🎮随机电脑游戏</span>
                  </el-dropdown-item>
                  <el-dropdown-item @click.native="$router.push({path: '/game'})">
                    <i aria-hidden="true"></i> <span>🎮随机手机游戏</span>
                  </el-dropdown-item>
                </el-dropdown-menu>
              </el-dropdown>
            </div>
          </li>
          <!-- 关于 -->
          <li @click="smallMenu({path: '/about'})">
            <div>
              🐟 <span>关于</span>
            </div>
          </li>
        <!-- 白天和夜间模式切换-->
          <li>
           <DarkModeSwitch></DarkModeSwitch>
          </li>
          <template v-if="$common.isEmpty($store.state.currentUser)">
            <li @click="smallMenu({path: '/login'})">
              <div>
                <i class="fa fa-sign-in" aria-hidden="true"></i>
                <span>&nbsp;登录</span>
              </div>
            </li>
          </template>
          <template v-else>
            <li @click="smallMenu({path: '/user'})">
              <div>
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <span>&nbsp;个人中心</span>
              </div>
            </li>
            <li @click="smallMenuLogout()">
              <div>
                <i class="fa fa-sign-out" aria-hidden="true"></i>
                <span>&nbsp;退出</span>
              </div>
            </li>
          </template>
        </ul>
      </div>
    </el-drawer>
  </div>
</template>

<script>
  import mousedown from '../utils/mousedown';
  import constant from "../utils/constant";
  //const music = () => import("./components/music");
  // const rySwitch = () => import("./common/rySwitch");
  const DarkModeSwitch = () => import("./common/DarkModeSwitch");

  export default {
    components:{
    //music
      DarkModeSwitch,

  },
    data() {
      var validatePass = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请输入密码'))
        } else {
          callback()
        }
      }
      var validatePass2 = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请再次输入密码'))
        } else if (value !== this.dataForm.newPassword) {
          callback(new Error('两次输入密码不一致!'))
        } else {
          callback()
        }
      }
      return {
        disGame: false,
        PcGameList:[1,2,3,4,5,6,7,8],
        game: 'https://games.maoye.vip',//游戏地址
        disChangePwd: false,
        toolButton: false,
        hoverEnter: false,
        mouseAnimation: false,
        isDark: false,
        scrollTop: 0,
        toolbarDrawer: false,
        mobile: false,
        dataForm: {      //定义变量保存密码
          oldPassword: '',
          newPassword: '',
          newPassword2: ''
        },
        rules: {
          oldPassword: [
            { required: true, message: '旧密码不能为空', trigger: 'blur' }
          ],
          newPassword: [
            { required: true, message: '新密码不能为空', trigger: 'blur' },
            { validator: validatePass, trigger: 'blur' }
          ],
          newPassword2: [
            { required: true, message: '确认密码不能为空', trigger: 'blur' },
            { validator: validatePass2, trigger: 'blur' }
          ]
        }
      }

    },
    mounted() {
      if (this.mouseAnimation) {
        mousedown();
      }
      window.addEventListener("scroll", this.onScrollPage);
      if (this.isDaylight()) {
        this.isDark = true;
        let root = document.querySelector(":root");
        root.style.setProperty("--background", "#272727");
        root.style.setProperty("--fontColor", "white");
        root.style.setProperty("--borderColor", "#4F4F4F");
        root.style.setProperty("--borderHoverColor", "black");
        root.style.setProperty("--articleFontColor", "#E4E4E4");
        root.style.setProperty("--articleGreyFontColor", "#D4D4D4");
        root.style.setProperty("--commentContent", "#D4D4D4");
        root.style.setProperty("--favoriteBg", "#1e1e1e");
      }
    },
    destroyed() {
      window.removeEventListener("scroll", this.onScrollPage);
    },
    watch: {
      scrollTop(scrollTop, oldScrollTop) {
        //如果滑动距离超过屏幕高度三分之一视为进入页面，背景改为白色
        let enter = scrollTop > window.innerHeight / 2;
        const top = scrollTop - oldScrollTop < 0;
        let isShow = scrollTop - window.innerHeight > 30;
        this.toolButton = isShow;
        if (isShow && !this.$common.mobile()) {
          if (window.innerHeight > 950) {
            $(".cd-top").css("top", "0");
          } else {
            $(".cd-top").css("top", window.innerHeight - 950 + "px");
          }
        } else if (!isShow && !this.$common.mobile()) {
          $(".cd-top").css("top", "-900px");
        }

        //导航栏显示与颜色
        let toolbarStatus = {
          enter: enter,
          visible: top,
        };
        this.$store.commit("changeToolbarStatus", toolbarStatus);
      },
    },
    created() {
      let toolbarStatus = {
        enter: false,
        visible: true,
      };
      this.$store.commit("changeToolbarStatus", toolbarStatus);
      this.getWebInfo();
      this.getSortInfo();

      this.mobile = document.body.clientWidth < 1100;

      window.addEventListener('resize', () => {
        let docWidth = document.body.clientWidth;
        if (docWidth < 1100) {
          this.mobile = true;
        } else {
          this.mobile = false;
        }
      });
    },
    computed: {
      toolbar() {
        return this.$store.state.toolbar;
      },
      sortInfo() {
        return this.$store.state.sortInfo;
      }
    },
    methods: {
      //打开小游戏
      openPcGame(){
        this.disGame = true
        //console.log(this.PcGameList.length);
        // 随机获取一个游戏
        let index = Math.floor(Math.random() * this.PcGameList.length);
        this.game = 'https://games.maoye.vip';
      },
      smallMenu(data) {
        this.$router.push(data)
        //console.log(this.$router.push(data));
        this.toolbarDrawer = false;
      },

      smallMenuLogout() {
        this.logout();
        this.toolbarDrawer = false;
      },

      goIm() {
        if (this.$common.isEmpty(this.$store.state.currentUser)) {
          this.$message({
            message: "请先登录！",
            type: "error"
          });
        } else {
          let userToken = this.$common.encrypt(localStorage.getItem("userToken"));
          window.open(this.$constant.imBaseURL + "?userToken=" + userToken + "&defaultStoreType=" + localStorage.getItem("defaultStoreType"));

        }
      },
      logout() {
        this.$http.get(this.$constant.baseURL + "/user/logout")
          .then((res) => {
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
        this.$store.commit("loadCurrentUser", {});
        localStorage.removeItem("userToken");
        this.$router.push({path: '/'});
      },
      getWebInfo() {
        this.$http.get(this.$constant.baseURL + "/webInfo/getWebInfo")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.$store.commit("loadWebInfo", res.data);
              localStorage.setItem("defaultStoreType", res.data.defaultStoreType);
             //console.log(res.data);
        //      let randomCover = JSON.parse(res.data.randomCover);
        // randomCover.forEach((cover) => {
        //   console.log(cover); // 分别打印每张图片的链接
        // });
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      getSortInfo() {
        this.$http.get(this.$constant.baseURL + "/webInfo/getSortInfo")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.$store.commit("loadSortInfo", res.data);
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      changeColor() {
        this.isDark = !this.isDark;
        let root = document.querySelector(":root");

        if (this.isDark) {
          root.style.setProperty("--background", "#272727");
          root.style.setProperty("--fontColor", "white");
          root.style.setProperty("--borderColor", "#4F4F4F");
          root.style.setProperty("--borderHoverColor", "black");
          root.style.setProperty("--articleFontColor", "#E4E4E4");
          root.style.setProperty("--articleGreyFontColor", "#D4D4D4");
          root.style.setProperty("--commentContent", "#D4D4D4");
          root.style.setProperty("--favoriteBg", "#1e1e1e");
        } else {
          root.style.setProperty("--background", "white");
          root.style.setProperty("--fontColor", "black");
          root.style.setProperty("--borderColor", "rgba(0, 0, 0, 0.5)");
          root.style.setProperty("--borderHoverColor", "rgba(110, 110, 110, 0.4)");
          root.style.setProperty("--articleFontColor", "#1F1F1F");
          root.style.setProperty("--articleGreyFontColor", "#616161");
          root.style.setProperty("--commentContent", "#F7F9FE");
          root.style.setProperty("--favoriteBg", "#f7f9fe");
        }
      },
      toTop() {
        window.scrollTo({
          top: 0,
          behavior: "smooth"
        });
      },
      onScrollPage() {
        this.scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
      },
      isDaylight() {
        let currDate = new Date();
        if (currDate.getHours() > 22 || currDate.getHours() < 7) {
          return true;
        } else {
          return false;
        }
      },
      changeMouseAnimation() {
        this.mouseAnimation = !this.mouseAnimation;
        if (this.mouseAnimation) {
          this.$nextTick(() => {
            mousedown();
          });
        }
      },

      //修改密码
      changePassword () {
        this.disChangePwd = true
      },
      reqChangePassword(){
        this.$refs["dataForm"].validate((valid) => {
          if (valid) {
            this.$http.post(this.$constant.baseURL + "/admin/user/changePassword", this.dataForm)
              .then(resp => {
                if (resp.code === 200 && resp.data ==='修改成功,请重新登录!') {
                  this.$message({
                    message: resp.data,
                    type: "success"
                  });
                  this.disChangePwd = false;
                  this.$store.commit("loadCurrentUser", {});
                  localStorage.removeItem("userToken");
                  this.$router.push({path: '/login'});
                }else {
                  this.$message({
                    type: 'error',
                    message: resp.data
                  })
                }

              })
          }
        })
      },
    }
  }
</script>

<style scoped>

  .toolbar-content {
    width: 100%;
    height: 60px;
    color: var(--white);
    /* 固定位置，不随滚动条滚动 */
    position: fixed;
    z-index: 100;
    /* 禁止选中文字 */
    user-select: none;
    transition: all 0.3s ease-in-out;
  }

  .toolbar-content.enter {
    background: var(--toolbarBackground);
    color: var(--toolbarFont);
    box-shadow: 0 1px 3px 0 rgba(0, 34, 77, 0.05);
  }

  .toolbar-content.hoverEnter {
    background: var(--translucent);
    box-shadow: 0 1px 3px 0 rgba(0, 34, 77, 0.05);
  }

  .toolbar-title {
    margin-left: 30px;
    cursor: pointer;
  }

  .toolbar-mobile-menu {
    font-size: 30px;
    margin-right: 15px;
    cursor: pointer;
  }

  .scroll-menu {
    margin: 0 25px 0 0;
    display: flex;
    justify-content: flex-end;
    padding: 0;
  }

  .scroll-menu li {
    list-style: none;
    margin: 0 12px;
    font-size: 17px;
    height: 60px;
    line-height: 60px;
    position: relative;
    cursor: pointer;
  }

  .scroll-menu li:hover .my-menu span {
    color: var(--themeBackground);
  }

  .scroll-menu li:hover .my-menu i {
    color: var(--themeBackground);
    animation: scale 1.5s ease-in-out infinite;
  }
/*新增用flex布局来实现垂直居中*/
  .scroll-menu li .my-menu {
    display: flex;
    align-items: center; /* 垂直居中 */
    justify-content: center; /* 水平居中，如果需要 */
  }

  .scroll-menu li .my-menu:after {
    content: "";
    display: block;
    position: absolute;
    bottom: 0;
    height: 6px;
    background-color: var(--themeBackground);
    width: 100%;
    max-width: 0;
    transition: max-width 0.25s ease-in-out;
  }

  .scroll-menu li:hover .my-menu:after {
    max-width: 100%;
  }

  .sortMenu {
    margin-left: 44px;
    font-size: 17px;
    position: relative;
  }

  .sortMenu:after {
    top: 32px;
    width: 35px;
    left: 0;
    height: 2px;
    background: var(--themeBackground);
    content: "";
    border-radius: 1px;
    position: absolute;
  }

  .el-dropdown {
    font-size: unset;
    color: unset;
  }

  .el-popper[x-placement^=bottom] {
    margin-top: -8px;
  }

  .el-dropdown-menu {
    padding: 5px 0;
  }

  .el-dropdown-menu__item {
    font-size: unset;
  }

  .el-dropdown-menu__item:hover {
    background-color: var(--white);
    color: var(--themeBackground);
  }
/*设置-太阳和月亮*/
  .toolButton {
    position: fixed;
    right: 3vh;
    bottom: 20vh;
    animation: slide-bottom 0.5s ease-in-out both;
    z-index: 100;
    cursor: pointer;
    font-size: 25px;
    width: 30px;
  }

  .my-setting {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    cursor: pointer;
    font-size: 20px;
  }

  .my-setting i {
    padding: 5px;
  }

  .my-setting i:hover {
    color: var(--themeBackground);
  }

  .cd-top {
    background: var(--toTop) no-repeat center;
    position: fixed;
    right: 5vh;
    top: -900px;
    z-index: 99;
    width: 70px;
    height: 900px;
    background-size: contain;
    transition: all 0.5s ease-in-out;
    cursor: pointer;
  }

  .backTop {
    transition: all 0.3s ease-in;
    position: relative;
    top: 0;
    left: -13px;
  }

  .backTop:hover {
    top: -10px;
  }

  #outerImg {
    position: fixed;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.6);
    z-index: 10;
    width: 100%;
    height: 100%;
    display: none;
  }

  @media screen and (max-width: 400px) {
    .toolButton {
      right: 0.5vh;
    }
  }
</style>
