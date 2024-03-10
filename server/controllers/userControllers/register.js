const db = require("../../config/db")  // 引入数据库
const bcrypt = require("bcryptjs")  // 第三方加密插件

// 注册接口逻辑
const register = (req, res) => {
  // 用户名或者密码判空的校验
  let { userName, password } = req.body
  if (!userName || !password) {
    return res.send({
      code: 1,
      message: "用户名或密码不能为空！"
    })
  }
  // 用户名查重
  const userSelectSql = "select * from user where name = ? and del = 0";
  db.query(userSelectSql, userName, (err, results) => {
    if (err) {
      return res.send({
        code: 1,
        message: err.message
      })
    }
    // 判断用户是否在数据库中
    // console.log(results)
    if (results.length > 0) {
      return res.send({
        code: 1,
        message: "该用户名已经存在"
      })
    }
    // 用户密码加密
    const passwordD = bcrypt.hashSync(password, 10) // 加密次数10
    // 随机生成用户头像
    const imgList = [
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/10.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/11.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/12.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/13.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/14.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/15.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/16.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/17.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/18.jpeg",
      "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/19.jpeg"
    ]
    const num = Math.floor(Math.random() * 10)
    const headImg = imgList[num]
    // 用户数据插入数据库
    const userInsertSql = "insert into user (name, pwd, head_img) values (?, ?, ?)"
    db.query(userInsertSql, [userName, passwordD, headImg], (err, results) => {
      if (err) {
        return res.send({
          code: 1,
          message: err.message
        })
      }
      res.send({
        code: 0,
        message: "注册成功"
      })
    })
  })
}

module.exports = register