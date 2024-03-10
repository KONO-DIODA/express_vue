const joi = require("joi")  // 第三方插件，用于配置验证规则

// 课程查询参数的校验规则
const category = joi.string().required()  // string类型，required必传
const page = joi.number().integer().required()  // number类型，不可为小数，必传
const size = joi.number().integer().required()
const findCourseCheck = {
  query: {
    category,
    page,
    size
  }
}

module.exports = findCourseCheck