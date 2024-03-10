# 前后端全栈-JavaScript

## 项目结构
```
front：前端部分
server：后端部分
sql：数据库
```
## Project setup
```
1.分别开启两个终端窗口

cd front; npm install; npm run serve;

cd server; npm install; node app.js; (若安装nodemon，也可执行nodemon app.js，本质就是定时循环执行node app.js)

2.数据库

提前安装好mysql（也可使用图形化工具navicat等）

执行.sql文件，会自动创建对应的数据库

```

### Compiles and hot-reloads for development
```
npm run serve
```
```
node app.js
```

### Compiles and minifies for production
```
npm run build
```

### 项目内容
#### 前端Vue3
```
- 缓存处理
- 登陆注册
- 单页面应用
  需要特别注意，退出登录后应该清除store中的所有数据，否则在不刷新/不关闭当前窗口时再次登录会继续使用之前的store。pinia和Vuex默认情况下数据不可持久化，但可对其进行配置（详情自行查询）
- 懒加载、动态导入
  - 懒加载：@import，使用vue-router监听路由hash的变化，加载对应的组件（此处若项目中有常用组件可设置keep-alive；对于图片也可使用懒加载-自行了解；相关优化：虚拟列表、预加载）
  - 动态导入：仅对UI组件库的引用部分打包（减少打包后的体积，可了解treeshaking，webpack、rollup、vite相关知识，此类工程化工具的相关配置）
```
#### 后端Express
```
- jwt
- 跨域问题
  - cors，对有效域进行配置；
  - 前端代理，nginx服务器（负载均衡、反向代理、...）；
- 动态sql、分页查询（可了解mybatis的xml写法）
```
