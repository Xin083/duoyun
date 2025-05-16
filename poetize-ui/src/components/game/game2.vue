<template>
    <div>
      <div class="game3">
        <iframe src="http://game.eean.cn/game3/" frameborder="0" style="width: 100%;height: 920px"></iframe>
      </div>
      <my-footer />
    </div>
  
  </template>
  
  <script>
  
  const myFooter = () => import( "../common/myFooter");
  export default {
    components: {
      myFooter
    },
    name: "game2"
  }
  </script>
  
  <style scoped>
  
  </style>
  