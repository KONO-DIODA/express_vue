const mysql = require("mysql")

// 创建连接池
const db = mysql.createPool({
  host: "127.0.0.1",
  user: "root",
  password: "123456",
  database: "express"
})

module.exports = db