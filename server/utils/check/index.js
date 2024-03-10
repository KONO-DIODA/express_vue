const userCheck = require("./userCheck")
const findCourseCheck = require("./findCourseCheck")
const updateCourseCheck = require("./updateCourseCheck")
const deleteCourseCheck = require("./deleteCourseCheck")
const listClientCheck = require("./listClientCheck");
const updateClientById = require("./updateClientById");
const deleteClientById = require("./deleteClientById");
const updateClientStatusById = require("./updateClientStatusById");
const deleteUserById = require("./deleteUserById");
const updateUserStatusById = require("./updateUserStatusById");

module.exports = {
  userCheck,
  findCourseCheck,
  updateCourseCheck,
  deleteCourseCheck,
  listClientCheck,
  updateClientById,
  deleteClientById,
  updateClientStatusById,
  deleteUserById,
  updateUserStatusById,
}