const joi = require("joi")  // 第三方插件，用于配置验证规则

// 课程修改参数的校验规则
const title = joi.string()
const price = joi.number()
const id = joi.number().integer().required()
const updateCourseCheck = {
  query: {
    title,
    price,
    id
  }
}

module.exports = updateCourseCheck