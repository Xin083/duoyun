<template>
  <div>
    <div class="row-pad">
      <h1></h1>
    </div>
    <div id="share-2"></div>
  </div>
</template>

<script>
import $ from 'jquery';
import '../../assets/share/jquery.share.min';
import '../../assets/share/share.min.css'

export default {
  mounted() {
    $('#share-1').share();
    $('#share-2').share({ sites: ['qzone', 'qq', 'weibo', 'wechat'] });
    $('#share-3').share();
    $('#share-4').share();
  },
};
</script>

<style scoped>
.row {
  padding: 20px 0 0 20px;
}
.row-pad {
  padding: 20px 0 0 60px;
}
</style>
