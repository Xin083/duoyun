const webpack = require('webpack')
module.exports = {
  devServer: {
    port: 80
  },
  productionSourceMap: false,

  configureWebpack: {
    plugins: [
      new webpack.ProvidePlugin({ //配置插件全局使用 jquery
        $: 'jquery',
        jQuery: 'jquery',
        'windows.jQuery': 'jquery'
      })
    ]
  }
}
