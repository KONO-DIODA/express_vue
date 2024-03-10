const express = require("express")
const router = express.Router()
const courseController = require("../controllers/courseControllers")
const expressJoi = require("@escook/express-joi")
const check = require("../utils/check")

// 课程查询接口
router.get("/find", expressJoi(check.findCourseCheck), courseController.listVideo)

// 课程修改接口
router.get("/update", expressJoi(check.updateCourseCheck), courseController.updateVideoById)

// 课程删除接口
router.get("/delete", expressJoi(check.deleteCourseCheck), courseController.deleteVideoById)


module.exports = router