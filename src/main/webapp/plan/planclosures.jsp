<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>





<div id="map"></div>
<script>
	// This example creates a 2-pixel-wide red polyline showing the path of
	// the first trans-Pacific flight between Oakland, CA, and Brisbane,
	// Australia which was made by Charles Kingsford Smith.

	var map;
var service;
var infowindow;

function initMap() {
  var sydney = new google.maps.LatLng(-33.867, 151.195);

  infowindow = new google.maps.InfoWindow();

  map = new google.maps.Map(
      document.getElementById('map'), {center: sydney, zoom: 15});

  

  var service = new google.maps.places.PlacesService(map);

 
}
</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnoA39g01shgSGItH57whv1WjBsYSQ9wA&callback=initMap">
</script>
<%@include file="../footer.jsp"%>
