const express = require("express");
const router = express.Router();
const clientController = require("../controllers/clientController");
const expressJoi = require("@escook/express-joi");
const check = require("../utils/check");


// 分页查询
router.get("/list", expressJoi(check.listClientCheck), clientController.listClientInfo);
router.get("/update", expressJoi(check.updateClientById), clientController.updateClientById);
router.get("/delete", expressJoi(check.deleteClientById), clientController.deleteClientById);
router.get("/update/status", expressJoi(check.updateClientStatusById), clientController.updateClientStatusById);

module.exports = router;