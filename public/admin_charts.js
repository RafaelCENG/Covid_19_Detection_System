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

totalVisits();
// A. Total Visits
function totalVisits() {
      $.ajax({
        //AJAX type is "Post".
        type: "POST",
        //Data will be sent to "ajax.php".
        url: "/total_visits",
        contentType: 'application/json',
        datatype: 'json',
        //Data, that will be sent to "ajax.php".
        //data:  JSON.stringify({ dataSet : dataSet}) ,
        //If result found, this function will be called.
        success: function (html) {
          console.log(Object.values(html.results[0]))
          document.getElementById('total_visits').innerHTML = Object.values(html.results[0])
        }
      })
}

// B. Total Confirmed Cases
totalCases();
function totalCases() {
      $.ajax({
        //AJAX type is "Post".
        type: "POST",
        //Data will be sent to "ajax.php".
        url: "/total_cases",
        contentType: 'application/json',
        datatype: 'json',
        //Data, that will be sent to "ajax.php".
        //data:  JSON.stringify({ dataSet : dataSet}) ,
        //If result found, this function will be called.
        success: function (html) {
          console.log(Object.values(html.results[0]))
          document.getElementById('total_cases').innerHTML = Object.values(html.results[0])
        }
      })
}