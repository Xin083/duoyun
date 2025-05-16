<template>
  <div class="myFooter-wrap" v-show="showFooter">
    <div class="myFooter">
      <div class="footer-title">{{$store.state.webInfo.footer}}</div>
      <div class="icp">
        <div>
          <span style="font-size: 15px">本站由云朵所有：</span><a style="font-size: 15px" href="https://beian.miit.gov.cn/" target="_blank">粤 I C P 备 2 0 2 5 4 1 6 6 8 7 号 - 1</a>
        </div>
        <div>
          <a style="font-size: 13px" href="http://yunduo.me" target="_blank">Copyright © 2025 - 2027 yunduo.me 云朵呀 🌸</a>
        </div>
        <div>
          <a style="font-size: 11px" href="http://yunduo.me" target="_blank"> All Rights Reserved. </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    props: {
      showFooter: {
        type: Boolean,
        default: true
      }
    },
    data() {
      return {}
    },
    created() {
    }
  }
</script>

<style scoped>
  .myFooter-wrap {
    user-select: none;
    animation: hideToShow 2s;
  }

  .myFooter {
    border-radius: 1.5rem 1.5rem 0 0;
    background: var(--gradientBG);
    text-align: center;
    color: var(--white);
    background-size: 300% 300%;
    animation: gradientBG 10s ease infinite;
  }

  .footer-title {
    padding-top: 10px;
    font-size: 16px;
  }

  .icp, .icp a {
    color: var(--maxGreyFont);
    font-size: 13px;
  }

  .icp {
    padding-top: 10px;
    padding-bottom: 10px;
  }

  .icp a {
    text-decoration: none;
    transition: all 0.3s;
  }

  .icp a:hover {
    color: var(--themeBackground);
  }

</style>
