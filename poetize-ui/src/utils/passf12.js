let isMaskShown = false; // 全局变量，用于跟踪遮罩层的显示状态
function handleContextMenu(e) {
  e.preventDefault();
  if (isMobile()) {
    //alert('这是在手机浏览器上操作！');
    console.log('这是在手机浏览器上操作！');
  } else {
    //alert('这是在 PC 端浏览器上操作！');
    console.log('这是在 PC 端浏览器上操作！');
    // 禁用右键

      if (!isMaskShown) {
        createMask();
      }


    function createMask() {
      // 创建遮罩层
      const mask = document.createElement('div');
      mask.style.position = 'fixed';
      mask.style.top = '0';
      mask.style.left = '0';
      mask.style.width = '100%';
      mask.style.height = '100%';
      mask.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
      mask.style.zIndex = '9999';

      // 创建关闭按钮
      const closeButton = document.createElement('span');
      closeButton.textContent = 'X';
      closeButton.style.position = 'absolute';
      closeButton.style.top = '10px';
      closeButton.style.right = '10px';
      closeButton.style.color = '#fff';
      closeButton.style.cursor = 'pointer';
      closeButton.style.zIndex = '10000';
      mask.appendChild(closeButton);

      // 创建图片元素
      const img = document.createElement('img');
      img.src = 'https://qiniu.maoye.vip/weijinci/f12.gif'; // 将路径替换为您需要弹出的图片路径
      img.style.position = 'absolute';
      img.style.top = '50%';
      img.style.left = '50%';
      img.style.transform = 'translate(-50%, -50%)';
      mask.appendChild(img);
      document.body.appendChild(mask);

      // 添加点击事件处理程序，点击图片或关闭按钮或遮罩层时关闭弹出的图片
      closeButton.addEventListener('click', (event) => {
        event.stopPropagation();
        document.body.removeChild(mask);
        isMaskShown = false;
      });
      img.addEventListener('click', (event) => {
        event.stopPropagation();
        document.body.removeChild(mask);
        isMaskShown = false;
      });
      mask.addEventListener('click', () => {
        document.body.removeChild(mask);
        isMaskShown = false;
      });

      isMaskShown = true;
    }

    document.addEventListener('contextmenu', handleContextMenu);

  }
}

// 判断是否为 PC 端浏览器
function isPC() {
  const userAgent = navigator.userAgent.toLowerCase();
  const agents = ["windows", "mac", "linux"];
  for (const agent of agents) {
    if (userAgent.indexOf(agent) > -1) {
      return true;
    }
  }
  return false;
}

// 判断是否为手机浏览器
function isMobile() {
  const userAgent = navigator.userAgent.toLowerCase();
  return /mobile|android|iphone|ipad|phone/i.test(userAgent);
}
document.addEventListener('contextmenu', handleContextMenu);

// 禁用F12
document.addEventListener('keydown', (e) => {
  if (e.key === 'F12') {
    e.preventDefault();
    if (!isMaskShown) {
      createMask();
    }
    function createMask() {
      // 创建遮罩层
      const mask = document.createElement('div');
      mask.style.position = 'fixed';
      mask.style.top = '0';
      mask.style.left = '0';
      mask.style.width = '100%';
      mask.style.height = '100%';
      mask.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
      mask.style.zIndex = '9999';

      // 创建关闭按钮
      const closeButton = document.createElement('span');
      closeButton.textContent = 'X';
      closeButton.style.position = 'absolute';
      closeButton.style.top = '10px';
      closeButton.style.right = '10px';
      closeButton.style.color = '#fff';
      closeButton.style.cursor = 'pointer';
      closeButton.style.zIndex = '10000';
      mask.appendChild(closeButton);

      // 创建图片元素
      const img = document.createElement('img');
      img.src = 'https://qiniu.maoye.vip/weijinci/f12.gif'; // 将路径替换为您需要弹出的图片路径
      img.style.position = 'absolute';
      img.style.top = '50%';
      img.style.left = '50%';
      img.style.transform = 'translate(-50%, -50%)';
      mask.appendChild(img);
      document.body.appendChild(mask);

      // 添加点击事件处理程序，点击图片或关闭按钮或遮罩层时关闭弹出的图片
      closeButton.addEventListener('click', (event) => {
        event.stopPropagation();
        document.body.removeChild(mask);
        isMaskShown = false;
      });
      img.addEventListener('click', (event) => {
        event.stopPropagation();
        document.body.removeChild(mask);
        isMaskShown = false;
      });
      mask.addEventListener('click', () => {
        document.body.removeChild(mask);
        isMaskShown = false;
      });

      isMaskShown = true;
    }}
});



