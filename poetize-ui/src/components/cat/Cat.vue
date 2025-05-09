<template>
  <div>
    <div id="myscroll"></div>
  </div>
</template>

<script>
export default {
  mounted() {
    if (document.body.clientWidth > 992) {
      function getBasicInfo() {
        /* 窗口高度 */
        const ViewH = window.innerHeight;
        /* document高度 */
        const DocH = document.body.scrollHeight;
        /* 滚动的高度 */
        const ScrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
        /* 可滚动的高度 */
        const S_V = DocH - ViewH;
        const Band_H = (ScrollTop / (DocH - ViewH)) * 100;
        return {
          ViewH,
          DocH,
          ScrollTop,
          Band_H,
          S_V,
        };
      }

      function show(basicInfo) {
        if (basicInfo.ScrollTop > 0.001) {
          $(".neko").css("display", "block");
        } else {
          $(".neko").css("display", "none");
        }
      }

      (function ($) {
        $.fn.nekoScroll = function (option) {
          const defaultSetting = {
            top: "0",
            scroWidth: "6px",
            z_index: 9999,
            zoom: 0.9,
            borderRadius: "5px",
            right: "60px",
            nekoImg: "https://qiniu.maoye.vip/fengmian/xiaokonglong.png",
            hoverMsg: "给大佬递饭~",
            color: "#6f42c1",
            during: 500,
            blog_body: "body",
          };
          const setting = $.extend(defaultSetting, option);
          const getThis =
            this.prop("className") !== ""
              ? "." + this.prop("className")
              : this.prop("id") !== ""
                ? "#" + this.prop("id")
                : this.prop("nodeName");
          if ($(".neko").length == 0) {
            this.after(
              `<div class="neko" id=${setting.nekoname} data-msg="${setting.hoverMsg}"></div>`
            );
          }
          let basicInfo = getBasicInfo();
          $(getThis).css({
            position: "fixed",
            width: setting.scroWidth,
            top: setting.top,
            height: basicInfo.Band_H * setting.zoom * basicInfo.ViewH * 0.01 + "px",
            "z-index": setting.z_index,
            "background-color": setting.bgcolor,
            "border-radius": setting.borderRadius,
            right: setting.right,
            "background-image": `url(${setting.scImg})`,
            backgroundImage: "-webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.1) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.1) 50%, rgba(255, 255, 255, 0.1) 75%, transparent 75%, transparent)",
            "border-radius": "2em",
            "background-size": "contain",
          });
          $("#" + setting.nekoname).css({
            position: "fixed",
            top: basicInfo.Band_H * setting.zoom * basicInfo.ViewH * 0.01 - 50 + "px",
            "z-index": setting.z_index * 10,
            right: setting.right,
            "background-image": `url(${setting.nekoImg})`,
          });
          show(getBasicInfo());
          $(window).scroll(function () {
            let basicInfo = getBasicInfo();
            show(basicInfo);
            $(getThis).css({
              position: "fixed",
              width: setting.scroWidth,
              top: setting.top,
              height: basicInfo.Band_H * setting.zoom * basicInfo.ViewH * 0.01 + "px",
              "z-index": setting.z_index,
              "background-color": setting.bgcolor,
              "border-radius": setting.borderRadius,
              right: setting.right,
              "background-image": `url(${setting.scImg})`,
              backgroundImage: "-webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.1) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.1) 50%, rgba(255, 255, 255, 0.1) 75%, transparent 75%, transparent)",
              "border-radius": "2em",
              "background-size": "contain",
            });
            $("#" + setting.nekoname).css({
              position: "fixed",
              top: basicInfo.Band_H * setting.zoom * basicInfo.ViewH * 0.01 - 50 + "px",
              "z-index": setting.z_index * 10,
              right: setting.right,
              "background-image": `url(${setting.nekoImg})`,
            });
            if (basicInfo.ScrollTop == basicInfo.S_V) {
              $("#" + setting.nekoname).addClass("showMsg");
            } else {
              $("#" + setting.nekoname).removeClass("showMsg");
              $("#" + setting.nekoname).attr("data-msg", setting.hoverMsg);
            }
          });
          this.click(function (e) {
            if (window.scrollTo) {
              window.scrollTo({
                top: 0,
                behavior: "smooth",
              });
            } else {
              window.scrollTop = 0;
            }
          });
          $("#" + setting.nekoname).click(function () {
            if (window.scrollTo) {
              window.scrollTo({
                top: 0,
                behavior: "smooth",
              });
            } else {
              window.scrollTop = 0;
            }
          });
          return this;
        };
      })(jQuery);

      $("#myscroll").nekoScroll({
        //bgcolor: "rgb(0 0 0 / .5)",
        bgcolor: "#67c23a",
        borderRadius: "2em",
        zoom: 0.9,
      });
    }
  },
};
</script>

<style>
body::-webkit-scrollbar {
  width: 0;
}
.neko {
  width: 64px;
  height: 64px;
  /*background-image: url("https://bu.dusays.com/2022/07/20/62d812db74be9.png");*/
  background-image: url("https://qiniu.maoye.vip/fengmian/xiaokonglong.png");
  position: absolute;
  right: 32px;
  background-repeat: no-repeat;
  background-size: contain;
  transform: translateX(50%);
  cursor: pointer;
  font-family: tzy;
  font-weight: 600;
  font-size: 14px;
  color: #6f42c1;
  display: none;
}

.neko::after {
  display: none;
  width: 100px;
  height: 100px;
  background-image: url("https://bu.dusays.com/2022/07/20/62d812d95e6f5.png");
  background-size: contain;
  z-index: 9999;
  position: absolute;
  right: 50%;
  text-align: center;
  line-height: 100px;
  top: -115%;
}

.neko.showMsg::after {
  content: attr(data-msg);
  display: block;
  overflow: hidden;
  text-overflow: ellipsis;
}
.neko:hover::after {
  content: attr(data-msg);
  display: block;
  overflow: hidden;
  text-overflow: ellipsis;
}
.neko.fontColor::after {
  color: #333;
}

@media screen and (max-width: 992px) {
  ::-webkit-scrollbar {
    width: 8px !important;
    height: 8px !important;
  }

  ::-webkit-scrollbar-track {
    border-radius: 2em;
  }

  ::-webkit-scrollbar-thumb {
    background-color: rgb(255 255 255 / .3);
   background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.1) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.1) 50%, rgba(255, 255, 255, 0.1) 75%, transparent 75%, transparent);
    border-radius: 2em;
  }

  ::-webkit-scrollbar-corner {
    background-color: transparent;
  }
}
</style>
