// CHARTS
// const Chart = require('chart.js');
// const labels = [
//     'January',
//     'February',
//     'March',
//     'April',
//     'May',
//     'June',
//   ];

//   const data = {
//     labels: labels,
//     datasets: [{
//       label: 'My First dataset',
//       backgroundColor: 'rgb(255, 99, 132)',
//       borderColor: 'rgb(255, 99, 132)',
//       data: [0, 10, 5, 2, 20, 30, 45],
//     }]
//   };

//   const config = {
//     type: 'line',
//     data: data,
//     options: {}
//   };

//   const myChart = new Chart(
//     document.getElementById('myChart'),
//     config
//   );

//activeCases()

$.when(
  $.ajax({
    // A. Total Visits
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/total_visits",
    contentType: "application/json",
    datatype: "json",
  }),
  // B. Total Confirmed Cases
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/total_cases",
    contentType: "application/json",
    datatype: "json",

    //this callback will be fired once all ajax calls have finished.
  })
  //this callback will be fired once all ajax calls have finished.
).then(function (resp1, resp2) {
  document.getElementById("total_visits").innerHTML = Object.values(
    resp1[0].results[0]
  )
  document.getElementById("total_cases").innerHTML = Object.values(
    resp2[0].results[0]
  )
})

// C. Total Visits from Active Cases
function activeCases() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/activeCases",
    contentType: "application/json",
    datatype: "json",
    success: function (html) {
      let visits = []
      if (html.results.length > 0) {
        for (i = 0; i < html.results.length; i++) {
          let user = html.results[i].username
          let timestamp = html.results[i].time
          findVisit(user, timestamp, visits)
        }
      }
    },
  })
}

function findVisit(user, timestamp, visits) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/activeCasesVisit",
    contentType: "application/json",
    datatype: "json",
    data: JSON.stringify({ username: user }),
    success: function (html) {
      if (html.results.length > 0) {
        for (i = 0; i < html.results.length; i++) {
          const DAY_UNIT_IN_MILLISECONDS = 24 * 3600 * 1000
          const diffInMilliseconds =
            new Date(html.results[i].Timestamp).getTime() -
            new Date(timestamp).getTime()
          const diffInDays = diffInMilliseconds / DAY_UNIT_IN_MILLISECONDS
          if (diffInDays > -7 && diffInDays < 14) {
            visits.push(1)
          }
        }
      }
      document.getElementById("active_cases").innerHTML = visits.length
    },
  })
  findTables()
}

//UNCOMMENT FOR CHARTS DISABLE FOR PRODUCTIVITY

//findTables()
function findTables() {
  let arr = []
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/findTables",
    contentType: "application/json",
    datatype: "json",
    //data: JSON.stringify({ username: user }),
    success: function (html) {
      for (i = 0; i < html.results.length; i++) {
        arr.push(html.results[i].table_name)
      }

      const toRemove = new Set([
        "pois_monday",
        "pois_tuesday",
        "pois_wednesday",
        "pois_thursday",
        "pois_friday",
        "pois_saturday",
        "pois_sunday",
        "pois_visit",
      ])
      const tableNames = arr.filter((x) => !toRemove.has(x))
      const countObj = {}
      tableNames.forEach((element) => {
        countObj[element] = 0
      })
      $.ajax({
        //AJAX type is "Post".
        type: "POST",
        //Data will be sent to "ajax.php".
        url: "/visitedPlaces",
        contentType: "application/json",
        datatype: "json",
        //data: JSON.stringify({ username: user }),
        success: function (html) {
          for (i = 0; i < html.results.length; i++) {
            for (j = 0; j < tableNames.length; j++) {
              $.ajax({
                //AJAX type is "Post".
                type: "POST",
                //Data will be sent to "ajax.php".
                url: "/counterVisit",
                contentType: "application/json",
                datatype: "json",
                async: false,
                data: JSON.stringify({
                  type: tableNames[j],
                  id: html.results[i],
                }),
                success: function (html) {
                  if (html.results.length > 0) {
                    place = html.result
                    countObj[place] = countObj[place] + 1
                  }
                },
              })
            }
          }
          console.log(countObj)
          const ranks = {}
          createRanking(countObj, ranks)
          console.log(ranks)
          rankingTypes(ranks)
        },
      })
    },
  })
}

// D) Function to create Chart for Types ranking
function getColors(length) {
  let pallet = [
    "#0074D9",
    "#FF4136",
    "#2ECC40",
    "#FF851B",
    "#7FDBFF",
    "#B10DC9",
    "#FFDC00",
    "#001f3f",
    "#39CCCC",
    "#01FF70",
    "#85144b",
    "#F012BE",
    "#3D9970",
    "#111111",
    "#AAAAAA",
  ]
  let colors = []
  for (var i = 0; i < length; i++) {
    colors.push(pallet[i % (pallet.length - 1)])
  }

  return colors
}

function rankingTypes(ranks) {
  //const labels = ["January", "February", "March", "April", "May", "June"]
  var data = {
    labels: Object.keys(ranks),
    datasets: [
      {
        data: Object.values(ranks),
        backgroundColor: getColors(Object.values(ranks).length),
      },
    ],
  }
  console.log(data)
  console.log(Object.values(ranks))

  const config = {
    type: "pie",
    data: data,
  }
  const c = Chart.getChart(rankings)
  if (c) c.destroy()
  const rankChart = new Chart(document.getElementById("rankings"), config)
}

// E) Ranking POIS from Active Cases Visits

//UNCOMMENT FOR CHARTS DISABLE FOR PRODUCTIVITY
//activeCases2()
function activeCases2() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/activeCases",
    contentType: "application/json",
    datatype: "json",
    success: function (html) {
      let visits = []
      if (html.results.length > 0) {
        for (i = 0; i < html.results.length; i++) {
          let user = html.results[i].username
          let timestamp = html.results[i].time
          findVisit2(user, timestamp, visits)
        }
      }
    },
  })
  
}

function findVisit2(user, timestamp, visits) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/activeCasesVisit2",
    contentType: "application/json",
    datatype: "json",
    data: JSON.stringify({ username: user }),
    success: function (html) {
      if (html.results.length > 0) {
        for (i = 0; i < html.results.length; i++) {
          const DAY_UNIT_IN_MILLISECONDS = 24 * 3600 * 1000
          const diffInMilliseconds =
            new Date(html.results[i].Timestamp).getTime() -
            new Date(timestamp).getTime()
          const diffInDays = diffInMilliseconds / DAY_UNIT_IN_MILLISECONDS
          if (diffInDays > -7 && diffInDays < 14) {
            visits.push(html.results[i].id_of_pois)
          }
        }
      }
      let visitsActive = [...new Set(visits)]
      findTables2(visitsActive)
    },
  })
}

function findTables2(visitsActive) {
  let arr = []
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/findTables",
    contentType: "application/json",
    datatype: "json",
    //data: JSON.stringify({ username: user }),
    success: function (html) {
      for (i = 0; i < html.results.length; i++) {
        arr.push(html.results[i].table_name)
      }

      const toRemove = new Set([
        "pois_monday",
        "pois_tuesday",
        "pois_wednesday",
        "pois_thursday",
        "pois_friday",
        "pois_saturday",
        "pois_sunday",
        "pois_visit",
      ])
      const tableNames = arr.filter((x) => !toRemove.has(x))
      const countObj = {}
      tableNames.forEach((element) => {
        countObj[element] = 0
      })
      console.log(visitsActive)
      console.log(visitsActive.length)
      console.log(tableNames.length)
      for (i = 0; i < visitsActive.length; i++) {
        console.log(visitsActive[i])
        for (j = 0; j < tableNames.length; j++) {
          $.ajax({
            //AJAX type is "Post".
            type: "POST",
            //Data will be sent to "ajax.php".
            url: "/counterVisit2",
            contentType: "application/json",
            datatype: "json",
            async: false,
            data: JSON.stringify({
              type: tableNames[j],
              id: visitsActive[i],
            }),
            success: function (html) {
              if (html.results.length > 0) {
                place = html.result
                countObj[place] = countObj[place] + 1
              }
            },
          })
        }
      }
      console.log(countObj)
      const ranks2 = {}
      createRanking(countObj, ranks2)
      console.log(ranks2)
      rankingTypes2(ranks2)
    },
  })
}

function rankingTypes2(ranks) {
  //const labels = ["January", "February", "March", "April", "May", "June"]
  const data = {
    labels: Object.keys(ranks),
    datasets: [
      {
        label: "My First dataset",
        data: Object.values(ranks),
        backgroundColor: getColors(Object.values(ranks).length),
      },
    ],
  }
  console.log(data)
  console.log(Object.values(ranks))

  const config = {
    type: "pie",
    data: data,
  }

  const c = Chart.getChart(rankingsActive)
  if (c) c.destroy()
  const rankChart2 = new Chart(
    document.getElementById("rankingsActive"),
    config
  )
}

// Function to create the object with the id of the place and the number the place has been visited
function createRanking(countObj, ranks) {
  Object.entries(countObj).forEach((entry) => {
    const [key, value] = entry
    value > 0 ? (ranks[key] = value) : ""
  })
}

// PART F
function weekValue() {
  var weekNum = document.getElementById("myWeek").value
  console.log(weekNum.split("-W"))
  weekNum = weekNum.split("-W")
  let year = weekNum[0]
  let week = weekNum[1]
  console.log(week)
  let firstDay = getDateOfISOWeek(week, year)
  let visitsPerDay = []
  for (i = 0; i < 7; i++) {
    if (i == 0) {
      firstDay = firstDay.setDate(firstDay.getDate())
    } else {
      firstDay = firstDay.setDate(firstDay.getDate() + 1)
    }
    firstDay = new Date(firstDay)
    dayOne = firstDay.toISOString().slice(0, 19).replace("T", " ")
    days = allDay(firstDay)
    dayOne = days[0]
    dayOne2 = days[1]
    weekVisits(dayOne, dayOne2, visitsPerDay)
  }
  console.log(visitsPerDay)
  createWeekChart(visitsPerDay)
}

function getDateOfISOWeek(w, y) {
  var simple = new Date(Date.UTC(y, 0, 1 + (w - 1) * 7))
  var dow = simple.getDay()
  var ISOweekStart = simple
  if (dow <= 4) ISOweekStart.setDate(simple.getDate() - simple.getDay() + 1)
  else ISOweekStart.setDate(simple.getDate() + 8 - simple.getDay())
  return ISOweekStart
}

// Function to find the visits of each day from the given Week
function weekVisits(dayOne, dayOne2, visitsPerDay) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/weekVisit",
    contentType: "application/json",
    datatype: "json",
    async: false,
    data: JSON.stringify({ dayOne: dayOne, dayOne2: dayOne2 }),
    success: function (html) {
      visitsPerDay.push(Object.values(html.results[0])[0])
      console.log(visitsPerDay)
    },
  })
}

//Function to get  the day from 00:00:00 to 23:59:59
function allDay(firstDay) {
  let lastDay = firstDay
  lastDay.getHours() // 0 - 23
  lastDay.setHours(23)
  lastDay.getMinutes() // 0 - 59
  lastDay.setMinutes(59)
  lastDay.getSeconds() // 0 - 59
  lastDay.setSeconds(59)
  lastDay = new Date(
    lastDay.getTime() - lastDay.getTimezoneOffset() * 60000
  ).toISOString()
  lastDay = lastDay.slice(0, 19).replace("T", " ")

  firstDay.getHours() // 0 - 23
  firstDay.setHours(0)
  firstDay.getMinutes() // 0 - 59
  firstDay.setMinutes(0)
  firstDay.getSeconds() // 0 - 59
  firstDay.setSeconds(0)
  firstDay = new Date(
    firstDay.getTime() - firstDay.getTimezoneOffset() * 60000
  ).toISOString()
  firstDay = firstDay.slice(0, 19).replace("T", " ")
  return [firstDay, lastDay]
}

function createWeekChart(visits) {
  console.log(visits.toString())
  console.log("PerDay", visits)
  console.log("PerDay", visits[0])
  console.log("PerDay", visits.length)
  console.log(JSON.parse(JSON.stringify(visits)))

  const visits2 = Object.values(visits)
  console.log(visits2)
  const labels = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ]
  const data = {
    labels: labels,
    datasets: [
      {
        label: "Visits",
        data: visits,
        backgroundColor: [
          "rgba(255, 99, 132, 0.2)",
          "rgba(255, 159, 64, 0.2)",
          "rgba(255, 205, 86, 0.2)",
          "rgba(75, 192, 192, 0.2)",
          "rgba(54, 162, 235, 0.2)",
          "rgba(153, 102, 255, 0.2)",
          "rgba(201, 203, 207, 0.2)",
        ],
        borderColor: [
          "rgb(255, 99, 132)",
          "rgb(255, 159, 64)",
          "rgb(255, 205, 86)",
          "rgb(75, 192, 192)",
          "rgb(54, 162, 235)",
          "rgb(153, 102, 255)",
          "rgb(201, 203, 207)",
        ],
        borderWidth: 1,
      },
    ],
  }
  const config = {
    type: "bar",
    data: data,
    options: {
      scales: {
        y: {
          beginAtZero: true,
        },
      },
    },
  }

  const c = Chart.getChart("weekVisits")
  if (c) c.destroy()
  const rankChart3 = new Chart(document.getElementById("weekVisits"), config)
}
