const db = require("../../config/db");

const listClientInfo = (req, res) => {
  let { type, page, size } = req.query;
  page = (page - 1) * size;

  const selectSQL = "select * from client where del = 0 and type = ? order by id limit ?, ?";
  const totalSQL = "select count(*) as total from client where del = 0 and type = ?";
  db.query(selectSQL, [Number(type), Number(page), Number(size)], (err, pageResults) => {
    if (err) {
      return res.send({
        code: 1,
        message: err.message
      });
    }

    db.query(totalSQL, Number(type), (err, totalResults) => {
      if (err) {
        return res.send({
          code: 1,
          message: err.message
        });
      }
      res.send({
        code: 0,
        data: {
          list: pageResults,
          total: totalResults
        }
      });
    });

  });
};

module.exports = listClientInfo;