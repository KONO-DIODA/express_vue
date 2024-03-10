const joi = require("joi")  // 第三方插件，用于配置验证规则

// 用户注册登录的表单校验规则
const userName = joi.string().pattern(/^[\s](1,6)$/).required()
const password = joi.string().pattern(/^[\s](6,12)$/).required()
const userCheck = joi.object({
  body: {
    userName,
    password
  }
  // get请求时获取到的是query
  // query: {
  // }
})

module.exports = userCheck