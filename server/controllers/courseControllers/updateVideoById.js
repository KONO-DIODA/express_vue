const db = require("../../config/db")

// 课程修改接口
const updateVideoById = (req, res) => {
  let { title, price, id } = req.query
  let sql = "update video set "
  let arr = []
  // 同时修改title,price
  if (title && price) {
    sql += "title = ?, price = ? where id = ?"
    arr = [title, Number(price), Number(id)]
  } else if (title) {
    sql += "title = ? where id = ?"
    arr = [title, Number(id)]
  } else if (price) {
    sql += "price = ? where id = ?"
    arr = [Number(price), Number(id)]
  }
  db.query(sql, arr, (err, results) => {
    if (err) {
      return res.send({
        code: 1,
        message: err.message
      })
    }
    res.send({
      code: 0,
      message: "修改成功"
    })
  })
}

module.exports = updateVideoById