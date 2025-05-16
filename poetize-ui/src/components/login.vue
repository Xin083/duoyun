<template>
  <div class="bg-login">
    <div class="login-container">
      <div class="login-bg">
        <particles-bg style="position: absolute; z-index: 1;"   type="polygon" :bg="true" :num="3" :size="1" :speed="1"/>
        <div class="background-image">
          <div class="max-w-md z-10">
            <div class="biaoti leading-tight mb-6">欢迎光临</div>
            <div class="text-sm text-gray-200 font-normal">❤昨天你把我删了，我陷入了久久的沉思，我想这其中一定有什么含义，原来你是在欲擒故纵，嫌我不够爱你无理取闹的，你变得更加可爱了，我会坚守我对你的爱的，你放心好啦！么么哒！❤</div>
          </div>
        </div>
      </div>
      <transition name="slide-fade">
        <!--登录-->
        <div class="login-form" v-show="showlogin">
          <!--登录-->
          <div>
            <el-form :model="loginform" :rules="rules" ref="loginform">
              <h3 class="title">欢迎登录</h3>
              <div class="wrapper">
                <span class="line"></span>
                <span class="text">用户名/邮箱登录</span>
                <span class="line"></span>
              </div>
              <el-form-item  label="用户名" prop="username">
                <el-input class="custom-input" v-model="loginform.username" placeholder="请输入用户名"></el-input>
              </el-form-item>
              <el-form-item label="密码" prop="password">
                <el-input class="custom-input" type="password" v-model="loginform.password" placeholder="请输入密码"></el-input>
              </el-form-item>
              <el-form-item>
                <el-link class="ljzc" icon="el-icon-edit" :underline="false"  @click="showzhuces">还没有账号？立即注册>></el-link>
                <el-link class="login-forget-password" :underline="false" @click="showczpasswords">忘记密码？</el-link>
              </el-form-item>
              <el-form-item class="login-buttons">
                <el-button class="btn-login" type="primary" @click="loginForm('loginform')">登录</el-button>
                <el-button style="display: none" @click="resetForm('form')">重置</el-button>
              </el-form-item>
            </el-form>
          </div>
        </div>
      </transition>

      <transition name="slide-fade">
        <!--找回密码start-->
        <div class="czpwd-form" v-show="showczpassword">
          <div>
            <el-form :model="cz_passwordform" :rules="rules" ref="cz_passwordform">
              <h3 class="title">找回密码</h3>
              <div class="wrapper">
                <span class="line"></span>
                <span class="text">请使用邮箱找回哦</span>
                <span class="line"></span>
              </div>
              <el-form-item style="display: none"  label="用户名/邮箱" prop="username">
                <el-input class="custom-input" v-model="cz_passwordform.username" placeholder="请输入用户名"></el-input>
              </el-form-item>
              <el-form-item label="邮箱" prop="email">
                <el-input class="custom-input" type="email" v-model="cz_passwordform.email" placeholder="请输入邮箱"></el-input>
              </el-form-item>
              <el-form-item label="新密码" prop="password">
                <el-input class="custom-input" type="password" v-model="cz_passwordform.password" placeholder="请输入新密码"></el-input>
              </el-form-item>
              <el-form-item label="验证码" prop="verification_code">
                <br/>
                <div class="custom-input-wrapper">
                  <el-input class="yzm custom-input" type="text" v-model="cz_passwordform.verification_code" placeholder="请输入验证码" maxlength="6" @input="validateCode"></el-input>
                  <!--                  <el-button class="verification-code" @click="getCode(false)">验证码</el-button>-->
                  <el-button class="verification-code" v-if="countdown === 0" @click="getpwdCode(false)">获取验证码</el-button>
                  <el-button class="verification-code" v-else>{{countdown}}秒</el-button>
                </div>
              </el-form-item>
              <el-form-item style="display: none">
                <el-link class="ljzc" icon="el-icon-edit" :underline="false" @click="showczpassword=false; showlogin=true">已有账号？立即登录>></el-link>
                <el-link class="zhuce-forget-password" :underline="false">忘记密码？</el-link>
              </el-form-item>
              <el-form-item style="margin: 0 auto; display: flex; justify-content: center;">
                <el-button class="btn-updatepassword" type="primary" @click="czpwdForm('cz_passwordform')">确认</el-button>
                <el-button class="btn-backlogin" type="success" @click="showlogins">返回首页</el-button>
              </el-form-item>
            </el-form>


          </div>

        </div>
        <!--找回密码end-->
      </transition>

      <transition name="slide-fade">
        <!--注册start -->
        <div class="zhuce-form" v-show="showzhuce">
          <!--注册start-->
          <div>
            <el-form :model="signupform" :rules="rules" ref="signupform">
              <h3 class="title">欢迎注册</h3>
              <div class="wrapper">
                <span class="line"></span>
                <span class="text">用户名/邮箱注册</span>
                <span class="line"></span>
              </div>
              <el-form-item  label="用户名/邮箱" prop="username">
                <el-input class="custom-input" v-model="signupform.username" placeholder="请输入用户名"></el-input>
              </el-form-item>
              <el-form-item label="密码" prop="password">
                <el-input class="custom-input" type="password" v-model="signupform.password" placeholder="请输入密码"></el-input>
              </el-form-item>
              <el-form-item label="邮箱" prop="email">
                <el-input class="custom-input" type="email" v-model="signupform.email" placeholder="请输入邮箱" @blur="validateEmail"></el-input>
              </el-form-item>
              <el-form-item label="验证码" prop="verification_code">
                <br/>
                <div class="custom-input-wrapper">
                  <el-input class="yzm custom-input" type="text" v-model="signupform.verification_code" placeholder="请输入验证码" maxlength="6" @input="validateCode"></el-input>
                  <!--                  <el-button class="verification-code" @click="getCode(false)">验证码</el-button>-->
                  <el-button class="verification-code" v-if="countdown === 0" @click="getCode(false)">获取验证码</el-button>
                  <el-button class="verification-code" v-else>{{countdown}}秒</el-button>
                </div>
              </el-form-item>
              <el-form-item>
                <el-link class="ljzc" icon="el-icon-edit" :underline="false" @click="showlogins">已有账号？立即登录>></el-link>
                <el-link class="zhuce-forget-password" :underline="false">忘记密码？</el-link>
              </el-form-item>
              <el-form-item class="btn-zhuce">
                <el-button class="btn-zhuce" type="primary" @click="signupForm('signupform')">注册</el-button>
                <el-button style="display: none" @click="resetForm('form')">重置</el-button>
              </el-form-item>
            </el-form>
          </div>

        </div>
        <!--注册end-->
      </transition>

    </div>
  </div>
</template>

<script>
import { ParticlesBg } from "particles-bg-vue";

export default {
  components: {
    ParticlesBg
  },
  data() {
    return {
      showlogin: true,
      showzhuce: false,
      showczpassword: false,
      countdown: 0, // 倒计时秒数
      //登录表单
      loginform: {
        username: '',
        password: '',
        //rememberMe: false
      },
      //注册表单
      signupform: {
        username: '',
        password: '',
        email: '',
        verification_code: '',
        //rememberMe: false
      },
      //找回密码表单
      cz_passwordform: {
        password: '',
        email: '',
        verification_code: '',
      },
      rules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' }
        ],
        emali: [
          { required: true, message: '请输入邮箱', trigger: 'blur' }
        ],
        verification_code: [
          { required: true, message: '请输入验证🐎', trigger: 'blur' }
        ],
      }
    };
  },
  methods: {
    //动画切换
    showlogins(){
      this.showlogin = true;
      this.showzhuce = false;
      this.showczpassword = false;

      setTimeout(() => {
        document.querySelector('.zhuce-form').style.display = 'none';
        document.querySelector('.czpwd-form').style.display = 'none';
      },500); // 这里的 500 是与过渡动画的时间一致，确保在动画结束后再显示
    },
    showzhuces(){
      this.showzhuce = true;
      this.showlogin = false;
      this.showczpassword = false;
      // 将 .zhuce-form 的 display 属性更改为显示
      setTimeout(() => {
        document.querySelector('.zhuce-form').style.display = 'block';
        document.querySelector('.login-form').style.display = 'none';
      }, 500); // 这里的 500 是与过渡动画的时间一致，确保在动画结束后再显示 .zhuce-form
    },
    showczpasswords(){
      this.showczpassword = true;
      this.showlogin = false;
      this.showzhuce = false;

      setTimeout(() => {
        document.querySelector('.czpwd-form').style.display = 'block';
        document.querySelector('.login-form').style.display = 'none';
      }, 500); // 这里的 500 是与过渡动画的时间一致，确保在动画结束后再显示
    },
    loginForm(formName) {
      //登录表单提交
      this.$refs[formName].validate((valid) => {
        if (valid) {
          if (this.$common.isEmpty(this.loginform.username) || this.$common.isEmpty(this.loginform.password)) {
            this.$message({
              message: "请输入账号或密码！",
              type: "error"
            });
            return;
          }

          let user = {
            account: this.loginform.username.trim(),
            password: this.$common.encrypt(this.loginform.password.trim())
          };

          this.$http.post(this.$constant.baseURL + "/user/login", user, false, false)
            .then((res) => {
              if (!this.$common.isEmpty(res.data)) {
                this.$store.commit("loadCurrentUser", res.data);
                localStorage.setItem("userToken", res.data.accessToken);
                this.loginform.username = "";
                this.loginform.password = "";
                this.$router.push({path: '/'});
                //登录成功
                this.$message({
                  showClose: true,
                  message: '恭喜你，登录成功！',
                  type: 'success'
                });
              }
            })
            .catch((error) => {
              this.$message({
                message: error.message,
                type: "error"
              });
            });
        } else {
          console.log('error login!!');
          return false;
        }
      });
    },
    //验证码正则表达
    validateCode() {
      //自动验证，直接禁止中文和符号
      this.signupform.verification_code = this.signupform.verification_code.replace(/[^\d]/g, '').substring(0, 6);
    },
    //验证邮箱格式
    validateEmail() {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(this.signupform.email)) {
        this.$message.error('⚠邮箱为空或格式不正确，请重新输入！');
        // 邮箱格式不正确，清空输入框
        this.signupform.email= '';
      }
    },
    //加载动画
    modelTest(){
      this.loadingOpen(" ");
      setTimeout(()=>{
        this.loadingClose();
      },2000);
    },
    //注册获取验证码发送
    getCode(immediately) {
      if (this.countdown === 0) {
        if (!this.signupform.email) {
          this.$message({
            message: "请输入电子邮箱",
            type: "warning"
          });
          return;
        }

        let url = "/user/getCodeForForgetPassword?flag=2&place=" + this.signupform.email;
        console.log("邮箱为：" + this.email);

        this.$http.get(this.$constant.baseURL + url)
          .then((res) => {
            this.$message({
              message: "验证码已发送，请注意查收！",
              type: "success"
            });
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
        this.modelTest();
        this.countdown = 30; // 设置倒计时初始值为30
        const interval = setInterval(() => {
          if (this.countdown === 0) {
            clearInterval(interval);
          } else {
            this.countdown -= 1;
          }
        }, 1000);
      }
    },
    //注册表单
    signupForm(forName){
      if (this.$common.isEmpty(this.signupform.username) || this.$common.isEmpty(this.signupform.password)) {
        this.$message({
          message: "请输入用户名或密码！",
          type: "error"
        });
        return;
      }

      if ((this.$common.isEmpty(this.signupform.email) || this.$common.isEmpty(this.signupform.verification_code))) {
        this.$message({
          message: "请输入邮箱和验证码！",
          type: "error"
        });
        return;
      }

      if (this.signupform.username.includes(" ") || this.signupform.password.includes(" ")) {
        this.$message({
          message: "用户名或密码不能包含空格！",
          type: "error"
        });
        return;
      }

      let user = {
        username: this.signupform.username.trim(),
        code: this.signupform.verification_code.trim(), //验证码
        password: this.$common.encrypt(this.signupform.password.trim())
      };
      let yzcode=this.signupform.verification_code.replace(/[^\d]/g, '').substring(0, 6);
      if (this.signupform.verification_code === yzcode && this.signupform.verification_code!=="") {
        user.email = this.signupform.email;
      }

      // 调用后端注册接口
      this.$http.post(this.$constant.baseURL + "/user/regist", user)
        .then((res) => {
          if (!this.$common.isEmpty(res.data)) {
            //加载动画
            this.loadingOpen(" ");
            setTimeout(()=>{
              //关闭动画
              this.loadingClose();

              //注册提交
              this.$store.commit("loadCurrentUser", res.data);
              localStorage.setItem("userToken", res.data.accessToken);
              this.username = "";
              this.password = "";
              //this.$router.push({path: '/'});
              let userToken = this.$common.encrypt(localStorage.getItem("userToken"));
              //window.open(this.$constant.imBaseURL + "?userToken=" + userToken);
              localStorage.removeItem("userToken");

              // 注册成功逻辑
              this.$message({
                showClose: true,
                message: '恭喜你注册成功了哦！',
                type: 'success'
              });

              //定时器延迟2秒
              setTimeout(()=>{
                this.$router.push({path: '/'}); //跳转首页
              },3000);

            },3000);

          }
        })
        .catch((error) => {
          this.$message({
            message: error.message,
            type: "error"
          });
        });
    },
    //煞笔忘记密码验证🐎发送
    getpwdCode(immediately) {
      if (this.countdown === 0) {
        if (!this.cz_passwordform.email) {
          this.$message({
            message: "请输入电子邮箱",
            type: "warning"
          });
          return;
        }

        let url = "/user/getCodeForForgetPassword?flag=2&place=" + this.cz_passwordform.email;
        //console.log("邮箱为：" + this.email);

        this.$http.get(this.$constant.baseURL + url)
          .then((res) => {
            this.$message({
              message: "验证码已发送，请注意查收！",
              type: "success"
            });
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
        this.modelTest();
        this.countdown = 30; // 设置倒计时初始值为30
        const interval = setInterval(() => {
          if (this.countdown === 0) {
            clearInterval(interval);
          } else {
            this.countdown -= 1;
          }
        }, 1000);
      }
    },
    czpwdForm(forName) {
      //邮箱
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(this.cz_passwordform.email)) {
        this.$message.error('⚠邮箱为空或格式不正确，请重新输入！');
        // 邮箱格式不正确，清空输入框
        this.email = '';
      }
      if (this.$common.isEmpty(this.cz_passwordform.email)) {
        this.$message({
          message: "请输入邮箱！",
          type: "error"
        });
        return;
      }
      //验证码
      if (this.$common.isEmpty(this.cz_passwordform.verification_code)) {
        this.$message({
          message: "请输入验证码！",
          type: "error"
        });
        return;
      }
      //密码
      if (this.$common.isEmpty(this.cz_passwordform.password)) {
        this.$message({
          message: "请输入密码！",
          type: "error"
        });
        return;
      }
      let params = {
        flag: 2,
        place: this.cz_passwordform.email,
        code: this.cz_passwordform.verification_code.trim(),
        password: this.$common.encrypt(this.cz_passwordform.password.trim())
      };
      // if (!this.checkParams(params)) {
      //   return;
      // }

      //修改密码
      this.modelTest(); // 显示加载动画
      this.$http.post(this.$constant.baseURL + "/user/updateForForgetPassword", params, false, false)
        .then((res) => {

          this.cz_passwordform.email ="";
          this.cz_passwordform.password = "";
          this.cz_passwordform.verification_code = "";
          //修改成功
          this.$message({
            message: "修改成功，请重新登陆！",
            type: "success"
          });
          // 延迟跳转到登录页
          setTimeout(() => {
            this.$router.push({path: '/login'}); //跳转登录页
          }, 2000);

        })
        .catch((error) => {
          this.$message({
            message: error.message,
            type: "error"
          });
        });
    },
    //返回首页
    ReturnIndex(){
      this.$router.push({path: '/login'}); //跳转登录页
    },
    //清空表单
    resetForm(formName) {
      this.$refs[formName].resetFields();
    }
  }
};
</script>

<style scoped>
.fade-enter-active, .fade-leave-active {
  transition: opacity .5s;
}
.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
  opacity: 0;
  transition: all .8s cubic-bezier(1.0, 0.5, 0.8, 1.0);
}
/* 可以设置不同的进入和离开动画 */
/* 设置持续时间和动画函数 */
.slide-fade-enter-active {
  transition: all .3s ease;
}
.slide-fade-leave-active {
  transition: all .3s cubic-bezier(1.0, 0.5, 0.8, 1.0);
  opacity: 0;
}
.slide-fade-enter, .slide-fade-leave-to
  /* .slide-fade-leave-active for below version 2.1.8 */ {
  transform: translateX(10px);
  opacity: 0;

}

.bounce-enter-active {
  animation: bounce-in .5s;

}
.bounce-leave-active {
  animation: bounce-in .5s reverse;
  opacity: 0;
}
@keyframes bounce-in {
  0% {
    transform: scale(0);
  }
  50% {
    transform: scale(1.5);
  }
  100% {
    transform: scale(1);
  }
}

.custom-input-wrapper {
  display: flex;
  align-items: center;
}

.custom-input {
  flex: 1;
}

.custom-input + .el-button {
  margin-left: auto;
}
.background-image {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: url('https://qiniu.maoye.vip/ArticleFengMian/4kfengmian%206.jpg');
  background-size: cover;
  z-index: 0;
}
/*左边欢迎语句*/
.max-w-md {
  max-width: 28rem;
}
.z-10 {
  width: 448px;
  height: 112px;
  z-index: 10;
  /*color: white;*/
  margin-top: 15%;
  margin-left: 15%;
  word-wrap: break-word; /* 文字换行 */
  text-align: left; /* 文字居中 */
}
.biaoti {
  font-size: 4.25rem;
  line-height: 2.5rem;
  color: white;
}
.leading-tight {
  line-height: 1.25;
}

.font-bold {
  font-weight: 700;
}
.mb-6 {
  margin-bottom: 1.5rem;
}

.text-sm {
  color: #ffffff;
  font-size: .975rem;
  line-height: 1.25rem;
}

.text-gray-200 {
  --tw-text-opacity: 1;
  color: #ffffff;
}
.font-normal {
  font-weight: 400;
}
/*欢迎语句end*/
.wrapper {
  display: flex;
  align-items: center;
  justify-content: center;
}

.line {
  width: 30%;
  height: 1px;
  background-color: #ccc;
}

.text {
  margin: 0 10px;
  color: #7c7c7c;
  /*font-weight: bold;*/
  font-size: 16px;
  text-transform: uppercase;
}

.line::before,
.line::after {
  content: "";
  flex: 1;
  height: 1px;
  background-color: #ccc;
}

.line::before {
  margin-right: 20px;
}

.line::after {
  margin-left: 20px;
}
.bg-login{

}
.login-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  overflow-y: hidden; /* 防止内容溢出 */
}

.login-bg {
  width: 60%;
  height: 100%;
  background-color: #f5f5f5;
  display: flex;
  justify-content: center; /* 水平居中 */
  align-items: center; /* 垂直居中 */
}

.login-form {
  width: 30%;
  height: auto;
  background-color: #fff;
  padding: 20px;
  box-sizing: border-box;
  border-radius: 10px;
  box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.25);
  margin: 0 auto; /* 添加这行代码使其水平居中 */
  z-index: 2;
  display: block;
  transition: all 0.5s ease;

}
.zhuce-form{
  width: 30%;
  height: auto;
  background-color: #fff;
  padding: 20px;
  box-sizing: border-box;
  border-radius: 10px;
  box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.25);
  margin: 0 auto; /* 添加这行代码使其水平居中 */
  z-index: 3;
  display: none;
  transition: all 0.5s ease;
}
.czpwd-form{
  width: 30%;
  height: auto;
  background-color: #fff;
  padding: 20px;
  box-sizing: border-box;
  border-radius: 10px;
  box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.25);
  margin: 0 auto; /* 添加这行代码使其水平居中 */
  z-index: 3;
  display: none;
  transition: all 0.5s ease;
}
.title {
  text-align: center;
  margin-bottom: 20px;
  /* font-weight: 700;*/
  font-size: 25px;
  color: #2196f3;
}
/*输入框*/
.custom-input>>>.el-input__inner{
  border: 0;
  border-bottom:1px solid #69a4f7
}

.custom-input .el-input__suffix-inner {
  border-bottom: solid 1px #ccc;
}

/*验证码*/
.yzm{
  width: 70%;
  display: block;
}
.verification-code {
  /*width: 100px;*/
  color: #fafafa;
  border: 0;
  float: right;
  margin-left: 10px;
  /*background-image: linear-gradient(to right, #9C27B0, #4CAF50);*/
  background-image: linear-gradient(to right, #409eff, #409eff);
  border-radius: 14px;
  transition: background-image 0.3s ease;
  text-align: center;
}
.verification-code:hover{
  background-image: linear-gradient(to right, #1146f3, rgba(0, 156, 255, 0.74));
}

/*注册框*/
.el-form-item {
  /* margin-bottom: 0px !important;*/
}
/*立即注册*/
.ljzc {
  color: #1e90ff !important;
}
.ljzc:hover {
  color: #ff0404 !important;
}

/*忘记密码*/
.login-forget-password {
  margin-left: 204px;
  font-size: 15px;
  color: black;
}
.zhuce-forget-password {
  display: none;
  margin-left: 204px;
  font-size: 15px;
  color: black;
}

.el-checkbox {
  margin-top: 10px;
}
.login-buttons {
  display: flex;
  justify-content: center;
  margin-top: 10px;
}
/*登录按钮*/
.btn-login {
  width: 250px;
  border: 0;
  background-image: linear-gradient(to right, #9C27B0, #4CAF50);
  border-radius: 14px;
  transition: background-image 0.3s ease;
  margin: 0 auto;
}

.btn-login:hover {
  background-image: linear-gradient(to right, #4CAF50, #9C27B0);
}
/*注册按钮*/
.btn-zhuce {
  width: 250px;
  border: 0;
  background-image: linear-gradient(to right, #9C27B0, #4CAF50);
  border-radius: 14px;
  transition: background-image 0.3s ease;
  margin: 0 auto;
}
/*鼠标经过按钮*/
.btn-zhuce:hover {
  background-image: linear-gradient(to right, #4CAF50, #9C27B0);
}

/*忘记密码*/
/*确认*/
.btn-updatepassword {
  width: 100px;
  /*background-image: linear-gradient(to right, #9C27B0, #4CAF50);*/
  border-radius: 14px;
  /*transition: background-image 0.3s ease;*/
  margin: 0 auto;
  margin-right: 50px;
}
/*鼠标经过按钮*/
.btn-updatepassword:hover {
  /*background-image: linear-gradient(to right, #6496FF, #2F7CBE);*/
}
/*返回首页*/
.btn-backlogin{
  width: 100px;
  /*background-image: linear-gradient(to right, #9C27B0, #4CAF50);*/
  border-radius: 14px;
  /*transition: background-image 0.3s ease;*/
  margin: 0 auto;
}

/*距离右边*/
.el-button {
  /*margin-right: 10px;*/
}

@keyframes background {
  0% {
    background-position: 0px 0px;
  }
  100% {
    background-position: 100% 100%;
  }
}
@media (min-width: 769px) and (max-width:988px) {

  .login-forget-password {
    margin-left: 10px;
    font-size: 15px;
    color: black;
  }
  .zhuce-forget-password {
    display: none;
    margin-left: 22px;
    font-size: 15px;
    color: black;
  }
  .line {
    width: 20%;
    height: 1px;
    background-color: #ccc;
  }
  .btn-login {
    width: 180px;
    border: 0;
    background-image: linear-gradient(to right, #9C27B0, #4CAF50);
    border-radius: 14px;
    transition: background-image 0.3s ease;
    margin: 0 auto;
  }
  .btn-zhuce {
    width: 180px;
    border: 0;
    background-image: linear-gradient(to right, #9C27B0, #4CAF50);
    border-radius: 14px;
    transition: background-image 0.3s ease;
    margin: 0 auto;
  }
  .z-10{
    width: 386px;
    height: 112px;
    z-index: 10;
    /* color: white; */
    margin-top: 25%;
    margin-left: 10%;
    word-wrap: break-word;
    text-align: left;
  }
  .btn-updatepassword {
    width: 100px;
    border-radius: 14px;
    margin: 0 auto;
    margin-right: 10px;
  }
}
@media (max-width: 768px) {
  .z-10 {
    display: none;
  }
  .login-container {
    flex-direction: column;
  }
  .login-bg {
    width: 100%;
    height: auto;
  //background-image: url("../assets/images/4k0012.jpg");
  //background-size: cover;
  }
  .login-container {
    background-image: url("https://qiniu.maoye.vip/ArticleFengMian/4kfengmian%208.jpg");
    background-size: cover;
  }
  .login-form {
    width: 90%;
    height: auto;
    margin: 0 auto;
  }
  .zhuce-form{
    width: 90%;
    height: auto;
    margin: 0 auto;
  }
  .czpwd-form{
    width: 90%;
    height: auto;
    margin: 0 auto;
  }
  .login-forget-password  {
    margin-left: 104px;
  }
}
</style>
