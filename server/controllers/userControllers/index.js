const register = require("./register")
const login = require("./login")
const userInfo = require("./userInfo")
const userList = require("./userList");
const updateUserStatusById = require("./updateUserStatusById");
const deleteUserById = require("./deleteUserById");

module.exports = {
  register,
  login,
  userInfo,
  userList,
  updateUserStatusById,
  deleteUserById,
}