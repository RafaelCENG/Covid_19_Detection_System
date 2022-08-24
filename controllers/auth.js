const mysql = require("mysql")
const jwt = require("jsonwebtoken")
const bcrypt = require("bcryptjs")
const { promisify, debuglog } = require("util")

// Database connection
const db = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
})

// Login Controller
exports.login = async (req, res) => {
  try {
    const { username, password } = req.body
    // Checking if the username and password field is filled
    if (!username || !password) {
      return res.status(400).render("login", {
        message: "Please provide a username and password",
      })
    }
    // Query to find if the users exists if not error, if exists login to the website
    db.query(
      "SELECT * FROM users  WHERE username = ?",
      [username],
      async (error, results) => {
        if (results[0].admin == 0) {
          if (
            !results ||
            !(await bcrypt.compare(password, results[0].password))
          ) {
            res.status(401).render("login", {
              message: "Username or Password is incorrect",
            })
          } else {
            const id = results[0].id

            const token = jwt.sign({ id }, process.env.JWT_SECRET, {
              expiresIn: process.env.JWT_EXPIRES_IN,
            })

            console.log("The token is: " + token)

            const cookieOptions = {
              expires: new Date(
                Date.now() +
                  process.env.JWT_COOKIE_EXPIRES * 24 * 60 * 60 * 1000
              ),
              httpOnly: true,
            }
            res.cookie("jwt", token, cookieOptions)
            res.status(200).redirect("/map")
          }
        } else {
          const id = results[0].id

          const token = jwt.sign({ id }, process.env.JWT_SECRET, {
            expiresIn: process.env.JWT_EXPIRES_IN,
          })

          console.log("The token is: " + token)

          const cookieOptions = {
            expires: new Date(
              Date.now() + process.env.JWT_COOKIE_EXPIRES * 24 * 60 * 60 * 1000
            ),
            httpOnly: true,
          }
          res.cookie("jwt", token, cookieOptions)
          res.status(200).redirect("/admin")
        }
      }
    )
  } catch (error) {
    console.log(error)
  }
}

// Register Controller
exports.register = (req, res) => {
  const { username, email, password, passwordConfirm } = req.body
  db.query(
    "SELECT username,email FROM users WHERE username = ? OR email = ?",
    [username, email],
    async (error, results) => {
      if (error) {
        console.log(error)
      }
      if (results.length > 0) {
        return res.render("register", {
          message: "The username or email already exists",
        })
      } else if (password !== passwordConfirm) {
        return res.render("register", {
          message: "Passwords do not match",
        })
      }

      let hashPassword = await bcrypt.hash(password, 8)
      db.query(
        "INSERT INTO users SET ?",
        {
          username: username,
          email: email,
          password: hashPassword,
          admin: 0,
        },
        (error, results) => {
          if (error) {
            console.log(error)
          } else {
            console.log(results)
            return res.render("register", {
              message: "User registered",
            })
          }
        }
      )
    }
  )
}

exports.isLoggedIn = async (req, res, next) => {
  if (req.cookies.jwt) {
    try {
      // 1) verify the token
      const decoded = await promisify(jwt.verify)(
        req.cookies.jwt,
        process.env.JWT_SECRET
      )

      //console.log(decoded)

      // 2) Check if the user still exists
      db.query(
        "SELECT * FROM users  WHERE id = ?",
        [decoded.id],
        (error, result) => {
          //console.log(result)

          if (!result) {
            return next()
          }

          req.user = result[0]
          return next()
        }
      )
    } catch (error) {
      console.log(error)
      return next()
    }
  } else {
    next()
  }
}

exports.logout = async (req, res) => {
  res.cookie("jwt", "logout", {
    expires: new Date(Date.now() + 2 * 1000),
    httpOnly: true,
  })

  res.status(200).redirect("/")
}
