const db = require("../../config/db");

const updateUserStatusById = (req, res) => {
  const { id, status } = req.query;

  const updateSQL = "update user set status = ? where id = ?";
  const arr = [Number(status), Number(id)];
  db.query(updateSQL, arr, (err, results) => {
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

module.exports = updateUserStatusById;