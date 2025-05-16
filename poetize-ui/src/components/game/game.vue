<template>
    <div>

      <el-dialog
        title="小游戏"
        :visible.sync="disGame"
        @close="handleClose"
        :modal-append-to-body="false"
        width="auto">

        <div style="text-align: center;">
          <iframe :src="game"
                  style="width: 100%;height: 900px"
          ></iframe>
        </div>
      </el-dialog>


    </div>
  </template>

  <script>

  //const myFooter = () => import( "../common/myFooter");
  export default {
    data(){
      return {
        disGame: false,
        PcGameList:[1,2],
        game: 'https://games.maoye.vip',
      }
    },
    components: {
     // myFooter
    },

    name: "game",

    created() {
      this.disGame = true
      //console.log(this.PcGameList.length);
      // 随机获取一个游戏
      let index = Math.floor(Math.random() * this.PcGameList.length);
      this.game = 'https://games.maoye.vip';
    },
    methods: {
      handleClose() {
        // 在这里编写关闭事件的操作
        this.$router.push({path: '/'});
      }

    },

  }
  </script>

  <style scoped>
  .top{
    width: 100%;
    height: 100%;
    background: #fff;
    position: relative;
  }
  </style>
