const express = require('express');
const authController = require('../controllers/auth');

const router = express.Router()

// POST for the register
router.post('/register', authController.register)

// POST for the login
router.post('/login', authController.login)

module.exports = router