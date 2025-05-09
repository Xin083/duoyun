<template>
  <div class="fps" :style="{ bottom: bottom + 'px' }">
    <div class="fps-content">
      FPS: {{ fps }} <span v-html="getStatusText(fps)"></span>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Fps',

  data() {
    return {
      fps: 0,
      bottom: 10,
    };
  },

  mounted() {
    let frame = 0;
    let lastTime = Date.now();

    const loop = () => {
      const now = Date.now();
      frame++;

      if (now > 1000 + lastTime) {
        const newFps = Math.round((frame * 1000) / (now - lastTime));
        this.fps = newFps;
        frame = 0;
        lastTime = now;
      }

      requestAnimationFrame(loop);
    };

    loop();
  },

  methods: {
    getStatusText(fpsValue) {
      if (fpsValue <= 5) {
        return '<span style="color:#bd0000">卡成ppt🤢</span>';
      } else if (fpsValue <= 15) {
        return '<span style="color:red">电竞级帧率😖</span>';
      } else if (fpsValue <= 25) {
        return '<span style="color:orange">有点难受😨</span>';
      } else if (fpsValue < 35) {
        return '<span style="color:#9338e6">不太流畅🙄</span>';
      } else if (fpsValue <= 45) {
        return '<span style="color:#08b7e4">还不错哦😁</span>';
      } else {
        return '<span style="color:#39c5bb">十分流畅🤣</span>';
      }
    }
  }
};
</script>

<style>
.fps {
  position: fixed;
  right: 30px;
  bottom: 10px;
  z-index: 9999;
}

.fps-content {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 8px;
  background-color: rgba(0, 0, 0, 0.5);
  border-radius: 4px;
  font-size: 16px;
  color: #fff;
}
</style>
