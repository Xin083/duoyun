<template>
    <div>
      <!-- 复制SVG图标及开关按钮部分 -->
      <input style="display: none" type="checkbox" id="darkmode-toggle" v-model="isDarkMode" />
      <label for="darkmode-toggle">
        <svg t="1707453378132" class="sun" @click="changeColor" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="7791" width="20" height="28"><path d="M512 61.44c13.312 0 25.25184 7.63904 29.94176 19.16928l27.56608 67.97312c11.91936 29.34784-4.17792 62.07488-35.9424 73.09312A65.9456 65.9456 0 0 1 512 225.28c-33.93536 0-61.44-25.41568-61.44-56.77056 0-6.79936 1.3312-13.55776 3.91168-19.92704l27.58656-67.97312C486.72768 69.07904 498.64704 61.44 512 61.44z m0 901.12c-13.33248 0-25.27232-7.63904-29.94176-19.16928l-27.58656-67.97312a52.96128 52.96128 0 0 1-3.91168-19.92704C450.56 824.15616 478.06464 798.72 512 798.72c7.3728 0 14.66368 1.2288 21.56544 3.60448 31.76448 11.01824 47.86176 43.74528 35.9424 73.1136l-27.56608 67.95264c-4.68992 11.53024-16.62976 19.16928-29.94176 19.16928z m450.56-450.56c0 13.312-7.63904 25.25184-19.16928 29.94176l-67.97312 27.56608c-29.34784 11.91936-62.07488-4.17792-73.09312-35.9424A65.9456 65.9456 0 0 1 798.72 512c0-33.93536 25.41568-61.44 56.77056-61.44 6.79936 0 13.55776 1.3312 19.92704 3.91168l67.97312 27.58656c11.53024 4.66944 19.16928 16.5888 19.16928 29.94176zM61.44 512c0-13.33248 7.63904-25.27232 19.16928-29.94176l67.97312-27.58656c6.3488-2.58048 13.1072-3.91168 19.92704-3.91168C199.84384 450.56 225.28 478.06464 225.28 512c0 7.3728-1.2288 14.66368-3.60448 21.56544-11.01824 31.76448-43.74528 47.86176-73.1136 35.9424l-67.95264-27.56608C69.07904 537.25184 61.44 525.312 61.44 512zM193.39264 193.41312c9.4208-9.4208 23.26528-12.45184 34.73408-7.61856l67.56352 28.54912c29.184 12.34944 40.93952 46.85824 26.25536 77.1072a65.9456 65.9456 0 0 1-12.6976 17.8176c-23.98208 23.98208-61.39904 25.45664-83.5584 3.2768a52.96128 52.96128 0 0 1-11.34592-16.85504L185.79456 228.1472c-4.85376-11.4688-1.82272-25.31328 7.59808-34.73408z m637.19424 637.19424c-9.4208 9.4208-23.26528 12.45184-34.73408 7.59808l-67.54304-28.54912a52.96128 52.96128 0 0 1-16.87552-11.32544c-22.15936-22.17984-20.6848-59.5968 3.29728-83.57888a65.9456 65.9456 0 0 1 17.8176-12.6976c30.24896-14.68416 64.75776-2.92864 77.1072 26.25536l28.54912 67.56352c4.83328 11.4688 1.80224 25.2928-7.61856 34.73408z m0-637.21472c9.4208 9.4208 12.45184 23.26528 7.61856 34.73408l-28.54912 67.56352c-12.34944 29.184-46.85824 40.93952-77.1072 26.25536a65.9456 65.9456 0 0 1-17.8176-12.6976c-23.98208-23.98208-25.45664-61.39904-3.2768-83.5584 4.79232-4.83328 10.50624-8.66304 16.85504-11.34592l67.54304-28.54912c11.4688-4.85376 25.31328-1.82272 34.73408 7.59808zM193.39264 830.58688c-9.4208-9.4208-12.45184-23.26528-7.59808-34.73408l28.54912-67.54304c2.6624-6.3488 6.51264-12.06272 11.32544-16.87552 22.17984-22.15936 59.5968-20.6848 83.57888 3.29728 5.2224 5.2224 9.5232 11.264 12.6976 17.8176 14.68416 30.24896 2.92864 64.75776-26.25536 77.1072l-67.56352 28.54912c-11.4688 4.83328-25.2928 1.80224-34.73408-7.61856zM512 737.28c-124.416 0-225.28-100.864-225.28-225.28s100.864-225.28 225.28-225.28 225.28 100.864 225.28 225.28-100.864 225.28-225.28 225.28z" p-id="7792"></path></svg>
        <svg t="1707452540307" class="moon" @click="changeColor" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6585" width="20" height="28"><path d="M566.422 1024c157.924 0 302.158-71.85 397.714-189.584 14.136-17.416-1.278-42.86-23.124-38.7-248.406 47.308-476.524-143.152-476.524-393.908 0-144.444 77.324-277.27 202.996-348.788 19.372-11.024 14.5-40.394-7.512-44.46A516.312 516.312 0 0 0 566.422 0c-282.618 0-512 229.022-512 512 0 282.618 229.022 512 512 512z" fill="" p-id="6586"></path></svg>
      </label>

      <!-- 页面背景色根据isDarkMode变量变化 -->
  <!--    <div class="background" :class="{ 'dark-mode': isDarkMode }"></div>-->
    </div>


  </template>

  <script>
  import mousedown from "../../utils/mousedown";

  export default {
    data() {
      return {
        isDarkMode: false,
        mouseAnimation: false
      };
    },
    mounted() {
      if (this.mouseAnimation) {
        mousedown();
      }
    },
    methods: {
      changeColor() {
        this.isDark = !this.isDark;
        let root = document.querySelector(":root");

        if (this.isDark) {
        //消息弹窗
          this.$notify({
            title: '成功',
            message: '你已经进入夜间模式!',
            position: 'top-left',
            type: 'success'
          });
          root.style.setProperty("--background", "#272727");
          root.style.setProperty("--fontColor", "white");
          root.style.setProperty("--borderColor", "#4F4F4F");
          root.style.setProperty("--borderHoverColor", "black");
          root.style.setProperty("--articleFontColor", "#E4E4E4");
          root.style.setProperty("--articleGreyFontColor", "#D4D4D4");
          root.style.setProperty("--commentContent", "#D4D4D4");
          root.style.setProperty("--favoriteBg", "#1e1e1e");
        } else {
          this.$notify({
            title: '成功',
            message: '你已经进入白天模式!',
            position: 'top-left',
            type: 'success'
          });
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
      changeMouseAnimation() {
        this.mouseAnimation = !this.mouseAnimation;
        if (this.mouseAnimation) {
          this.$nextTick(() => {
            mousedown();
          });
        }
      },
    }
  };
  </script>

  <style scoped>

  body{
    margin:0;
     width:100vw;
    height:100vh;
    display:flex;
    flex-direction:column;
    align-items:center;
    justify-content:center
  }
  /*开关条*/
  label{
    width:60px;/*100*/
    height:30px;/*40*/
    margin-top: 15px;
    position:relative;
    display:block;
    background:#ebebeb;
    border-radius:200px;
    box-shadow:inset 0 5px 15px rgba(0,0,0,0.4),inset 0 -5px 15px rgba(255,255,255,0.4);
    cursor:pointer;transition:.3s;
  }
  /*圆点*/
  label:after{
    content:"";
    width:30px;/*40*/
    height:30px;
    position:absolute;
    top:0px;
    left:0px;
    background:linear-gradient(180deg,#ffcc89,#d8860b);
    border-radius:180px;
    box-shadow:0 5px 10px rgba(0,0,0,0.2);
    transition:.3s}
  /*图标大小*/
  label svg{
    position:absolute;
    width:30px;
    top:0px;
     z-index:100;
  }
  label svg.sun{
    left:0px;  /*距离左边*/
    fill:#fff;
    transition:.3s;
  }
  label svg.moon{
    left:30px;  /*距离左边*/
    fill:#7e7e7e;
    transition:.3s;
    /* 添加默认隐藏月亮图标的样式 */
    opacity: 0;
  }
  input{width:0;
    height:0;
    visibility:hidden;
  }
  input:checked+label{
    background:#242424
  }
  input:checked+label:after{
    left:60px;
    transform:translateX(-100%);
    background:linear-gradient(180deg,#777,#3a3a3a)
  }
  input:checked+label svg.sun{
    fill:#7e7e7e;
    /* 添加默认隐藏月亮图标的样式 */
    opacity: 0;
  }
  input:checked+label svg.moon{
    fill:#fff;
    /* 添加默认隐藏月亮图标的样式 */
    opacity: 1;
  }
  input:checked+label+.background{background:#242424}
  input:active:after{
    width:30px;
  }
  .background{
    width:100vw;
    height:100vh;
    background:#fff;
    z-index:-1;
    position:absolute;
    transition:.3s;
  }

  .dark-mode { background-color: #333; color: #fff; /* 添加暗黑模式下的样式 */ }
  </style>
