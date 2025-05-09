<template>
  <div id="app">
    <!-- 音乐播放器 -->
    <div id="aplayer"></div>

    <!-- 底部音乐控制栏 -->
    <div class="music-control" style="display: none;">
      <div class="music-info">
        <span id="music-name"></span>
      </div>
      <div class="music-buttons" style="display: none;">
        <button @click="playLast"><i class="fa-solid fa-step-backward">⏮️</i></button>
        <button @click="togglePlay"><i :class="playIcon"></i>▶️</button>
        <button @click="playNext"><i class="fa-solid fa-step-forward">⏭️</i></button>
      </div>
    </div>
  </div>
</template>

<script>
import APlayer from 'aplayer'
import 'aplayer/dist/APlayer.min.css'
import '../../assets/css/music.css'
//import '../assets/css/APlayer.min.css';
//import '../utils/APlayer.min.js';
// import APlayer from 'aplayer';
import axios from 'axios';

export default {
  data() {
    return {
      ap: null,
      playIcon: 'fa-solid fa-play'
    }
  },
  methods: {
    playLast() {
      this.ap.skipBack();
      this.ap.on('play', () => {
        const music = `${currentMusic.title} - ${currentMusic.author}`;
        iziToast.info({
          timeout: 4000,
          icon: "fa-solid fa-circle-play",
          displayMode: 'replace',
          message: music
        });
        $("#music-name").text(`${currentMusic.title} - ${currentMusic.author}`);
        this.playIcon = 'fa-solid fa-pause';
      });

      this.ap.on('pause', () => {
        this.playIcon = 'fa-solid fa-play';
      });

    },
    handlePlay() {
      const music = this.$refs.aplayer.$el.querySelector('.aplayer-title').textContent + this.$refs.aplayer.$el.querySelector('.aplayer-author').textContent;
      iziToast.info({
        timeout: 4000,
        icon: "fa-solid fa-circle-play",
        displayMode: 'replace',
        message: music
      });
      this.playIcon = 'fa-solid fa-pause';
      this.musicName = music;
      if (window.innerWidth >= 990) {
        this.showPower = false;
        this.showLrc = true;
      }
    },
    togglePlay() {
      this.ap.toggle();
    },
    playNext() {
      this.ap.skipForward();
    }
  },
  mounted() {

    let server = "netease"; //netease: 网易云音乐; tencent: QQ音乐; kugou: 酷狗音乐; xiami: 虾米; kuwo: 酷我
    let type = "playlist"; //song: 单曲; playlist: 歌单; album: 唱片
    let id = "7452421335"; //封面 ID / 单曲 ID / 歌单 ID


    const apiUrl = `https://api-meting.imsyy.top/api?server=${server}&type=${type}&id=${id}`;

    fetch(apiUrl)
      .then(response => response.json())
      .then(data => {
        this.ap = new APlayer({
          container: document.getElementById('aplayer'),
          order: 'random',
          preload: 'auto',
          listMaxHeight: '336px',
          fixed: false, // 不开启吸底模式
          float: true,
          volume: 0.5,
          mutex: true,
          lrcType: 3,
          audio: data,
        });

        /* 底栏歌词 */
        setInterval(() => {
          $("#music-name").html("<span class='lrc-show'><svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' width='18' height='18'><path fill='none' d='M0 0h24v24H0z'/><path d='M12 13.535V3h8v3h-6v11a4 4 0 1 1-2-3.465z' fill='rgba(255,255,255,1)'/></svg>&nbsp;" + $(".aplayer-lrc-current").text() + "&nbsp;<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' width='18' height='18'><path fill='none' d='M0 0h24v24H0z'/><path d='M12 13.535V3h8v3h-6v11a4 4 0 1 1-2-3.465z' fill='rgba(255,255,255,1)'/></svg></span>");
        }, 500);

        /* 音乐通知及控制 */
        this.ap.on('play', () => {
          const currentMusic = this.ap.list.current;
          this.playIcon = 'fa-solid fa-pause';
        });

        this.ap.on('pause', () => {
          this.playIcon = 'fa-solid fa-play';
        });

        window.onkeydown = (e) => {
          if (e.keyCode === 32) {
            this.ap.toggle();
          }
        };
      })
  }
}
</script>

<style>

.music-control {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 60px;
  background-color: rgba(231，221，221，0);
  display: flex;
  align-items: center;
  justify-content: space-around;
}
.music-info {
  font-size: 30px;
  /* color: linear-gradient(to right, #00FFFF, #FF00FF, #00FF00);
  background: linear-gradient(to right, #00FFFF, #FF00FF, #00FF00); */
  background-image: linear-gradient(to right, #fe0101, #00ff0d);
  color: transparent;
  -webkit-background-clip: text;

  text-align: center;
  z-index: 9999;
  position: absolute;
  left: 0;
  right: 0;
  margin: auto;
}

</style>
