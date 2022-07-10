var map = L.map('map')

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
}).addTo(map);

  // show the scale bar on the lower left corner
L.control.scale({imperial: true, metric: true}).addTo(map);
  

// create control and add to map
var lc = L.control.locate().addTo(map);
// request location update and set location
lc.start();





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
  //On pressing a key on "Search box" in "search.php" file. This function will be called.
  $("#search").keyup(function() {
    //AJAX is called.
    var name = $('#search').val();
          $.ajax({
              //AJAX type is "Post".
              type: "POST",
              //Data will be sent to "ajax.php".
              url: "/getUsers",
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
function test () {
  console.log("My results")
  console.log(new_results)
  search.value = ''
  resultsWrapper.innerHTML = '';
  populateMap(new_results)
}


//   FUNCTIONS

// Function to find my current location
function currentLocation() {
  map.on('locationfound',(e)=>{
   // console.log(e);
    lat = e.latlng.lat;
    lng = e.latlng.lng;
    console.log(lat,lng)
  })
}
currentLocation();

function renderResults(results) {
  if (!results.length) {
    return searchWrapper.classList.remove('show');
  }
  console.log(results)
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

// Fucntion to populate the map with pop-ups while searching inside the circle
function populateMap(new_results) {
  for(i = 0 ; i < new_results.length; i++) {
    console.log(pois[new_results.item.name].lat)
    //L.marker([pois[new_results.name].lat, pois[new_results.name].lng]).addTo(map);
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
