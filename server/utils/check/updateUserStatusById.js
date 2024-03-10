const joi = require("joi")  // 第三方插件，用于配置验证规则

const id = joi.number().integer().required();  // number类型，不可为小数，必传
const status = joi.number().integer();
const updateUserStatusById = {
  query: {
    id,
    status
  }
};

module.exports = updateUserStatusById;