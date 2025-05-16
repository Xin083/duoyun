import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui'
import http from './utils/request'
import common from './utils/common'
import constant from './utils/constant'
import mavonEditor from 'mavon-editor'
//引入js
import $ from 'jquery';
//import './utils/live2d'   //看板娘
import './utils/title'
//import './utils/passf12' //禁止F12和右键
//引入css
import './assets/css/animation.css'
import './assets/css/index.css'
import './assets/css/tocbot.css'
import './assets/css/color.css'
import './assets/css/markdown-highlight.css'
import './assets/css/font-awesome.min.css'
import 'mavon-editor/dist/css/index.css'

//加载动画css
import './assets/css/free.css'

import {vueBaberrage} from 'vue-baberrage'

Vue.use(ElementUI)
Vue.use(vueBaberrage)
Vue.use(mavonEditor)

//loading动画
// 引入
import {loadingOpen,loadingClose} from './utils/loading';

// 挂载方法
Vue.prototype.loadingOpen = loadingOpen
Vue.prototype.loadingClose = loadingClose
// 挂载方法
Vue.prototype.loadingOpen = loadingOpen
Vue.prototype.loadingClose = loadingClose


Vue.prototype.$http = http
Vue.prototype.$common = common
Vue.prototype.$constant = constant

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
