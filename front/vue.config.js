const { defineConfig } = require('@vue/cli-service')
const AutoImport = require('unplugin-auto-import/webpack')
const Components = require('unplugin-vue-components/webpack')
const { ElementPlusResolver } = require('unplugin-vue-components/resolvers')

module.exports = defineConfig({
  lintOnSave: false,  // 关闭ESlint检验
  transpileDependencies: true,
  configureWebpack: {
    plugins: [
      AutoImport({
        resolvers: [ElementPlusResolver()],
      }),
      Components({
        resolvers: [ElementPlusResolver()],
      }),
    ]
  },
  // 正向代理：
  // devServer: {
  //   proxy: {
  //     '/api': {
  //       target: 'http://127.0.0.1:7070',
  //       changeOrigin: true,
  //       ws: false,
  //       pathRewrite: {
  //         '^/api/': ''
  //       }
  //     }
  //   }
  // }
})