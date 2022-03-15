const express = require('express');
const path = require('path');

const router = express.Router()

// Home Page Route
router.get('/', (req,res) => {
    res.sendFile(path.join(__dirname, '..' , '/views/index.html'))
})


// Register Route
router.get('/register', (req,res) => {
    res.sendFile(path.join(__dirname, '..', '/views/register.html'))
})

module.exports = router