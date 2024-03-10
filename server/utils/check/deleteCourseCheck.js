const joi = require("joi")  // 第三方插件，用于配置验证规则

// 课程删除参数的校验规则
const id = joi.number().integer().required()
const deleteCourseCheck = {
  query: {
    id
  }
}

module.exports = deleteCourseCheck