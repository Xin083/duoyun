<template>
  <div>
    <div class="flex-container">
<!-- 栏目标签-->
      <div>
<!--        <el-button  class="button-new-tag" size="small" >分享</el-button>-->
        <el-button type="primary" icon="el-icon-share">文章分享</el-button>
      </div>
      <div class="box">
<!--        <div id="share-qrcode" title="二维码分享" @click="toggleQRCode('qrcode')"></div>-->
<!--        <div id="share-douban" title="豆瓣分享" @click="toggleQRCode('douban')"></div>-->
<!--        <div id="share-qzone" title="QQ空间分享" @click="toggleQRCode('qzone')"></div>-->
<!--        <div id="share-sina" title="新浪微博分享" @click="toggleQRCode('sina')"></div>-->
<!--        <div id="share-qq" title="QQ好友分享" @click="toggleQRCode('qq')"></div>-->
<!--        <share></share>-->
        <div id="s_share">
          <div id="share-2"></div>
        </div>
      </div>
    </div>

    <div class="wrap" >
      <div class="cont">
        <canvas id="canvas" ref="canvas" v-show="showQRCode"></canvas>
        <div class="text" v-show="showQRCode">手机扫一扫</div>
      </div>
    </div>

  </div>
</template>

<script>

import QRCode from 'qrcode'
import '../../assets/share/jquery.share.min';
import '../../assets/share/share.min.css'
import $ from "jquery";
//import '../../assets/share/css/jsmodern-1.1.1.min.css';
//import '../../assets/share/js/jsmodern-1.1.1.min';
//import '../../assets/share/js/jquery-3.2.1.min';
const share = () => import("../share/share")
export default {
  components: {
    //share
  },
  data() {
    return {
      visible: false,
      showQRCode: false,
      shareqrcode:'',
      labelId: '',
      labelName: " "
    };
  },
  mounted() {
    //this.show();
    $('#share-1').share();
    $('#share-2').share({ sites: ['wechat','qq', 'qzone','weibo'] });
    $('#share-3').share();
    $('#share-4').share();
  },
  created() {

  },
  methods: {
    // initializeShare() {
    //   jsModern.share({
    //     qrcode: "#share-qrcode",
    //     douban: "#share-douban",
    //     qzone: "#share-qzone",
    //     sina: "#share-sina",
    //     qq: "#share-qq"
    //   });
    // },


    toggleQRCode(type) {
      // this.showQRCode = !this.showQRCode;
      // if (this.showQRCode) {
      //   this.show(type);
      // }

      //获取当前栏目的id
      switch(type) {
        case 'qrcode':
          this.showQRCode = !this.showQRCode;
          this.show(type);
          break;
        case 'douban':
          // 处理豆瓣分享逻辑
          this.showQRCode = !this.showQRCode;
          this.show(type);
          break;
        case 'qzone':
          // 处理QQ空间分享逻辑
          this.showQRCode = !this.showQRCode;
          this.show(type);
          break;
        case 'sina':
          // 处理新浪微博分享逻辑
          this.showQRCode = !this.showQRCode;
          this.show(type);
          break;
        case 'qq':
          // 处理QQ好友分享逻辑
          this.showQRCode = !this.showQRCode;
          this.show(type);
          break;
        default:
          break;
      }
    },
    show(type) {
      const canvas = this.$refs.canvas;
      const data = '包含的信息';

      this.shareqrcode=QRCode.toCanvas(canvas, data, (error) => {
        if (error) {
          console.error(error);
        } else {
          //this.shareqrcode = canvas.toDataURL();
          console.log('success');
        }
        //this.shareqrcode = canvas.toDataURL();
        //console.log(this.shareqrcode);
      });
  },


  }
};
</script>

<style scoped>
.row {
  padding: 20px 0 0 20px;
}
.row-pad {
  padding: 20px 0 0 60px;
}
.box {
  /*width: 250px;*/
  width: auto;
  height: 30px;
  /*margin: 0 auto; */  /*100px*/
  transform: scale(1.1);
  float: right;
}

.box > div {
  width: 30px;
  height: 30px;
  float: left;
  cursor: pointer;
  border-radius: 4px;
  background-size: contain;
  margin: 0 5px;
}
#share-qrcode1 {
  background-image: url(../../assets/images/wechat.png);
}
#share-qrcode {
  background-image: url(../../assets/images/wechat.png);
}

#share-douban {
  background-image: url(../../assets/images/db.png);
}

#share-qzone {
  background-image: url(../../assets/images/qzone.png);
}

#share-sina {
  background-image: url(../../assets/images/sina.png);
}

#share-qq {
  background-image: url(../../assets/images/qq.png);
}
.flex-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.wrap{
  text-align: center;
  align-items: center;
}

/*tag*/
.el-tag + .el-tag {
  margin-left: 10px;
}
.button-new-tag {
  margin-left: 0px;
  height: 32px;
  line-height: 30px;
  padding-top: 0;
  padding-bottom: 0;
  color: #6ec0a9;
  margin-top: 10px;
}
#s_share{
  width: auto;
  height: auto;
  float: right;
}
@media (max-width: 1199){
  /* <=1199px的设备 */
  .box {
    width: auto;
    height: 30px;
    transform: scale(1.1);
    float: right;
  }

  .box > div {
    width: 30px;
    height: 30px;
    float: left;
    cursor: pointer;
    border-radius: 4px;
    background-size: contain;
    margin: 0 10px;
  }
  #s_share{
    width: auto;
    height: auto;
    float: right;
  }
}

@media (max-width: 991px){
  /* <=991px的设备 */

  .box {
    width: auto;
    height: 30px;
    transform: scale(1.1);
    float: right;
  }

  .box > div {
    width: 30px;
    height: 30px;
    float: left;
    cursor: pointer;
    border-radius: 4px;
    background-size: contain;
    margin: 0 10px;
  }
  #s_share{
    width: auto;
    height: auto;
    float: right;
  }

}

@media (max-width: 767px){
  /* <=768px的设备 */
  .box {
    width: auto;
    height: 30px;
    transform: scale(1.1);
    float: right;
  }

  .box > div {
    width: 30px;
    height: 30px;
    float: left;
    cursor: pointer;
    border-radius: 4px;
    background-size: contain;
    margin: 0 5px;
  }
  #s_share{
    width: auto;
    height: auto;
    float: right;
  }
}

</style>
