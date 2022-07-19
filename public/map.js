var map = L.map('map')

console.log(current_user)

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
}).addTo(map);

  // show the scale bar on the lower left corner
L.control.scale({imperial: true, metric: true}).addTo(map);
var layerGroup = L.layerGroup().addTo(map);

// create control and add to map
var lc = L.control.locate().addTo(map);
// request location update and set location
lc.start();


// array to hold estimations of a place
let estimations = []





//creating the search bar and add to map
L.Control.geocoder().addTo(map);

//markers
// L.geoJSON(specific).addTo(map);


/*

$(document).ready(function(){
  $("#search").keyup(function(){
      var search = $(this).val();
      if(search != ""){
          $.ajax({
              url: 'http://localhost:5000/getUsers',
              type: 'GET',
              data: {search: name},
              dataType: 'json',
              success:function(response){
              
                  var len = response.length;
                  $("#display").empty();
                  for( var i = 0; i<len; i++){
                      var id = response[i]['id'];
                      var name = response[i]['name'];

                      $("#display").append("<li value='"+id+"'>"+name+"</li>");

                  }

                  // binding click event to li
                  $("#display li").bind("click",function(){
                      setText(this);
                  });

              }
          });
      }

  });

});
*/



const searchWrapper = document.querySelector('.wrapper');
const resultsWrapper = document.querySelector('.results');

$(document).ready(function() {
  //On pressing a key on "Search box"  This function will be called.
  $("#search").keyup(function() {
    //AJAX is called.
    var name = $('#search').val();
          $.ajax({
              //AJAX type is "Post".
              type: "POST",
              //Data will be sent to "ajax.php".
              url: "/getPoisNames",
              //Data, that will be sent to "ajax.php".
              data: {
                  //Assigning value of "name" into "search" variable.
                  search: name
              },
              //If result found, this funtion will be called.
              success: function(html) {
                let arr = html.names
              //  console.log(arr)
             //   console.log(html.names[0].name)
                let results = []
                if (name.length) {
                  results = arr.filter((item) => {
                    console.log("This item " + item.name)
                    return item.name.toLowerCase().includes(name.toLowerCase());
                  });
                }
               // populateMap(results);
                renderResults(results)
              }
          })
  })
})

let search = document.querySelector('#search')
let populate;
function test() {
  console.log("My results")
  console.log(new_results)
  search.value = ''
  resultsWrapper.innerHTML = '';
  let results = new_results.map(a => a.name);
  console.log("Results")
  console.log(results)
  $(document).ready(function() {
         $.ajax({
            //AJAX type is "Post".
            type: "POST",
            //Data will be sent to "ajax.php".
            url: "/getMarkers",
            contentType: 'application/json',
            datatype: 'json',
            //Data, that will be sent to "ajax.php".
            data:  JSON.stringify({ results : results}) ,
            //If result found, this function will be called.
            success: function (html) {
               populate = html.results
               moreInfo(populate)
            }
          })
  })
}

//   FUNCTIONS

// Function to find my current location
var lat,lng
function currentLocation() {
  map.on('locationfound',(e)=>{
    console.log(e);
    lat = e.latitude;
    lng = e.longitude;
  })
  now()
}
currentLocation();

function now() {
  console.log("My latlng " + lat,lng)
  return [lat,lng]
}

function renderResults(results) {
  if (!results.length) {
    return searchWrapper.classList.remove('show');
  }
  const content = results
    .map((item) => {
      return `<li>${item.name}</li>`;
    })
    .join('');

  searchWrapper.classList.add('show');
  resultsWrapper.innerHTML = `<ul>${content}</ul>`;
  new_results = results.slice()
  return new_results
}


function moreInfo(populate) {
  //clear layerGroup
  layerGroup.clearLayers();
  currentTime = getDateTime();
  estimations = []
  console.log('Pop',populate.length)
  for (i=0; i < populate.length; i++) {
    let dataSet = [populate[i].id,currentTime[7].toLowerCase(),currentTime[4]+1,currentTime[4]+2]
    console.log(dataSet)
    populateMap(dataSet,populate,i)
   }
}


// TESTING





// TESTING END

// Function to populate the map with pop-ups while searching inside the circle

function populateMap(dataSet,populate,i) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/getEstimation",
    contentType: 'application/json',
    datatype: 'json',
    //Data, that will be sent to "ajax.php".
    data:  JSON.stringify({ dataSet : dataSet}) ,
    //If result found, this function will be called.
    success: function (html) {
     const [lat,lng] =  now();
     let userPosition = [lat,lng]
     let thresholdDistance = 5000;    // In meters
     let numEstimation = 0;
     console.log(populate)
     console.log(html.results)
     console.log("Populate", populate.length)
     console.log("I = ", i)

     numEstimation = Object.values(html.results[0])[1] + Object.values(html.results[0])[2]

     if (numEstimation < 50) {
        customUrl = "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-green.png"
     }
     else if (numEstimation >= 50 && numEstimation <= 150) {
        customUrl = "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-orange.png"
     }
     else {
        customUrl = "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-red.png"
     }

     //ICON COLOURS
     var Icon = new L.Icon({
      iconUrl: customUrl,
      shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],        
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
     });

     var Popup = L.popup ()
      .setLatLng([populate[i].lat, populate[i].lng])
      .setContent(`My Estimation is ${numEstimation} ` + "Location Name "  + populate[i].name + visit)

     console.log(numEstimation)
     let guardedLocation = [populate[i].lat, populate[i].lng]
     console.log(populate[i].lat, populate[i].lng)
     console.log("New counter", i)
     // Create Button For the PopUp
    //  defineYourWaypointOnClick(e: any) {
    //  var container = L.DomUtil.create('div'),
    //  startBtn = this.createButton('Start from this location', container),
    //  destBtn = this.createButton('Go to this location', container);

    //  L.DomEvent.on(startBtn, 'click', () => {
    //   alert("toto");
    //  });
    
    //  L.DomEvent.on(destBtn, 'click', () => {
    //   alert("tata");
    //  });
    
    //  createButton(label: string, container: any) {
    //   var btn = L.DomUtil.create('button', '', container);
    //   btn.setAttribute('type', 'button');
    //   btn.innerHTML = label;
    //   return btn;
    //  }
    // }
     if(map.distance(userPosition, guardedLocation) >= thresholdDistance) {
       L.marker([populate[i].lat, populate[i].lng], {icon: Icon,}).on('click', markerOnClick).addTo(layerGroup)
       .bindPopup(Popup,visit); 
       }
     }
  })
}

function  popUpEstimation(html) {
  console.log("Res")
  console.log(html.results[0])
  estimations.push(html.results[0])
}

function getDateTime() {
  var now     = new Date(); 
  var year    = now.getFullYear();
  var month   = now.getMonth()+1; 
  var day     = now.getDate();
  var hour    = now.getHours();
  var minute  = now.getMinutes();
  var second  = now.getSeconds(); 
    // if(month.toString().length == 1) {
    //     month = '0'+month;
    // }
    if(day.toString().length == 1) {
        day = '0'+day;
    }   
    if(hour.toString().length == 1) {
        hour = '0'+hour;
    }
    if(minute.toString().length == 1) {
        minute = '0'+minute;
    }
    if(second.toString().length == 1) {
        second = '0'+second;
    }   
    var dateTime = day+'/'+month+'/'+year+' '+hour+':'+minute+':'+second;
    var dayInNumber = now.getDay()
    var dayOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];   
    return [dateTime,day,month,year,hour,minute,second,dayOfWeek[dayInNumber]]
}

// Function to add the visit in the database from user. Also he can add an estimation of people in the place if he wants.
let visit = `<button type="submit" class="leaflet-touch leaflet-control-geocoder-icon" onclick="showConfirmBox()">Click</button>`
//function addVisit(){
  function showConfirmBox() {
    document.getElementById("overlay").hidden = false;
  }
  function closeConfirmBox() {
    document.getElementById("overlay").hidden = true;
  }
  
// Function to get the Lat and Lng of the clicked Marker
var namePois;
var idPois;
function markerOnClick(e)
{
  console.log(e)
  //alert("hi. you clicked the marker at " + e.latlng.lat +e.latlng.lng);
  results = [e.latlng.lat,e.latlng.lng]
  console.log(results)
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/getNameIDPoiS",
    contentType: 'application/json',
    datatype: 'json',
    //Data, that will be sent to "ajax.php".
    data:  JSON.stringify({ results: results}) ,
    //If result found, this function will be called.
    success: function (html) {
      console.log(html.results)
      namePois = html.results[0].name
      idPois = html.results[0].id
    }
  })
}

  function isConfirm(answer) {
    console.log(new Date())
    visitTimestamp = new Date()
    visitTimestamp = visitTimestamp.toISOString().split('T')[0]+' '+visitTimestamp.toTimeString().split(' ')[0];
    console.log(visitTimestamp)
    let data = [current_user.id,current_user.username,namePois,idPois,visitTimestamp]
    if (answer) { 
      console.log(visitTimestamp)
      var n = prompt("Check your number", "Type your number here");
      n = parseInt(n);
      if (Number.isInteger(n)) {
        data.push(n)
        console.log(data)
        $.ajax({
          //AJAX type is "Post".
          type: "POST",
          //Data will be sent to "ajax.php".
          url: "/insertVisitation",
          contentType: 'application/json',
          datatype: 'json',
          //Data, that will be sent to "ajax.php".
          data:  JSON.stringify({ data: data}) ,
          //If result found, this function will be called.
          success: function (html) {
            console.log(html)
          }
        })
      }
      else {
        alert("The number is not an integer please try again")
        closeConfirmBox();
      }
    }
      else {
        data.push(0)
        $.ajax({
          //AJAX type is "Post".
          type: "POST",
          //Data will be sent to "ajax.php".
          url: "/insertVisitation",
          contentType: 'application/json',
          datatype: 'json',
          //Data, that will be sent to "ajax.php".
          data:  JSON.stringify({ data: data}) ,
          //If result found, this function will be called.
          success: function (html) {
            console.log(html)
          }
        })
      }
      closeConfirmBox();
}
//Function to add the user as a new confirmed case
function newCase() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/confirmedCase",
    datatype: 'json',
    //Data, that will be sent to "ajax.php".
    data:  {name: current_user.username},
    //If result found, this function will be called.
    success: function (html) {
      console.log(html)
    }
  })
}

// Function to check if the user is already a confirmed case
function checkCase(){
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/checkCase",
    datatype: 'json',
    //Data, that will be sent to "ajax.php".
    data:  {name: current_user.username},
    //If result found, this function will be called.
    success: function (html) {
      //console.log(html.results[0].time)
      if (html.results.length > 0 ) {
        var result = html.results[0].time
        var today = new Date();
        today = today.toISOString()     
        const DAY_UNIT_IN_MILLISECONDS = 24 * 3600 * 1000
        const diffInMilliseconds = new Date(today).getTime() - new Date(result).getTime()
        const diffInDays = diffInMilliseconds / DAY_UNIT_IN_MILLISECONDS
        console.log(diffInDays)
        if (diffInDays > 14) {
          newCase()
        }
        else {
          alert("Already a confirmed Case")
        }
      }
      else {
        newCase()
      }
    }
  })
}

document.getElementById('case').onclick = function() {
  if (confirm("Are you sure you are positive?") == true) {
    checkCase()
    console.log(current_user.username)

  } else {
    alert("You pressed Cancel!");
  }
}

// L.control.locate({
//   position: 'topleft',  // set the location of the control
//   drawCircle: true,  // controls whether a circle is drawn that shows the uncertainty about the location
//   follow: false,  // follow the user's location
//   setView: true, // automatically sets the map view to the user's location, enabled if `follow` is true
//   keepCurrentZoomLevel: false, // keep the current map zoom level when displaying the user's location. (if `false`, use maxZoom)
//   stopFollowingOnDrag: false, // stop following when the map is dragged if `follow` is true (deprecated, see below)
//   remainActive: false, // if true locate control remains active on click even if the user's location is in view.
//   markerClass: L.circleMarker, // L.circleMarker or L.marker
//   circleStyle: {},  // change the style of the circle around the user's location
//   markerStyle: {},
//   followCircleStyle: {},  // set difference for the style of the circle around the user's location while following
//   followMarkerStyle: {},
//   icon: 'fa fa-map-marker',  // class for icon, fa-location-arrow or fa-map-marker
//   iconLoading: 'fa fa-spinner fa-spin',  // class for loading icon
//   circlePadding: [0, 0], // padding around accuracy circle, value is passed to setBounds
//   metric: true,  // use metric or imperial units
//   onLocationError: function(err) {alert(err.message)},  // define an error callback function
//   onLocationOutsideMapBounds:  function(context) { // called when outside map boundaries
//           alert(context.options.strings.outsideMapBoundsMsg);
//   },
//   showPopup: true, // display a popup when the user click on the inner marker
//   strings: {
//       title: "Show me where I am",  // title of the locate control
//       popup: "You are within {distance} {unit} from this point",  // text to appear if user clicks on circle
//       outsideMapBoundsMsg: "You seem located outside the boundaries of the map" // default message for onLocationOutsideMapBounds
//   },
//   locateOptions: {}  // define location options e.g enableHighAccuracy: true or maxZoom: 10
// }).addTo(map);
