const express = require('express');
const authController = require('../controllers/auth');

const router = express.Router()

// Home Page Route
router.get('/', authController.isLoggedIn, (req,res) => {
    res.render('index', {
        user: req.user
    })
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
    if ( req.user ) {
        res.render('profile', {
            user: req.user
        })
    } else {
        res.redirect('/login')
    }
})


//  Leaflet(HomePage) Route
router.get('/map', authController.isLoggedIn,  (req,res) => {
    if ( req.user ) {
        res.render('map', {
            user: req.user
        })
    } else {
        res.redirect('/login')
    }
})

module.exports = router