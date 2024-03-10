const db = require("../../config/db")

// 课程删除接口
const deleteClientById = (req, res) => {
  const { id } = req.query;
  const deleteSQL = "update client set del = 1 where id = ?";
  db.query(deleteSQL, id, (err, results) => {
    if (err) {
      return res.send({
        code: 1,
        message: err.message
      });
    }
    res.send({
      code: 0,
      message: "删除成功"
    });
  })
}

module.exports = deleteClientById;