const db = require("../../config/db")

// 课程查询接口
const listVideo = (req, res) => {
  // 获取前端的参数
  let { category, page, size } = req.query
  page = (page - 1) * size
  // 查询课程列表sql
  const pageSql = "select * from video where del = 0 and category = ? order by id limit ?, ?"
  // 查询课程总数sql
  const totalSql = "select count(*) as total from video where del = 0 and category = ?"
  db.query(pageSql, [category, Number(page), Number(size)], (err, resPage) => {
    if (err) {
      return res.send({
        code: 1,
        message: err.message
      })
    }
    db.query(totalSql, category, (err, resTotal) => {
      if (err) {
        return res.send({
          code: 1,
          message: err.message
        })
      }
      res.send({
        code: 0,
        data: {
          list: resPage,
          total: resTotal
        }
      })
    })
  })
}

module.exports = listVideo