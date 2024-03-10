const jwt = require("jsonwebtoken") // 第三方生成token插件
const { jwtSecretKey } = require("../../config/jwtSecretKey")  // 生成token所需的密钥(自定义)

// 用户查询信息
const userInfo = (req, res) => {
  // 获取token
  const token = req.headers.authorization
  // 解析token，获取用户数据
  // split拆分字符串["", "***token***"]，第一个为空字符串
  const userInfo = jwt.verify(token.split("Bearer ")[1], jwtSecretKey)
  res.send({
    code: 0,
    data: {
      name: userInfo.name,
      headImg: userInfo.head_img
    }
  })
}

module.exports = userInfo