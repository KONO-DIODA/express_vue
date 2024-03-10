const express = require("express")
const router = express.Router()

const userController = require("../controllers/userControllers")
const expressJoi = require("@escook/express-joi") // 第三方插件，(按照配置的规则)自动校验数据
const check = require("../utils/check")

// 用户注册接口
// 局部中间件，自动校验数据(配置的规则)
router.post("/register", expressJoi(check.userCheck), userController.register)
// 用户登录接口
router.post("/login", expressJoi(check.userCheck), userController.login)
// 用户信息查询接口
router.get("/userInfo", userController.userInfo)

router.get("/userList", userController.userList);

router.get("/delete", expressJoi(check.deleteUserById), userController.deleteUserById);

router.get("/update/status", expressJoi(check.updateUserStatusById), userController.updateUserStatusById);

module.exports = router;