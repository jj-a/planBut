<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>
<style>
/* Set the size of the div element that contains the map */
#map {
	/* 지도 크기 지정 */
	height: 88vh; /* 뷰포트 - 화면 높이의 88% 비율 */
	width: 100%;
}
/* 
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
 */
div {
	padding-left: 0px !important;
	padding-right: 0px !important;
}

div.row {
	margin-right: 0px;
	margin-left: 0px;
}
</style>

<!-- Contents -->

<div class="container-fluid">
	<div class="row">


		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-4 col-md-3">

			<ul class="list-group" id="ul">
				<!-- <li class="list-group-item">
					<h3 class="root-city">런던</h3> <span class="root-day">3박</span> <span
					class="root-date">MM-DD ~ MM-DD</span> <span class="root-transport"></span>
				</li> -->
				
			</ul>


			<!-- 경로 부분 sample -->
			<div id="cityblock1" class="cityblock"
				style="position: relative; top: 0px; left: 0px;">
				<p class="trsinfo">
				<div style="padding-top: 0px; padding-bottom: 0px">
					<div
						style="float: left; width: 29px; height: 40px; border-right: 3px solid #3ad195;">&nbsp;</div>
					<div
						style="float: left; width: 150px; height: 40px; padding-top: 10px; margin-left: -25px;">
						<div
							style="border-radius: 3px; display: inline-block; text-align: center; padding-top: 2px; padding-bottom: 2px; margin-right: 3px; width: 50px; background: #3ad195; cursor: pointer;"
							class="div_btnTrsTool"
							onclick="showTrsTool('181071004','181071001','2019-05-22',1)">
							<font style="font-size: 9pt; color: #fff" id="trstype_txt_1">버스
								<i class="fa fa-chevron-circle-down"></i>
							</font>
						</div>
						&nbsp;<font style="font-size: 8pt; color: #c0c0c0"></font>
					</div>
					<div style="clear: both"></div>
				</div>
				</p>
				<div class="cityinfo">
					<div
						style="width: 29px; border-right: 3px solid #3ad195; height: 7px;"></div>
					<input type="hidden" class="cityserial" value="181071001">
					<div width="100%;overflow-x:hidden">
						<div
							style="float: left; width: 53px; height: 53px; padding-left: 7px; background: #fff; padding-top: 13px; border-radius: 100px; border: 3px solid #3ad195; cursor: pointer"
							class="div_mngSlp" onclick="mngSlp('아부다비','181071001',0,1)">
							<a class="a_mngSlp"
								href="javascript:mngSlp('아부다비','181071001',0,1)"><font
								style="color: #696969; font-size: 10pt; font-weight: bold"
								class="nights">1박 <i class="fa fa-angle-down"></i></font></a>
						</div>
						<div
							style="float: left; width: 215px; padding-left: 10px; padding-top: 7px;">
							<div style="float: left; width: 148px">
								<div>
									<font class="stubby_s_black"> 아부다비</font>&nbsp;<a
										class="btnDel" href="javascript:delCity(1)"><font
										style="font-size: 9pt; color: #c0c0c0"><i
											class="fa fa-times-circle"></i></font></a>
								</div>
								<div class="date_in_out">5월23일(목)~24일(금)</div>
							</div>
							<div style="float: left; padding-right: 5px; width: 57px;">
								<div id="cp_0"
									style="height: 52px; margin-top: -8px; text-align: center; padding-top: 3px; padding-bottom: 3px; border: 1px solid #efefef; background: #fff; border-radius: 8px;"
									onclick="showBucketList('0','아부다비','181071001',0)">
									<div>
										<font style="font-size: 19pt; color: #3ad195" id="cp_heart_0"><i
											class="fa fa-info-circle" aria-hidden="true"></i></font>
									</div>
									<div style="margin-top: -8px;">
										<span id="span_schd_cnt_0"
											style="font-size: 8pt; display: none;">0</span>
									</div>
								</div>
							</div>
						</div>
						<div style="clear: both"></div>
					</div>
					<div
						style="width: 29px; border-right: 3px solid #3ad195; height: 7px;"></div>
				</div>
			</div>


		</div>
		<!-- 좌측메뉴 end -->

		<!-- 우측 컨텐츠 -->
		<div class="row-fluid col-xs-8 col-md-9">

			<!-- 상단 메뉴 -->
			<div class="btn-group btn-group-justified" role="group"
				aria-label="Justified button group">
				<a
					href="${pageContext.request.contextPath}/plan/plan.do?plan_code=${article.plan_code}"
					class="btn btn-default" role="button">루트</a> <a
					href="${pageContext.request.contextPath}/plan/calendar.do?plan_code=${article.plan_code}"
					class="btn btn-default" role="button">일정</a> <a
					class="btn btn-default" role="button"></a> <a
					href="${pageContext.request.contextPath}/plan/create.do?plan_code=${article.plan_code}"
					class="btn btn-success" role="button">저장</a> <a
					href="${pageContext.request.contextPath}/plan/course.do?plan_code=${article.plan_code}"
					class="btn btn-info" role="button">다음단계로</a>
			</div>

			<!-- 버튼 형태 상단 메뉴 -->
			<!-- 
			<div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default">
						<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">루트</font></font>
					</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default">
						<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">일정</font></font>
					</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default">
						<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">저장</font></font>
					</button>
				</div>
			</div>
			-->

			<!-- 컨텐츠 -->
				<!-- Maps -->

				<div id="map"></div>
				<!-- 맵 -->
				<div id="floating-panel">
					<input onclick="removeLine();" type=button value="Remove line">
					<input onclick="addLine();" type=button value="Restore line">
				</div>
				<!-- <div id="legend">
					<h3>Legend</h3>
				</div>  범례 달꺼면 푸세요-->

				<!-- Maps end -->

			</div>
		</div>
	</div>
</div>

<script>
	//http://localhost:9090/planbut/plan/planTest.do
	var map;
	var linePath = new Array();//polyline 그릴 좌표 배열
	var flightPath; //polyline
	var cityDTOs = new Array(); //JSON 형식받을 Array (도시들 의 정보)
	var infowindowCons = new Array();
	
	<c:forEach var="cityDTO" items="${CityDTOs }">
	var cityDTO = new Object();
	cityDTO.ct_name = "${cityDTO.ct_name}";
	cityDTO.ct_code = "${cityDTO.ct_code}";
	cityDTO.c_code = "${cityDTO.c_code}";
	cityDTO.lat = "${cityDTO.lat}";
	cityDTO.lng = "${cityDTO.lng}";
	cityDTOs.push(cityDTO);
	</c:forEach>
	//CityDTOs.lastindexOf();
	//alert(typeof(cityDTOs)); 
	//alert(cityDTOs[1].ct_name ); 
	//alert(cityDTOs[1].lat ); 
	//alert(cityDTOs[1].lng ); 

	function initMap() {
		map = new google.maps.Map(document.getElementById('map'), {//지도에 띄우기
			zoom : 4,
			/* 줌옵션 
			1 : 세계
			5 : 대륙 / 대륙
			10 : 도시
			15 : 거리
			20 : 건물 
			 */
			center : new google.maps.LatLng(48.138082, 16.363455), //유럽 중앙쯤인 어딘가 48.138082, 16.363455
			mapTypeId : 'roadmap' //roadmap 기본값 생략 가능 roadmap,satellite,satellite,terrain  
		});//map 옵션 끝 ----------------------------

		

		cityDTOs.forEach(function(cityDTO) {
			/* xy=  {
					lat : cityDTO.lat,
					lng : cityDTO.lng
				}; */

			var marker = new google.maps.Marker({
				position : new google.maps.LatLng(cityDTO.lat,
						cityDTO.lng), //이형식으로도 가능
				//position : feature.position,// 위치 좌표
				//position : xy, //이형식으로도 가능
				//icon : icons[feature.type].icon, //아이콘 경로
				map : map, //어느 지도에 띄울지 지정
				info : cityDTO.ct_name
			});
				
			var content = cityDTO.ct_name
					+ '<br /> <input type="button" value="추가" onclick="addCity(\''
					+ infowindowCons.length + '\',\'' + cityDTO.ct_name + '\',\'' + cityDTO.lat
					+ '\',\'' + cityDTO.lng+ '\');" />';
			var infowindowCon = new google.maps.InfoWindow({
				content : content
			});
			infowindowCons.push(infowindowCon);
			//infowindowCons.lastIndexOf();
			//alert(infowindowCons.length);
			
			marker.addListener('click', function() {//마커마다 클릭이벤트
				map.setCenter(marker.getPosition());
				infowindowCon.open(map, marker);
			});

			// linePath.push(new google.maps.LatLng(cityDTO.lat,cityDTO.lng));
		});// CITY들 마커 띄우기 끝

	}//initMap 끝

	function addLine() {
		if (linePath.length>=2) {
			removeLine();
		}//if end	
		flightPath = new google.maps.Polyline({
			path : linePath,
			strokeColor : "#0000FF",
			strokeOpacity : 0.8,
			strokeWeight : 2,
			fillColor : "#0000FF",
			fillOpacity : 0.4
		});

		flightPath.setMap(map);
		
		
	}//addLine end

	function removeLine() {
		flightPath.setMap(null);
		flightPath = null;
	}//removeLine end
</script>
<script>
	function addCity(idx, ct_name, lat, lng) {
			
		var $li = $('<li class="list-group-item"><h3 class="root-city">'+ct_name+'</h3> <span class="root-day">3박</span><spanclass="root-date">MM-DD ~ MM-DD</span> <span class="root-transport"></span></li> ');
		$("#ul").append($li);
		
		
		linePath.push(new google.maps.LatLng(lat, lng));
		alert(linePath);
		addLine();
	}
</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnoA39g01shgSGItH57whv1WjBsYSQ9wA&callback=initMap">
	
</script>


<!-- end Contents -->


<%@include file="../footer.jsp"%>
