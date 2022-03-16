const express = require('express');
const authController = require('../controllers/auth');

const router = express.Router()

// Home Page Route
router.get('/', (req,res) => {
    res.render('index')
})


// Register Route
router.get('/register', (req,res) => {
    res.render('register')
})

// Login Route
router.get('/login', (req,res) => {
    res.render('login')
})

// Profile Route
router.get('/profile', authController.isLoggedIn,  (req,res) => {
    res.render('profile')
})

module.exports = router