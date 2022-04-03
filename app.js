const express = require("express")
const path = require('path')
const mysql = require("mysql")
const dotenv = require("dotenv")
const cookieParser = require("cookie-parser")
const fs = require ('fs')

dotenv.config({ path: './.env'})

// Using express for our server
const app = express()



// Database connection
const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME
})

const publicDirectory = path.join(__dirname, './public' )
app.use(express.static(publicDirectory))

// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded({ extended: false }))
// Parse JSON bodies (as sent by API clients)
app.use(express.json())
app.use(cookieParser())

// View engine. HandleBars
app.set('view engine', 'hbs')


// Connect to database
db.connect( (error) => {
    if(error) {
        console.log(error)
    } else {
        console.log("MYSQL Connected...")
    }
})

// Define Routes
app.use('/', require('./routes/pages'))
app.use('/auth', require('./routes/auth'))

app.listen(5000, () => {
    console.log("Server started on Port 5000")
})

//Load JSON DATA to MySql

fs.readFile('../points/starting_pois.json', 'utf-8', (err, jsonString) => {
    if (err) {
        console.log(err)
    } else {
       try {           
            const data = JSON.parse(jsonString)
            // Insert Data To Pois Table
            let sql = `insert ignore into pois(id,name,address,lat,lng,rating,rating_n) values ?`;
            let values = [];
            for (let i = 0; i < data.length; i++) {
                values.push([data[i].id, data[i].name, data[i].address, data[i].coordinates.lat, data[i].coordinates.lng, data[i].rating, data[i].rating_n])
              }
            db.query(sql, [values], (err, result) => {
                if (err) throw err;
                console.log("rows affected " + result.affectedRows);
              });
       } catch (error) {
            console.log('Error parsing JSON', err)
       }
    }

})

