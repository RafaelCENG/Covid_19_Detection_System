var map = L.map("map")

L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
  maxZoom: 19,
  attribution:
    '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>',
}).addTo(map)

// show the scale bar on the lower left corner
L.control.scale({ imperial: true, metric: true }).addTo(map)
var layerGroup = L.layerGroup().addTo(map)

// create control and add to map
var lc = L.control.locate().addTo(map)
// request location update and set location
lc.start()

const searchWrapper = document.querySelector(".wrapper")
const resultsWrapper = document.querySelector(".results")

$(document).ready(function () {
  //On pressing a key on "Search box"  This function will be called.
  $("#search").keyup(function () {
    //AJAX is called.
    var name = $("#search").val()
    $.ajax({
      //AJAX type is "Post".
      type: "POST",
      //Data will be sent to "ajax.php".
      url: "/getPoisNames",
      //Data, that will be sent to "ajax.php".
      data: {
        //Assigning value of "name" into "search" variable.
        search: name,
      },
      //If result found, this funtion will be called.
      success: function (html) {
        let arr = html.names
        let results = []
        if (name.length) {
          results = arr.filter((item) => {
            return item.name.toLowerCase().includes(name.toLowerCase())
          })
        }
        renderResults(results)
      },
    })
  })
})

let search = document.querySelector("#search")
let populate

//   FUNCTIONS

// Function to find my current location
var lat, lng
function currentLocation() {
  map.on("locationfound", (e) => {
    console.log(e)
    lat = e.latitude
    lng = e.longitude
  })
  now()
}
currentLocation()

function now() {
  console.log("My latlng " + lat, lng)
  return [lat, lng]
}

function renderResults(results) {
  if (!results.length) {
    return searchWrapper.classList.remove("show")
  }
  const content = results
    .map((item) => {
      return `<li>${item.name}</li>`
    })
    .join("")

  searchWrapper.classList.add("show")
  resultsWrapper.innerHTML = `<ul>${content}</ul>`
  new_results = results.slice()
  return new_results
}

// Function to Find the POIS after pressing the Search Button
async function mapSearching() {
  search.value = ""
  resultsWrapper.innerHTML = ""
  let results = new_results.map((a) => a.name)
  const res = await markers(results)
  moreInfo(res)
}
async function markers(results) {
  const result = await $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/getMarkers",
    contentType: "application/json",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: JSON.stringify({ results: results }),
    //If result found, this function will be called.
    success: function (html) {
      populate = html.results
      console.log("MY POPULATION", populate)
    },
  })
  return result
}
async function moreInfo(res) {
  //clear layerGroup
  layerGroup.clearLayers()
  currentTime = getDateTime()
  //estimations = []
  for (i = 0; i < res.results.length; i++) {
    let dataSet = [
      res.results[i].id,
      currentTime[7].toLowerCase(),
      currentTime[4] + 1,
      currentTime[4] + 2,
    ]
    populateMap(dataSet, res.results, i)
  }
}

// Function to populate the map with pop-ups while searching inside the circle
async function populateMap(dataSet, populate, i) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/getEstimation",
    contentType: "application/json",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: JSON.stringify({ dataSet: dataSet }),
    //If result found, this function will be called.
    success: function (html) {
      const [lat, lng] = now()
      let userPosition = [lat, lng]
      let thresholdDistance = 5000 // In meters
      let numEstimation = 0

      numEstimation =
        Object.values(html.results[0])[1] + Object.values(html.results[0])[2]

      if (numEstimation < 50) {
        customUrl =
          "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-green.png"
      } else if (numEstimation >= 50 && numEstimation <= 150) {
        customUrl =
          "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-orange.png"
      } else {
        userPosition
        customUrl =
          "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-red.png"
      }

      //ICON COLOURS
      var Icon = new L.Icon({
        iconUrl: customUrl,
        shadowUrl:
          "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowSize: [41, 41],
      })

      var Popup = L.popup()
        .setLatLng([populate[i].lat, populate[i].lng])
        .setContent(
          `My Estimation is ${numEstimation} ` +
            "Location Name " +
            populate[i].name +
            visit
        )

      let guardedLocation = [populate[i].lat, populate[i].lng]
      if (map.distance(userPosition, guardedLocation) <= thresholdDistance) {
        L.marker([populate[i].lat, populate[i].lng], { icon: Icon })
          .on("click", markerOnClick)
          .addTo(layerGroup)
          .bindPopup(Popup, visit)
      }
    },
  })
}

function getDateTime() {
  var now = new Date()
  var year = now.getFullYear()
  var month = now.getMonth() + 1
  var day = now.getDate()
  var hour = now.getHours()
  var minute = now.getMinutes()
  var second = now.getSeconds()
  if (day.toString().length == 1) {
    day = "0" + day
  }
  if (hour.toString().length == 1) {
    hour = "0" + hour
  }
  if (minute.toString().length == 1) {
    minute = "0" + minute
  }
  if (second.toString().length == 1) {
    second = "0" + second
  }
  var dateTime =
    day + "/" + month + "/" + year + " " + hour + ":" + minute + ":" + second
  var dayInNumber = now.getDay()
  var dayOfWeek = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ]
  return [
    dateTime,
    day,
    month,
    year,
    hour,
    minute,
    second,
    dayOfWeek[dayInNumber],
  ]
}

// Function to add the visit in the database from user. Also he can add an estimation of people in the place if he wants.
let visit = `<button type="submit" class="leaflet-touch " onclick="showConfirmBox()">Click</button>`
function showConfirmBox() {
  document.getElementById("overlay").hidden = false
}
function closeConfirmBox() {
  document.getElementById("overlay").hidden = true
}

// Function to get the Lat and Lng of the clicked Marker
var namePois
var idPois
function markerOnClick(e) {
  results = [e.latlng.lat, e.latlng.lng]
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/getNameIDPoiS",
    contentType: "application/json",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: JSON.stringify({ results: results }),
    //If result found, this function will be called.
    success: function (html) {
      namePois = html.results[0].name
      idPois = html.results[0].id
    },
  })
}

function isConfirm(answer) {
  visitTimestamp = new Date()
  visitTimestamp =
    visitTimestamp.toISOString().split("T")[0] +
    " " +
    visitTimestamp.toTimeString().split(" ")[0]
  let data = [
    current_user.id,
    current_user.username,
    namePois,
    idPois,
    visitTimestamp,
  ]
  if (answer) {
    var n = prompt("Check your number", "Type your number here")
    n = parseInt(n)
    if (Number.isInteger(n)) {
      data.push(n)
      $.ajax({
        //AJAX type is "Post".
        type: "POST",
        //Data will be sent to "ajax.php".
        url: "/insertVisitation",
        contentType: "application/json",
        datatype: "json",
        //Data, that will be sent to "ajax.php".
        data: JSON.stringify({ data: data }),
        //If result found, this function will be called.
        success: function (html) {
          console.log(html)
        },
      })
    } else {
      alert("The number is not an integer please try again")
      closeConfirmBox()
    }
  } else {
    data.push(0)
    $.ajax({
      //AJAX type is "Post".
      type: "POST",
      //Data will be sent to "ajax.php".
      url: "/insertVisitation",
      contentType: "application/json",
      datatype: "json",
      //Data, that will be sent to "ajax.php".
      data: JSON.stringify({ data: data }),
      //If result found, this function will be called.
      success: function (html) {
        console.log(html)
      },
    })
  }
  closeConfirmBox()
}
//Function to add the user as a new confirmed case
function newCase() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/confirmedCase",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: { name: current_user.username },
    //If result found, this function will be called.
    success: function (html) {
      console.log(html)
    },
  })
}

// Function to check if the user is already a confirmed case
function checkCase() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/checkCase",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: { name: current_user.username },
    //If result found, this function will be called.
    success: function (html) {
      if (html.results.length > 0) {
        var result = html.results[0].time
        var today = new Date()
        today = today.toISOString()
        const DAY_UNIT_IN_MILLISECONDS = 24 * 3600 * 1000
        const diffInMilliseconds =
          new Date(today).getTime() - new Date(result).getTime()
        const diffInDays = diffInMilliseconds / DAY_UNIT_IN_MILLISECONDS
        if (diffInDays > 14) {
          newCase()
        } else {
          alert("Already a confirmed Case")
        }
      } else {
        newCase()
      }
    },
  })
}

document.getElementById("case").onclick = function () {
  if (confirm("Are you sure you are positive?") == true) {
    checkCase()
  } else {
    alert("You pressed Cancel!")
  }
}

// Function to get all the users which are confirmed cases from the current date
function sevenDaysConfirmed() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/sevenDays",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: { name: current_user.username },
    //If result found, this function will be called.
    success: function (html) {
      let arr = []
      let users_arr = []
      let common_pois_confirmed_arr = []
      if (html.results.length > 0) {
        for (i = 0; i < html.results.length; i++) {
          var today = new Date()
          today = today.toISOString()
          var result = html.results[i].time
          DAY_UNIT_IN_MILLISECONDS = 24 * 3600 * 1000
          diffInMilliseconds =
            new Date(today).getTime() - new Date(result).getTime()
          diffInDays = diffInMilliseconds / DAY_UNIT_IN_MILLISECONDS
          if (diffInDays < 7) {
            arr.push([html.results[i].username, result])
            users_arr.push(html.results[i].username)
          }
        }
        if (users_arr.length > 0) {
          let flag = 0
          let usersFlag = users_arr.length
          for (i = 0; i < users_arr.length; i++) {
            flag++
            let user = users_arr[i]
            findPois(user, common_pois_confirmed_arr, arr, flag, usersFlag)
          }
        } else {
          alert("No contacts the past 7 days")
        }
      } else {
        alert("Zero Confirmed Cases")
      }
    },
  })
}

// Function to find cases that are +-2 hours from the confirmed case and no more than 7 days have pass.
function findPois(user, common_pois_confirmed_arr, arr, flag, usersFlag) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/commonPois",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: { current: current_user.username, name: user },
    //If result found, this function will be called.
    success: function (html) {
      for (j = 0; j < html.results.length; j++) {
        common_pois_confirmed_arr.push([
          html.results[j].user,
          html.results[j].id_of_pois,
          html.results[j].T2,
          html.results[j].T1,
          html.results[j].name,
        ])
      }
      userB_sevenDaysCase(common_pois_confirmed_arr, arr, flag, usersFlag)
    },
  })
}

// Function to check if userB has been diagnosed as a case within 7 days of the visit.
function userB_sevenDaysCase(common_pois_confirmed_arr, arr, flag, usersFlag) {
  let FinalArr = []
  for (i = 0; i < common_pois_confirmed_arr.length; i++) {
    var searchUser = common_pois_confirmed_arr[i][0]
    var user_time = []
    arr.forEach((e) => {
      if (e[0] == searchUser) {
        user_time.push(e.slice(1))
      }
    })
    DAY_UNIT_IN_MILLISECONDS = 24 * 3600 * 1000
    diffInMilliseconds =
      new Date(common_pois_confirmed_arr[i][3]).getTime() -
      new Date(user_time[0]).getTime()
    diffInDays = diffInMilliseconds / DAY_UNIT_IN_MILLISECONDS
    if (-7 <= diffInDays <= 7) {
      FinalArr.push(common_pois_confirmed_arr[i])
    }
  }
  if (flag == usersFlag) {
    var ul = document.getElementById("modal-body")
    document.getElementById("modal-body").innerHTML = ""

    FinalArr.forEach(function (e) {
      var li = document.createElement("li")
      visitTimestamp = new Date(e[3])
      visitTimestamp = visitTimestamp
        .toISOString()
        .slice(0, 19)
        .replace("T", " ")
      li.innerText = e[4] + " " + visitTimestamp
      ul.append(li)
    })
  }
}
