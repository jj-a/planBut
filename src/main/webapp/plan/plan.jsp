<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>
<style>
/* Set the size of the div element that contains the map */
#map {
	height: 400px; /* The height is 400 pixels */
	width: 100%; /* The width is the width of the web page */
}
#legend {
        font-family: Arial, sans-serif;
        background: #fff;
        padding: 10px;
        margin: 10px;
        border: 3px solid #000;
}
#legend h3 {
  margin-top: 0;
}
#legend img {
  vertical-align: middle;
}
</style>
<br />
<br />
<br />
<div id="map"></div>
    <div id="legend"><h3>Legend</h3></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {//지도에 띄우기
          zoom: 15,
          center: new google.maps.LatLng(-33.91722, 151.23064),
          mapTypeId: 'roadmap' //roadmap 기본값 생략 가능 roadmap,satellite,satellite,terrain  
        });

        var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
        var icons = {// 아이콘 분류, 경로
          parking: {
            name: 'Parking',
            icon: iconBase + 'parking_lot_maps.png'
          },
          library: {
            name: 'Library',
            icon: iconBase + 'library_maps.png'
          },
          info: {
            name: 'Info',
            icon: iconBase + 'info-i_maps.png'
          }
        };

        var features = [ //각좌표에 아이콘 지정
          {
            position: new google.maps.LatLng(-33.91721, 151.22630),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91539, 151.22820),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91747, 151.22912),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91910, 151.22907),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91725, 151.23011),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91872, 151.23089),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91784, 151.23094),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91682, 151.23149),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91790, 151.23463),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91666, 151.23468),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.916988, 151.233640),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91662347903106, 151.22879464019775),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.916365282092855, 151.22937399734496),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91665018901448, 151.2282474695587),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.919543720969806, 151.23112279762267),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91608037421864, 151.23288232673644),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91851096391805, 151.2344058214569),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91818154739766, 151.2346203981781),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91727341958453, 151.23348314155578),
            type: 'library'
          }
        ];

        // Create markers.
        features.forEach(function(feature) {
          var marker = new google.maps.Marker({
            position: feature.position,// 위치 좌표
            icon: icons[feature.type].icon, //아이콘 경로
            map: map, //어느 지도에 띄울지 지정
			info: '말풍선 안에 들어갈 내용'
          });
          var infowindowCon = new google.maps.InfoWindow({ content:'내용입니다'});
          marker.addListener('click', function() {//마커마다 클릭이벤트
        	    map.setCenter(marker.getPosition());
        	    infowindowCon.open(map,marker);
        	  });
        });
        
        var xy = {
    			lat : -33.91722,
    			lng : 151.23064
    		};
        var marker = new google.maps.Marker({// 일반 마커용로 센터에 표시
			position : xy,
			map : map,
			info: '말풍선 안에 들어갈 내용',
	        title: '제목(마우스오버하면 나옴)~' // 마우스 오버시에 나오는 이벤트
		});
        var content = "내용내용내용내용~"; // 말풍선 안에 들어갈 내용
        
        // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
        var infowindow = new google.maps.InfoWindow({ content: content});
 
        google.maps.event.addListener(marker, "click", function() {
    	    map.setCenter(marker.getPosition());
            infowindow.open(map,marker);
        });

        google.maps.event.addDomListener(window, 'load', initMap);
	
        var legend = document.getElementById('legend');
        for (var key in icons) {
          var type = icons[key];
          var name = type.name;
          var icon = type.icon;
          var div = document.createElement('div');
          div.innerHTML = '<img src="' + icon + '"> ' + name;
          legend.appendChild(div);
        }

        map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(legend);
      }
    </script>

    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBM_-xOIwPL0F_UknEZ1m-uLVM28-Wt_Ao&callback=initMap">
    </script>
<%@include file="../footer.jsp"%>
