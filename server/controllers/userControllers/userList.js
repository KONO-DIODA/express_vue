const db = require("../../config/db");

const userList = (req, res) => {
  const listSQL = "select * from user where del = 0 and power = 0";
  db.query(listSQL, (err, results)=> {
    if (err) {
      return res.send({
        code: 1,
        message: err.message
      });
    }
    res.send({
      code: 0,
      data: {
        list: results
      }
    });
  })
};

module.exports = userList;