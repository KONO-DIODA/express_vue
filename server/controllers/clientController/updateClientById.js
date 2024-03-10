const db = require("../../config/db");

const updateClientById = (req, res) => {
  const { id, name, sex, card_number, type, books } = req.query;

  const updateSQL = "update client set name = ?, sex = ?, card_number = ?, type = ?, books = ? where id = ?";
  const arr = [String(name), String(sex), String(card_number), Number(type), String(books), Number(id)];
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

module.exports = updateClientById;