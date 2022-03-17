const express = require('express');
const authController = require('../controllers/auth');

const router = express.Router()

// POST for the register
router.post('/register', authController.register)

// POST for the login
router.post('/login', authController.login)

// GET for the logout
router.get('/logout', authController.logout)

module.exports = router