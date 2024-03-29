const express = require("express")
const path = require("path")
const mysql = require("mysql")
const dotenv = require("dotenv")
const cookieParser = require("cookie-parser")
const fs = require("fs")
const bodyParser = require("body-parser")
const bcrypt = require("bcryptjs")
const schemas = require("./../Web-Project/controllers/json_schema")
const Ajv = require("ajv")
const multer = require("multer")

dotenv.config({ path: "./.env" })

// Using express for our server
const app = express()

// Database connection
const db = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
  timezone: "utc", //<-here this line was missing
})

const publicDirectory = path.join(__dirname, "./public")
app.use(express.static(publicDirectory))

// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded({ extended: false }))

// Parse JSON bodies (as sent by API clients)
app.use(express.json())
app.use(cookieParser())
app.use(bodyParser.urlencoded({ extended: true }))

// View engine. HandleBars
app.set("view engine", "hbs")

// Connect to database
db.connect((error) => {
  if (error) {
    console.log(error)
  } else {
    console.log("MYSQL Connected...")
  }
})

// Define Routes
app.use("/", require("./routes/pages"))
app.use("/auth", require("./routes/auth"))

// POST TO GET THE NAME OF POIS WHEN SEARCHING
app.post("/getPoisNames", function (req, res) {
  db.query(
    "SELECT name FROM pois WHERE name LIKE '%" + req.body.search + "%' LIMIT 5",
    function (err, rows) {
      if (err) {
        res.json({
          msg: "error",
        })
      } else {
        res.json({
          msg: "success",
          names: rows,
        })
      }
    }
  )
})

// GET id,lat and lng of every search result to populate the map with markers after searching
app.post("/getMarkers", function (req, res) {
  let result = req.body.results
  var sql = "SELECT id,name,lat,lng FROM pois WHERE name IN (?)"
  db.query(sql, [result], function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// GET the estimation of a place for the next 2 hours
app.post("/getEstimation", function (req, res) {
  let myId = req.body.dataSet[0]
  let myDay = "pois_" + req.body.dataSet[1]
  let myNum1 = req.body.dataSet[2]
  let myNum2 = req.body.dataSet[3]
  var sql = "SELECT POIs_ID, num?, num? FROM ?? WHERE POIs_ID = ?"
  db.query(sql, [myNum1, myNum2, myDay, myId], function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// GET THE NAME AND ID WHEN A MARKER IS CLICKED
app.post("/getNameIDPoiS", function (req, res) {
  let clicked_lat = parseFloat(req.body.results[0])
  let clicked_lng = req.body.results[1]
  var sql = "SELECT name,id FROM pois WHERE lat = ? and lng = ? "
  db.query(sql, [clicked_lat, clicked_lng], function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

//LOAD DATA FROM THE USER VISITATION OF A PLACE
app.post("/insertVisitation", function (req, res) {
  var sql =
    "INSERT ignore INTO pois_visit(user_id, user_username, name_of_pois, id_of_pois, Timestamp, num_of_people) VALUES (?,?,?,?,?,?) "
  db.query(sql, req.body.data, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

//CHECK USER IF HE IS ALREADY A CONFIRMED  CASE
app.post("/checkCase", function (req, res) {
  var sql = "SELECT username,time  FROM confirmed_case WHERE username = ?"
  db.query(sql, req.body.name, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})
//LOAD CONFIRMED NEW CASE
app.post("/confirmedCase", function (req, res) {
  var sql = "INSERT INTO confirmed_case(username) VALUES (?) "
  console.log(req.body.name)
  db.query(sql, req.body.name, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

//GET THE DATA OF ALL CONFIRMED CASES SEVEN DAYS FROM NOW EXCEPT CURRENT_USER
app.post("/sevenDays", function (req, res) {
  var sql = "SELECT *  FROM confirmed_case WHERE username != ?"
  db.query(sql, req.body.name, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// Common POIS for the current_user and the confirmed Case
app.post("/commonPois", function (req, res) {
  var sql =
    "SELECT DISTINCT u2.user_username as user ,u1.id_of_pois as id_of_pois , u2.Timestamp as T2, u1.Timestamp as T1, u1.name_of_pois as name  FROM pois_visit u1, pois_visit u2 WHERE u1.user_username = ? AND u2.user_username = ? AND u1.id_of_pois = u2.id_of_pois AND TIMESTAMPDIFF(HOUR, u1.Timestamp,u2.Timestamp) BETWEEN -2 AND 2"
  db.query(sql, [req.body.current, req.body.name], function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// Update user username with the new one.
app.post("/new_username", function (req, res) {
  var sql = "UPDATE users SET username = ? WHERE id = ?;"
  db.query(
    sql,
    [req.body.dataSet[1], req.body.dataSet[0]],
    function (err, rows) {
      if (err) {
        res.json({
          msg: "error",
        })
      } else {
        res.json({
          msg: "success",
          results: rows,
        })
      }
    }
  )
})

// Check if given current password equals to the one saved in db
app.post("/checkPass", function (req, res) {
  var sql = "SELECT password FROM users WHERE id = ?;"
  db.query(sql, [req.body.dataSet[0]], function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      const match = bcrypt.compareSync(req.body.dataSet[1], rows[0].password)
      if (match) {
        res.json({
          msg: "success",
          results: rows,
        })
      }
    }
  })
})
// Change current password with the new one and store it as hashed.
app.post("/changePass", function (req, res) {
  const hash = bcrypt.hashSync(req.body.dataSet[2], 8)
  var sql = "UPDATE users SET password = ? WHERE id = ?;"
  db.query(sql, [hash, req.body.dataSet[0]], function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// User History Visit Route
app.post("/visits", function (req, res) {
  var sql = "SELECT name_of_pois,Timestamp from pois_visit where user_id = ?"

  db.query(sql, id, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

//ADMIN PART 1
// View all Pois
app.post("/viewAll", function (req, res) {
  var sql = "SELECT id,name,address,rating,rating_n from pois"
  db.query(sql, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// Edit Cell
app.post("/editRow", function (req, res) {
  var sql = "UPDATE pois SET rating = ? , rating_n = ?  WHERE id = ?"
  db.query(
    sql,
    [req.body.rating, req.body.rating_n, req.body.id],
    function (err, rows) {
      if (err) {
        res.json({
          msg: "error",
        })
      } else {
        res.json({
          msg: "success",
          results: rows,
        })
      }
    }
  )
})

// Edit Cell
app.post("/deleteData", function (req, res) {
  var sql = "TRUNCATE TABLE pois"
  db.query(sql, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// ADMIN PART 2

// A) Total Visits
app.post("/total_visits", function (req, res) {
  var sql = "SELECT COUNT(*) FROM pois_visit; "
  db.query(sql, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// B) Total Confirmed Cases
app.post("/total_cases", function (req, res) {
  var sql = "SELECT COUNT(*) FROM confirmed_case; "
  db.query(sql, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// C) VISITS FROM ACTIVE CASES
app.post("/activeCases", function (req, res) {
  var sql = "SELECT *  FROM confirmed_case"
  db.query(sql, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

app.post("/activeCasesVisit", function (req, res) {
  var sql =
    "SELECT user_username,Timestamp  FROM pois_visit WHERE user_username = ?"
  db.query(sql, req.body.username, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// D) RANKING POIS
// Find the names of Types
app.post("/findTables", function (req, res) {
  var sql =
    "SELECT table_name  FROM information_schema.tables  WHERE  table_schema = 'covid-database' AND TABLE_NAME LIKE 'pois_%'"
  db.query(sql, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

// Id of visited places
app.post("/visitedPlaces", function (req, res) {
  var sql = "SELECT id_of_pois  FROM pois_visit"
  db.query(sql, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

app.post("/counterVisit", function (req, res) {
  result = req.body.type
  id = req.body.id.id_of_pois
  var sql = `SELECT * FROM ${result} WHERE POIs_ID = ?`
  db.query(sql, id, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
        result,
      })
    }
  })
})

// E) RANKING POIS FROM ACTIVE CASES

app.post("/activeCasesVisit2", function (req, res) {
  var sql =
    "SELECT user_username,Timestamp,id_of_pois  FROM pois_visit WHERE user_username = ?"
  db.query(sql, req.body.username, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

app.post("/counterVisit2", function (req, res) {
  result = req.body.type
  id = req.body.id
  var sql = `SELECT * FROM ${result} WHERE POIs_ID = ?`
  db.query(sql, id, function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
        result,
      })
    }
  })
})

// F) WEEK VISITS
app.post("/weekVisit", function (req, res) {
  var sql = "SELECT COUNT(*) FROM pois_visit WHERE Timestamp BETWEEN ? AND ? "
  db.query(sql, [req.body.dayOne, req.body.dayOne2], function (err, rows) {
    if (err) {
      res.json({
        msg: "error",
      })
    } else {
      res.json({
        msg: "success",
        results: rows,
      })
    }
  })
})

//UPLOAD FILE READER
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "points")
  },
  filename: (req, file, cb) => {
    const { originalname } = file
    cb(null, originalname)
  },
})

const upload = multer({ storage })

app.post("/uploadFile", upload.single("fileupload"), (req, res, next) => {
  // Read File Before Uploading
  const absolutePath = path.join(__dirname, req.file.path)
  const jsonString = fs.readFileSync(absolutePath, "utf-8")
  const jsonObject = JSON.parse(jsonString)
  nameFile = path.basename(absolutePath)

  //JSON SCHEMA VALIDATOR
  var innerSchema = schemas.jsonSchema
  var innerArraySchema = {
    type: "array",
    items: innerSchema,
  }
  const ajv = new Ajv()
  const valid = ajv.validate(innerArraySchema, jsonObject)
  if (!valid) {
    fs.unlinkSync(req.file.path)
    res.redirect("admin")
  } else {
    rFile(nameFile)
    res.redirect("admin")
  }
})

app.listen(5000, () => {
  console.log("Server started on Port 5000")
})

//Load JSON DATA to MySQL

rFile("starting_pois.json")
function rFile(fileName) {
  fs.readFile(`./points/${fileName}`, "utf-8", (err, jsonString) => {
    if (err) {
      console.log(err)
    } else {
      try {
        const data = JSON.parse(jsonString)
        // Insert Data To Pois Table
        let sql_main = `insert ignore into pois(id,name,address,lat,lng,rating,rating_n) values ?`
        let values = []
        for (let i = 0; i < data.length; i++) {
          values.push([
            data[i].id,
            data[i].name,
            data[i].address,
            data[i].coordinates.lat,
            data[i].coordinates.lng,
            data[i].rating,
            data[i].rating_n,
          ])
        }
        // Database Query to insert the data
        db.query(sql_main, [values], (err, result) => {
          if (err) throw err
        })

        // Creating array with each id corresponding to the equivalent type
        let types = []
        let id_types = {}
        let check_type
        for (let i = 0; i < data.length; i++) {
          // For to find all the types of POIS
          for (let j = 0; j < data[i].types.length; j++) {
            check_type = data[i].types[j]
            if (!types.includes(check_type)) {
              types.push(data[i].types[j])
            }
          }
        }
        // Block of code to create an array of the types with an array inside from all the ids.
        for (i in data) {
          for (numType in data[i].types) {
            if (!(data[i].types[numType] in id_types)) {
              id_types[data[i].types[numType]] = []
              id_types[data[i].types[numType]].push([data[i].id])
            } else {
              id_types[data[i].types[numType]].push([data[i].id])
            }
          }
        }

        // Creating different table for each type
        for (dtypes in types) {
          let name = "pois_" + types[dtypes]
          db.query(
            "create table if not exists " +
              name +
              " (POIs_ID varchar(255), PRIMARY KEY (POIs_ID));"
          )
        }

        // Insert Ids from our previous array to each table individually
        for (numType in id_types) {
          let name = "pois_" + numType
          let types_load = id_types[numType]
          let sql_types = "insert ignore into " + name + " (POIs_ID) values ?"
          //Database Query to insert the data
          db.query(sql_types, [types_load], (err, result) => {
            if (err) throw err
          })
        }

        db.query("DROP TABLE IF EXISTS name,pois_point_of_interest;")

        //Insert data for Each Day

        // Creating array with each  day
        let days = [
          "Monday",
          "Tuesday",
          "Wednesday",
          "Thursday",
          "Friday",
          "Saturday",
          "Sunday",
        ]
        let id_days = {}

        // Block of code to create an array of the days with an array inside from all the ids and popularity.
        for (i in data) {
          for (j = 0; j < 7; j++) {
            if (!(data[i].populartimes[j].name in id_days)) {
              id_days[data[i].populartimes[j].name] = []
              //We use .concat to merge two arrays since our .data is an array
              id_days[data[i].populartimes[j].name].push(
                [data[i].id].concat(data[i].populartimes[j].data)
              )
            } else {
              id_days[data[i].populartimes[j].name].push(
                [data[i].id].concat(data[i].populartimes[j].data)
              )
            }
          }
        }

        // Creating different table for each day
        for (day in days) {
          let name = ("pois_" + days[day]).toLowerCase()
          db.query(
            `create table if not exists ` +
              name +
              ` (POIs_ID varchar(255), num1 INT, num2 INT, num3 INT, num4 INT,
              num5 INT, num6 INT, num7 INT, num8 INT, num9 INT, num10 INT, num11 INT, num12 INT, num13 INT, num14 INT, num15 INT, num16 INT, 
              num17 INT, num18 INT, num19 INT, num20 INT, num21 INT, num22 INT, num23 INT, num24 INT, PRIMARY KEY (POIs_ID));`
          )
        }

        // Insert Ids and popularity from our previous array to each table individually
        for (day in id_days) {
          let name = ("pois_" + day).toLowerCase()
          let days_load = id_days[day]
          let sql_days =
            `insert ignore into  ` +
            name +
            ` (POIs_ID,num1,num2,num3,num4,num5,num6,num7,num8,
                num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20,num21,num22,num23,num24) values ?`
          //Database Query to insert the data
          db.query(sql_days, [days_load], (err, result) => {
            if (err) throw err
          })
        }
      } catch (error) {
        console.log("Error parsing JSON", err)
      }
    }
  })
}
