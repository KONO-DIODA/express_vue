const db = require("../../config/db")  // 引入数据库
const bcrypt = require("bcryptjs")  // 第三方加密插件
const jwt = require("jsonwebtoken") // 第三方生成token插件
const { jwtSecretKey } = require("../../config/jwtSecretKey")  // 生成token所需的密钥(自定义)

// 登录接口逻辑
const login = (req, res) => {
  const { userName, password } = req.body

  // if (!userName || !password) {
  //   return res.send({
  //     code: 1,
  //     message: "用户名或密码不能为空！"
  //   })
  // }

  // 查询账号是否存在
  const userSelectSql = "select * from user where name = ? and del = 0";
  db.query(userSelectSql, userName, (err, results) => {
    if (err) {
      // throw new Error("aaaaa");
      return res.send({
        code: 1,
        message: err.message
      })
    }
    if (results.length === 0) {
      return res.send({
        code: 1,
        message: "该账号不存在，点击注册账号！"
      })
    }
    if (results[0].status === 0) {
      return res.send({
        code: 1,
        message: "账号已被禁用，请联系管理员"
      })
    }
    // 判断密码是否正确
    const compareState = bcrypt.compareSync(password, results[0].pwd) // 明文和密文
    if (!compareState) {
      return res.send({
        code: 1,
        message: "密码错误！"
      })
    }
    // 用户信息，数据库查询返回的result，其中pwd需要设置为空，不能参与token生成
    const user = { ...results[0], pwd: "" }
    const token = jwt.sign(user, jwtSecretKey, { expiresIn: "2h" }) // expiresIn: token失效时间
    res.send({
      code: 0,
      message: "登录成功",
      token: "Bearer " + token,  // 默认写法，一种规范，前面插入"Bearer "
      power: results[0].power, // 权限
    })
  })
}

module.exports = login