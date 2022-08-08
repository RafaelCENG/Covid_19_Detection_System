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

activeCases()

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
}

findTables()
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
          Object.entries(countObj).forEach((entry) => {
            const [key, value] = entry
            value > 0 ? (ranks[key] = value) : ""
          })
          console.log(ranks)
          rankingTypes(ranks)
        },
      })
    },
  })
}

// D) Function to create Chart for Types ranking

function rankingTypes(ranks) {
  //const labels = ["January", "February", "March", "April", "May", "June"]
  const data = {
    labels: Object.keys(ranks),
    datasets: [
      {
        label: "My First dataset",
        backgroundColor: "rgb(255, 99, 132)",
        borderColor: "rgb(255, 99, 132)",
        data: Object.values(ranks),
      },
    ],
  }
  console.log(data)
  console.log(Object.values(ranks))

  const config = {
    type: "pie",
    data: data,
  }

  const myChart = new Chart(document.getElementById("rankings"), config)
}
