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
            local_user: JSON.stringify(req.user),
            user: req.user
        })
    } else {
        res.redirect('/login')
    }
})

// User Visit History Route
router.get('/visit_history', authController.isLoggedIn,  (req,res) => {
    if ( req.user ) {
        var userid = req.user.id;
        db.query('SELECT name_of_pois,Timestamp from pois_visit where user_id = ?', userid, function(error, results, feilds) {
            if (error) {
                console.log("error ocurred while getting user details of " + userid, error);
                res.send({
                    "code": 400,
                    "failed": "error ocurred"
                });
            } else {
                res.render("visit_history",{visits:results});
            }
        });
    } else {
        res.redirect('/login')
    }
})

// User Case History Route
router.get('/case_history', authController.isLoggedIn,  (req,res) => {
    if ( req.user ) {
        var username = req.user.username;
        db.query('SELECT time from confirmed_Case where username = ?', username, function(error, results, fields) {
            if (error) {
                console.log("error ocurred while getting user details of " + username, error);
                res.send({
                    "code": 400,
                    "failed": "error ocurred"
                });
            } else {
                res.render("case_history",{cases:results});
            }
        });
    } else {
        res.redirect('/login')
    }
})


//  Leaflet(HomePage) Route
router.get('/map', authController.isLoggedIn, (req,res) => {
    if ( req.user.admin == 0 ) {
        var renderUser = {
            user: JSON.stringify(req.user)
          }
        res.render('map', renderUser)

    } else {
        res.redirect('/login')
    }
})

// Admin HomePage Route
router.get('/admin', authController.isLoggedIn, (req,res) => {
    if ( req.user.admin == 1 ) {
        var renderUser = {
            user: JSON.stringify(req.user)
          }
        res.render('admin', renderUser)

    } else {
        res.redirect('/login')
    }
})

// Admin HomePage Route
router.get('/admin_charts', authController.isLoggedIn, (req,res) => {
    if ( req.user.admin == 1 ) {
        var renderUser = {
            user: JSON.stringify(req.user)
          }
        res.render('admin_charts', renderUser)

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