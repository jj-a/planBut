<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>
<style>
/* Set the size of the div element that contains the map */
#map {
	height: 400px; /* The height is 400 pixels */
	width: 100%; /* The width is the width of the web page */
}
</style>
<br />
<br />
<br />
<div class="item">hello!!</div>
<div class="item">${session_m_id }</div>
<div class="item">${session_m_type }</div>
<div id="map"></div>
<script>
	// Initialize and add the map
	function initMap() {
		// The location of Uluru
		var xy = {
			lat : 37.250943,
			lng : 127.028344
		};
		
		// The map, centered at Uluru
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 12,
			center : new google.maps.LatLng(37.250943,127.028344)
			//center : new google.maps.LatLng(2.8,-187.3)
		});
		// The marker, positioned at Uluru
		var marker = new google.maps.Marker({
			position : xy,
			map : map
		});
		
		var marker2 = new google.maps.Marker({
			position : new google.maps.LatLng(37.250943,126.028344),
			map : map
		});
	}
</script>
<!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBM_-xOIwPL0F_UknEZ1m-uLVM28-Wt_Ao&callback=initMap">
	
</script>
<%@include file="../footer.jsp"%>
