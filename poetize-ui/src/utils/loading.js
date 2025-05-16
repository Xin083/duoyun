import { Loading } from 'element-ui';

var loading = null;

export function loadingOpen(text){
  let options = {
    lock: true,
    text: text || "loading...",
    spinner: 'el-icon-loading',
    background: 'rgba(0, 0, 0, 0.7)'
  }
  loading = Loading.service(options);
}


export function loadingClose(){
  if(loading){
    loading.close();
  }
}
