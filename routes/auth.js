const express = require('express');
const authController = require('../controllers/auth');

const router = express.Router()

// POST for the register
router.post('/register', authController.register)

module.exports = router