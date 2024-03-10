const joi = require("joi");

// 接口参数的校验规则
const type = joi.number().required();  // string类型，required必传
const page = joi.number().integer().required();  // number类型，不可为小数，必传
const size = joi.number().integer().required();
const listClientCheck = {
  query: {
    type,
    page,
    size
  }
};

module.exports = listClientCheck;