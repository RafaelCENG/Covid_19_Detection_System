const express = require("express")
const path = require('path')
const mysql = require("mysql")
const dotenv = require("dotenv")
const cookieParser = require("cookie-parser")
const fs = require ('fs')
const bodyParser = require('body-parser');


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





console.log(__dirname)
// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded({ extended: false }))

// Parse JSON bodies (as sent by API clients)
app.use(express.json())
app.use(cookieParser())
app.use(bodyParser.urlencoded({ extended: true }));

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



// POST TO GET THE NAME OF POIS WHEN SEARCHING
app.post('/getPoisNames', function(req,res){
//console.log(req.body.search)
//console.log(req.body.search)
// WHERE name  LIKE 'req.body.search'
 db.query("SELECT name FROM pois WHERE name LIKE '%" + req.body.search + "%' LIMIT 5", function (err, rows) {
    if (err) {
     // console.log('err loading data');
      res.json({
        msg: 'error'
      })
    } else {
   //  console.log('table loading success');
    //console.log(rows);
      res.json({
        msg: 'success',
        names: rows
        });
    }
  })
})

// GET id,lat and lng of every search result to populate the map with markers after searching
app.post('/getMarkers', function(req,res){
  let result = req.body
   db.query("SELECT id,name,lat,lng FROM pois WHERE name IN ('" + result.results.join("','") + "')", function (err, rows) {
      if (err) {
        res.json({
          msg: 'error'
        })
      } else {
        res.json({
          msg: 'success',
          results: rows
          });
      }
    })
  })



// GET the estimation of a place for the next 2 hours
app.post('/getEstimation', function(req,res){
  let myId = req.body.dataSet[0]
  let myDay =  "pois_"+req.body.dataSet[1]
  let myNum1 =  req.body.dataSet[2]
  let myNum2 =  req.body.dataSet[3]
  console.log("My Data")
  console.log(myId,myDay,myNum1,myNum2)
  var sql =  "SELECT POIs_ID, num?, num? FROM ?? WHERE POIs_ID = ?"
   db.query(sql, [myNum1,myNum2,myDay,myId], function (err, rows) {
      if (err) {
        res.json({
          msg: 'error'
        })
      } else {
        res.json({
          msg: 'success',
          results: rows
          });
      }
    })
  })

app.listen(5000, () => {
    console.log("Server started on Port 5000")
})

//Load JSON DATA to MySQL

fs.readFile('../points/starting_pois.json', 'utf-8', (err, jsonString) => {
    if (err) {
        console.log(err)
    } else {
       try {           
            const data = JSON.parse(jsonString)
            // Insert Data To Pois Table
            let sql_main = `insert ignore into pois(id,name,address,lat,lng,rating,rating_n) values ?`;
            let values = [];
            for (let i = 0; i < data.length; i++) {
                values.push([data[i].id, data[i].name, data[i].address, data[i].coordinates.lat, data[i].coordinates.lng, data[i].rating, data[i].rating_n])
              }
            // Database Query to insert the data
            db.query(sql_main, [values], (err, result) => {
                if (err) throw err;
              //  console.log("rows affected " + result.affectedRows);
              });

            // Creating array with each id corresponding to the equivalent type
           let types = [];
           let id_types = {};
           let check_type;
            for (let i = 0; i < data.length; i++) {
                // For to find all the types of POIS
                for (let j = 0; j<data[i].types.length; j ++){
                    check_type = data[i].types[j]
                    if(!types.includes(check_type)) {
                         types.push(data[i].types[j])
                    }
                }
              }
              // Block of code to create an array of the types with an array inside from all the ids.
              for (i in data) {
                for(numType in data[i].types) {
                    if ( !(data[i].types[numType] in id_types) ) {
                        id_types[data[i].types[numType]]=[];
                        id_types[data[i].types[numType]].push([data[i].id]);
                        }
                        else{
                        id_types[data[i].types[numType]].push([data[i].id]);
                        }
                }
              }
            
              // Creating different table for each type
              for(dtypes in types){
                let name = "pois_" + types[dtypes]
                db.query("create table if not exists " + name + " (POIs_ID varchar(255), PRIMARY KEY (POIs_ID));");
              }
            
            // Insert Ids from our previous array to each table individually
            for(numType in id_types) {
                let name = "pois_" + numType
                let types_load = id_types[numType]
                let sql_types = "insert ignore into "+name+" (POIs_ID) values ?";
                //Database Query to insert the data
                db.query(sql_types, [types_load], (err, result) => {
                if (err) throw err;
               // console.log("rows affected " + result.affectedRows);
              });
            }

            db.query("DROP TABLE IF EXISTS name,pois_point_of_interest;")



            //Insert data for Each Day

            // Creating array with each  day
            let days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
            let id_days = {};

            // Block of code to create an array of the days with an array inside from all the ids and popularity.
            for (i in data) {
              for (j = 0; j < 7; j++) {
                if ( !(data[i].populartimes[j].name in id_days) ) {
                  id_days[data[i].populartimes[j].name]=[];
                  //We use .concat to merge two arrays since our .data is an array
                  id_days[data[i].populartimes[j].name].push([data[i].id].concat(data[i].populartimes[j].data));
                }
                else{
                      id_days[data[i].populartimes[j].name].push([data[i].id].concat(data[i].populartimes[j].data));
                }
              }
            }

            // Creating different table for each day
            for(day in days){
              let name = ("pois_" + days[day]).toLowerCase()
              db.query(`create table if not exists ` + name + ` (POIs_ID varchar(255), num1 INT, num2 INT, num3 INT, num4 INT,
              num5 INT, num6 INT, num7 INT, num8 INT, num9 INT, num10 INT, num11 INT, num12 INT, num13 INT, num14 INT, num15 INT, num16 INT, 
              num17 INT, num18 INT, num19 INT, num20 INT, num21 INT, num22 INT, num23 INT, num24 INT, PRIMARY KEY (POIs_ID));`);
            }

            // Insert Ids and popularity from our previous array to each table individually
            for(day in id_days) {
              let name = ("pois_" + day).toLowerCase()
              let days_load = id_days[day]
              let sql_days = `insert ignore into  `+name+` (POIs_ID,num1,num2,num3,num4,num5,num6,num7,num8,
                num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20,num21,num22,num23,num24) values ?`;
              //Database Query to insert the data
              db.query(sql_days, [days_load], (err, result) => {
                if (err) throw err;
                  //console.log("rows affected " + result.affectedRows);
              });
            }

       } catch (error) {
            console.log('Error parsing JSON', err)
       }
    }
})

