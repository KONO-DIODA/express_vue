// nodemon --inspect xxx  (进行谷歌浏览器调试)
const express = require("express")
const app = express()


// (需要在路由模块前)
// 解析post请求的body数据
const bodyParser = require("body-parser")
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))

// 跨域请求配置
// const cors = require("cors")
// app.use(cors())

// 解析token检验是否正确，哪些接口需要token校验
const expressJwt = require("express-jwt")
const { jwtSecretKey } = require("./config/jwtSecretKey")
app.use(
  expressJwt({ secret: jwtSecretKey, algorithms: ["HS256"] }).unless({
    path: ["/api/v1/user/register", "/api/v1/user/login"] // unless是不需要token验证的接口
  })
)

// 用户相关接口
const userRouter = require("./router/user")
app.use("/api/v1/user", userRouter)
const courseRouter = require("./router/course")
app.use("/api/v1/course", courseRouter)
const clientRouter = require("./router/client");
app.use("/api/v1/client", clientRouter);


// 错误中间件(自定义)
const joi = require("joi")
app.use((err, req, res, next) => {
  // joi表单的用户信息校验失败
  if (err instanceof joi.ValidationError) {
    return res.send({
      code: 1,
      message: err.message
    })
  }
  if (err.name === "UnauthorizedError") {
    return res.send({
      code: 1,
      message: "身份认证失败"
    })
  }
  // 其他错误
  res.send({
    code: 1,
    message: err.message
  })
})


/**
 * 此处只是开启服务，需要请求响应前端才能打开http://127.0.0.1:7070
 * 部署在云服务器上默认80端口
 */
app.listen(7070, () => {
  console.log("服务已启动http://127.0.0.1:7070")
})
