const db = require("../../config/db")

// 课程删除接口
const deleteVideoById = (req, res) => {
  let { id } = req.query
  let sql = "update video set del = 1 where id = ?"
  db.query(sql, id, (err, results) => {
    if (err) {
      return res.send({
        code: 1,
        message: err.message
      })
    }
    res.send({
      code: 0,
      message: "删除成功"
    })
  })
}

module.exports = deleteVideoById