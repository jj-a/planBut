<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>
<style>
/* Set the size of the div element that contains the map */
#map {
	/* 지도 크기 지정 */
	height: 88vh;	/* 뷰포트 - 화면 높이의 88% 비율 */
	width: 100%;
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

div.row div {
padding-left: 0px  !important;
padding-right: 0px !important;
}

h4 {
	margin-bottom: 15px;
}


</style>

<!-- Contents -->

<div class="container-fluid">
	<div class="row">

		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-4 col-md-4" >
		
			<!-- 플래너 정보 출력 -->
			<ul class="plan-info list-group" style="margin-bottom: 0;">
				<li class="list-group-item">
					<h3>${article.subject }</h3>
					<span>여행 시작일: ${fn:substring(article.s_date, 0,10)}</span> 
					<span>인원: ${article.people }</span>
					<span>아이디: ${article.m_id }</span>
					<span>플래너코드: ${article.plan_code }</span>
				</li>
			</ul>
		
			<!-- 좌측 메뉴 1 -->
			<div class="sub-menu col-xs-4 col-md-4" >
				
				<!-- 1단계 플래너 루트 리스트 -->
			<div class="scrollable-menu">
				<ul class="list-group">
					
					<!-- 저장된 경로계획 리스트 -->
					<c:forEach var="csp" items="${csplist }">
						<c:set var="ct_name" value="${csp.cityplan.city.ct_name }" />
						<c:set var="order_code" value="${csp.cityplan.order_code }" />
						<c:set var="day" value="${csp.cityplan.day }" />
						<c:set var="date" value="${fn: substring(csp.date,0,10) }" />
						<li class="list-group-item">
							<h3 class="root-city">${ct_name }</h3> 
							<span class="root-city">${csp.course }</span> 
							<h5 class="root-date">${date }</h5>
							<h5 class="root-day">도시순서: ${order_code }</h5>
							<h5 class="root-day">숙박일: ${day }</h5>
						</li>
					</c:forEach>
					
					<!-- 저장된 도시계획 리스트 -->
					<c:forEach var="cp" items="${cplist }">
						<c:set var="ct_name" value="${cp.city.ct_name }" />
						<c:set var="s_date" value="${fn: substring(cp.s_date,0,10) }" />
						<li class="list-group-item">
							<h4 class="root-city">${ct_name }</h4> 
							<h6 class="root-date">${s_date } ~ ${e_date } (${cp.day }박)</h6> 
						</li>
						<fmt:parseNumber var="dayNum" value="${cp.day }" /> <!-- 도시별 일수 -->
						<c:forEach var="i" begin="1" end="${dayNum }">
							<li class="list-group-item"> 
								<h4 class="root-day">DAY ${i }</h4>
							</li>
						</c:forEach>
					</c:forEach>
			
				</ul>
			</div>
	
	
	
			</div>	<!-- 좌측메뉴 1 end -->
			
	
			<!-- 좌측 메뉴 2 -->
			<div class="sub-menu col-xs-8 col-md-8" >
				
				<!-- 2단계 플래너 루트 리스트 -->
				<div class="scrollable-menu">
					<ul class="list-group"  id="coureUL">

						<!-- 샘플 -->
<!-- 
						<li class="list-group-item">
							<h3 class="root-city"><span class="num" style="margin-right: 20px;">1</span>국회의사당</h3> 
							<span class="root-addr">주소</span>
						</li>
						<li class="list-group-item">
							<h3 class="select-root-city"><span class="num" style="margin-right: 20px;">2</span>대영미술관</h3> 
							<span class="root-addr">주소</span>
						</li>
						<li class="list-group-item">
							<h3 class="select-root-city"><span class="num" style="margin-right: 20px;">3</span>쉑쉑버거</h3>
							<span class="root-addr">주소</span>
						</li>
						<li class="list-group-item">
							<h3 class="select-root-city"><span class="num" style="margin-right: 20px;">4</span>내셔널갤러리</h3>
							<span class="root-addr">주소</span>
						</li>
						<li class="list-group-item">
							<h3 class="select-root-city"><span class="num" style="margin-right: 20px;">5</span>던트북스</h3>
							<span class="root-addr">주소</span>
						</li>
 -->
					</ul>
				</div>
				
			</div>	<!-- 좌측메뉴 2 end -->
		</div>
		<!-- 좌측메뉴 end -->
		

		<!-- 우측 컨텐츠 -->
		<div class="row-fluid col-xs-8 col-md-8">
		
			<!-- 상단 메뉴 -->
			<div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
				<a href="${pageContext.request.contextPath}/plan/plan.do?plan_code=${article.plan_code}" class="btn btn-primary" role="button">루트</a>
				<a href="${pageContext.request.contextPath}/plan/calendar.do?plan_code=${article.plan_code}" class="btn btn-default" role="button">일정</a> 
				<a class="btn btn-default" role="button"></a>
				<a href="${pageContext.request.contextPath}/plan/plan.do?plan_code=${article.plan_code}" class="btn btn-warning" role="button">이전단계로</a>
				<a href="${pageContext.request.contextPath}/plan/create.do?plan_code=${article.plan_code}" class="btn btn-success" role="button">저장</a>
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
			<div class="contents">

				<!-- Maps -->

				<div id="map"></div>
				
				<!-- Maps end -->

			</div>
		</div>
	</div>
</div>


<!-- Script 스크립트 -->


<script>
	//////////////////// 지도 관련 Script ////////////////////
	
	//http://localhost:9090/planbut/plan/planTest.do
	var map;
	var linePath = new Array();//polyline 그릴 좌표 배열
	var flightPath; //polyline
	var placelist = new Array(); //JSON 형식받을 Array (도시들 의 정보)
	var infowindowCons = new Array();
	
	<c:forEach var="placeDTO" items="${placelist }">//마커찍을 전체 도시들 정보 Array에 저장
		var placeDTO = new Object();
		
		placeDTO.pt_code = "${placeDTO.pt_code}";
		placeDTO.ct_code = "${placeDTO.ct_code}";
		placeDTO.p_code = "${placeDTO.p_code}";
		placeDTO.p_name = "${placeDTO.p_name}";
		placeDTO.address= "${placeDTO.address}";
		placeDTO.lat = "${placeDTO.lat}";
		placeDTO.lng = "${placeDTO.lng}";
		placeDTO.content = "${placeDTO.content}";
		
		placelist.push(placeDTO);
	//alert("${PlaceDTO.p_name}"+'${PlaceDTO.lat}');
	</c:forEach>
	//CityDTOs.lastindexOf();
	//alert(typeof(cityDTOs)); 
	//alert(placelist[1].lat ); 
	//alert(placelist[1].lng ); 
	
	

	function initMap() {
		map = new google.maps.Map(document.getElementById('map'), {//지도에 띄우기
			zoom : 12,
			/* 줌옵션 
			1 : 세계
			5 : 대륙 / 대륙
			10 : 도시
			15 : 거리
			20 : 건물 
			 */
			center : new google.maps.LatLng(48.85341, 2.3488), //유럽 중앙쯤인 어딘가 48.138082, 16.363455
			mapTypeId : 'roadmap' //roadmap 기본값 생략 가능 roadmap,satellite,satellite,terrain  
		});//map 옵션 끝 ----------------------------

		
		var icon = '';

		
		placelist.forEach(function(placeDTO) {	
			
			if (placeDTO.pt_code=="S1") {
				icon='./pic/see.png';
			}else if (placeDTO.pt_code=="S2") {				
				icon='./pic/food.png';
			}else {
				icon='./pic/shop.png';				
			}
			
			var marker = new google.maps.Marker({
				position : new google.maps.LatLng(
						placeDTO.lat,
						placeDTO.lng), //이형식으로도 가능
				//position : feature.position,// 위치 좌표
				//position : xy, //이형식으로도 가능
				icon : icon, //아이콘 경로
				map : map, //어느 지도에 띄울지 지정
				info : placeDTO.p_name
			});
				
			//alert(placeDTO.ct_name);
	
			var content = '<strong>'+placeDTO.p_name +'</strong><br />'+
							placeDTO.content +'<br />'+
							'<div style>'+placeDTO.address +'</div>'+
							'<br /> <input type="button" value="추가" onclick="addPlace(\''+placeDTO.p_name+'\', \''+placeDTO.p_code+'\', \''+placeDTO.pt_code+'\', \''+placeDTO.address+'\', \''+placeDTO.content+'\', \''+placeDTO.lat+'\', \''+placeDTO.lng+'\');" />';
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
		
		//플래너 에 입력되어있는 도시경로 가져와서 지도에 띄우기
		/* <c:forEach var="cp" items="${csplist }"> 
		linePath.push(new google.maps.LatLng(${cp.city.lat}, ${cp.city.lng}));
		addLine();
		</c:forEach> */
	}//initMap 끝
	
	

	function addLine() {
		if (linePath.length>=2) {
			removeLine();
		}//if end
		
		var lineSymbol = {
			path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
		};
			
		flightPath = new google.maps.Polyline({
			path : linePath,
			strokeColor : "red",//"#000000", 
			strokeOpacity : 0.8,  // 선의 불투명도 
			strokeWeight : 2, // 선의 두께 
			//fillColor : "#0000FF",
			//fillOpacity : 0.4,
			icons: [{
			    icon: lineSymbol,
			    offset: '100%'
			}]
		});

		flightPath.setMap(map);
	}//addLine end

	function removeLine() {
		flightPath.setMap(null);
		//flightPath = null;
	}//removeLine end
	
	//마커에서 추가버튼눌렀을떄 여행지 리스트에 추가
	//onclick="addPlace('+placeDTO.p_name+', '+placeDTO.p_code+', '+placeDTO.pt_code+', '+placeDTO.address+','+placeDTO.content+','+placeDTO.lat+', '+placeDTO.lng+')
	function addPlace(p_name, p_code, pt_code, address, content, lat, lng) {
		/* 
		var lis =  $('#coureUL').children();		
		lis.each(function(idx,li) {
				//alert( $(this).find("#day option:selected").val());
				daytoadd+=parseInt($(this).find("#day option:selected").val());
				s_date=moment("${article.s_date}").add('days', daytoadd).format("YYYY-MM-DD").toString();
				e_date=moment(s_date).add('days', 1).format("YYYY-MM-DD").toString();
		});	//lis.each end
 */
 		var $li= $(
 			'<li class="list-group-item">\n'+
			    '<h3 class="root-city"><span class="num" style="margin-right: 20px;">1</span>'+p_name+'</h3> '+
			    '<span>'+content+'</span>\n'+		    
			    '<span class="root-addr">주소 : '+address+'</span>\n'+		    
			'</li>');		
		
		$("#coureUL").append($li);
		
		linePath.push(new google.maps.LatLng(lat, lng));
		//alert(linePath);
		addLine();
		
	}//addCity() end

</script>

<!-- api key --><!-- 사용할 때만 활성화 -->

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnoA39g01shgSGItH57whv1WjBsYSQ9wA&callback=initMap&region=KR" >
</script> 
 
 

<script>
	//////////////////// 부가 기능 Script ////////////////////

	/* 플래너 미생성 시 동작 제어 */
	$(function(){
		var plancode='${article.plan_code}';
		if(plancode==""){
			//location.href="${pageContext.request.contextPath}/plan.do";
		}
	});

	/* 화면 스크롤 제거 */
	$(function(){
		$("body").css("overflow", 'hidden');
	});

</script>


<!-- end Contents -->


<%@include file="../footer.jsp"%>
