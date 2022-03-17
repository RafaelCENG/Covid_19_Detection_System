var map = L.map('map').setView([38.24664,21.734574], 16);


L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
}).addTo(map);



  // show the scale bar on the lower left corner
L.control.scale({imperial: true, metric: true}).addTo(map);
  

  // show a marker on the map
L.marker({lon: 0, lat: 0}).bindPopup('Πλατεία Γεωργίου').addTo(map);


// create control and add to map
var lc = L.control.locate().addTo(map);
// request location update and set location
lc.start();



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