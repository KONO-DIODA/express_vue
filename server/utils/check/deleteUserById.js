const joi = require("joi")  // 第三方插件，用于配置验证规则

const id = joi.number().integer().required();
const deleteUserById = {
  query: {
    id
  }
};

module.exports = deleteUserById;