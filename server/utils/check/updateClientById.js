const joi = require("joi")  // 第三方插件，用于配置验证规则

const id = joi.number().integer().required();  // number类型，不可为小数，必传
const name = joi.string();
const sex = joi.string();
const card_number = joi.string();
const type = joi.number().integer();
const books = joi.string();
const updateClientById = {
  query: {
    id,
    name,
    sex,
    card_number,
    type,
    books
  }
};

module.exports = updateClientById;