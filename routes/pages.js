const express = require('express');
const authController = require('../controllers/auth');
const mysql = require("mysql")
const router = express.Router()

// Database connection
const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME
})

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
router.get('/map', authController.isLoggedIn, (req,res) => {
    if ( req.user ) {
        var renderUser = {
            user: JSON.stringify(req.user)
          }
        res.render('map', renderUser)

    } else {
        res.redirect('/login')
    }
})

// // /getUsersData
// router.get('/getData', function (req, res, next) {
//     db.query('SELECT name FROM pois', function (err, row) {
//       if (err) {
//         console.log('err loading data');
//       } else {
//         console.log('tabl laoding success');
//         console.log(row);
//         res.send(row);
//       }
//     });
//   });

module.exports = router