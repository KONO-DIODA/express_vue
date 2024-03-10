const db = require("../../config/db");

const updateClientStatusById = (req, res) => {
  const { id, status } = req.query;

  const updateSQL = "update client set status = ? where id = ?";
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

module.exports = updateClientStatusById;