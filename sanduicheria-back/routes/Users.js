const express = require('express');
const router = express.Router();

const verifyToken = require('../controllers/common');
const usersController = require('../controllers/UsersController')

router.post('/usersCreate', verifyToken, usersController.createUser)
router.get('/getUsers', usersController.getUsers)
router.post('/usersLogin', usersController.usersLogin)

module.exports = router;