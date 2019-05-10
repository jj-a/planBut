<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>

<script src="${pageContext.request.contextPath}/js/moment.js"></script>	<!-- 날짜/시간 라이브러리 -->

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

li.day:hover {
	cursor: pointer;
	background:
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
			<div class="day-wrap scrollable-menu">
				<div class="day-list list-group">
					
					<!-- 저장된 도시계획 리스트 -->
					
				</div>
			</div>
	
	
				<!-- 경로 부분 sample -->
				<div id="cityblock1" class="cityblock" style="position: relative; top: 0px; left: 0px;">
					<p class="trsinfo">
						<div style="padding-top: 0px; padding-bottom: 0px">
							<div style="float: left; width: 29px; height: 40px; border-right: 3px solid #3ad195;">&nbsp;</div>
							<div style="float: left; width: 150px; height: 40px; padding-top: 10px; margin-left: -25px;">
								<div
									style="border-radius: 3px; display: inline-block; text-align: center; padding-top: 2px; padding-bottom: 2px; margin-right: 3px; width: 50px; background: #3ad195; cursor: pointer;"
									class="div_btnTrsTool" onclick="showTrsTool('181071004','181071001','2019-05-22',1)">
									<font style="font-size: 9pt; color: #fff" id="trstype_txt_1">버스 <i class="fa fa-chevron-circle-down"></i></font>
								</div>
								&nbsp;<font style="font-size: 8pt; color: #c0c0c0"></font>
							</div>
							<div style="clear: both"></div>
						</div>
					</p>
					<div class="cityinfo">
						<div style="width: 29px; border-right: 3px solid #3ad195; height: 7px;"></div>
						<input type="hidden" class="cityserial" value="181071001">
						<div width="100%;overflow-x:hidden">
							<div
								style="float: left; width: 53px; height: 53px; padding-left: 7px; background: #fff; padding-top: 13px; border-radius: 100px; border: 3px solid #3ad195; cursor: pointer"
								class="div_mngSlp" onclick="mngSlp('아부다비','181071001',0,1)">
								<a class="a_mngSlp" href="javascript:mngSlp('아부다비','181071001',0,1)"><font style="color: #696969; font-size: 10pt; font-weight: bold"
									class="nights">1박 <i class="fa fa-angle-down"></i></font></a>
							</div>
							<div style="float: left; width: 215px; padding-left: 10px; padding-top: 7px;">
								<div style="float: left; width: 148px">
									<div>
										<font class="stubby_s_black"> 아부다비</font>&nbsp;<a class="btnDel" href="javascript:delCity(1)"><font
											style="font-size: 9pt; color: #c0c0c0"><i class="fa fa-times-circle"></i></font></a>
									</div>
									<div class="date_in_out">5월23일(목)~24일(금)</div>
								</div>
								<div style="float: left; padding-right: 5px; width: 57px;">
									<div id="cp_0"
										style="height: 52px; margin-top: -8px; text-align: center; padding-top: 3px; padding-bottom: 3px; border: 1px solid #efefef; background: #fff; border-radius: 8px;"
										onclick="showBucketList('0','아부다비','181071001',0)">
										<div>
											<font style="font-size: 19pt; color: #3ad195" id="cp_heart_0"><i class="fa fa-info-circle" aria-hidden="true"></i></font>
										</div>
										<div style="margin-top: -8px;">
											<span id="span_schd_cnt_0" style="font-size: 8pt; display: none;">0</span>
										</div>
									</div>
								</div>
							</div>
							<div style="clear: both"></div>
						</div>
						<div style="width: 29px; border-right: 3px solid #3ad195; height: 7px;"></div>
					</div>
				</div>
	
	
			</div>	<!-- 좌측메뉴 1 end -->
			
	
			<!-- 좌측 메뉴 2 -->
			<div class="sub-menu col-xs-8 col-md-8" >
				
				<!-- 2단계 플래너 루트 리스트 -->
				<div class="csp-wrap scrollable-menu">
					<ul class="csp-list list-group" id="coureUL">
						
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

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnoA39g01shgSGItH57whv1WjBsYSQ9wA&callback=initMap&region=KR" >
</script>
 
 
<script>
	//////////////////// 비동기통신(Ajax) Script ////////////////////
	
	
	$(function(){
		
		loadCityplan();	// 페이지 로드 시 도시계획 정보 가져오기
		$("#day-bt").get(0).click();
		
	});
	

	// 도시계획 정보&버튼 로드
	function loadCityplan(){
	
		$(".sub-menu .day-list").empty();	// 기존 도시계획 부분 비움

		// 저장된 도시계획 리스트
//		$.each(cplist, function(i, cp){	// java 객체 변환못해서 동작안됨
		<c:forEach var="cp" items="${cplist }" varStatus="status">
			<c:set var="ct_name" value="${cp.city.ct_name }" />
			<c:set var="s_date" value="${fn: substring(cp.s_date,0,10) }" />
			
			var cp_code =  "${cp.cp_code }";
			var ct_name = "${cp.city.ct_name }";
			var day = parseInt("${cp.day }");
			var s_date = "${fn: substring(cp.s_date,0,10) }";
			var e_date = moment(s_date).add(day, "d").format("YYYY-MM-DD").toString();
			
			// 출력 //
			$("<li/>", {
			    "class": "cp list-group-item city-${status.index}",	// TODO: class에 index이름 붙이기
			    html: [ 
					$("<span/>", { "class": "root-city", "id": "cp_code", html: cp_code, "style": "display: none;" }),
					$("<h4/>", { "class": "root-city", "id": "ct_name", html: ct_name }),
					$("<h6/>", { "class": "root-date", html: [
						s_date, 
						" ~ ", 
						e_date, 
						" ("+day+"박)"
					] })
			    ]
			}).appendTo(".sub-menu .day-list");
			// 출력 //
			
			//var dayNum = parseInt(day);	// 도시별 일수
			
			for(var i=1; i<=day+1; i++){ // 1~dayNum 반복 (1~dayNum+1)

				// 출력 //
				$("<a/>", {
					"class": "day list-group-item",
					"id": "day-bt", 
					"href": "javascript:void(0)",
					html: [ 
						$("<h4/>", { "class": "root-day", "id": "day", html: "DAY "+i }),
						$("<h6/>", { "class": "root-date", "id": "date", html: moment(s_date).add(i-1, "d").format("YYYY-MM-DD").toString() })
					]
				}).appendTo(".sub-menu .day-list .cp.city-${status.index}");
				// 출력 //
			
			}; // for end
		</c:forEach>
//		}); // forEach end
		
		
	} // loadCityplan() end

	
	// DAY 클릭 시
	$(document).on("click", ".cp a.day", function() {
		console.log(this);
			$(".cp a.day").removeClass("active");
			$(this).addClass("active");
	
			var cp_code = $(this).parent().children("#cp_code").get(0).innerText;
			var date = $(this).children("#date").get(0).innerText;
			//console.log(cp_code);
			//console.log(date);
			
			saveCourse(cp_code, date);	//
			viewCourse(cp_code, date);	//
		
	});

	function viewCourse(cp_code, date){

		// ① courseplan 테이블 데이터 조회
		$.ajax({
			type : "get",
			contentType : "application/json; charset=UTF-8",
			url : "${pageContext.request.contextPath}/plan/courseplan",
			data : {
				plan_code : "${article.plan_code}",
				cp_code : cp_code,
				date : date
			},
			dataType : "json",
			async : false,
			success : function(data) {
				console.log(data); // chrome console에 출력
				courseList(data); // 일별 경로
			},
			error : function(xhr, status, error) {
				alert("Error! " + error);
			}
		}); // ajax end
		
	} // viewCourse() end
	
	function saveCourse(cp_code, date){
/* 
		// ① courseplan 테이블 데이터 조회
		$.ajax({
			type : "get",
			contentType : "application/json; charset=UTF-8",
			url : "${pageContext.request.contextPath}/plan/courseplan",
			data : {
				plan_code : "${article.plan_code}",
				cp_code : cp_code,
				date : date
			},
			dataType : "json",
			async : false,
			success : function(data) {
				console.log(data); // chrome console에 출력
				courseList(data); // 일별 경로
			},
			error : function(xhr, status, error) {
				alert("Error! " + error);
			}
		}); // ajax end
		 */
	} // saveCourse() end

	

	// 일별 경로 출력
	function courseList(data){
		
		$(".sub-menu .csp-list").empty();	// 기존 경로 리스트 비움
		
		if(data.length!=0){	// data가 있을 때만 동작
	
			var csp = data[0];
			
			// 저장된 경로계획 리스트
			var ct_name = csp.cityplan.city.ct_name;
			var order_code = csp.cityplan.order_code;
			var day = csp.cityplan.day;
			var date = csp.date.substring(0,10);
			
			var course = csp.course;
			var p_list = course.split(",");
			//console.log(p_list);
			
			// parameter 저장용 출력 //
			$("<li/>", {
			    "class": "csp list-group-item",
			    html: [ 
					$("<h4/>", { "class": "root-city", "id": "ct_name", html: ct_name }),
					$("<span/>", { "class": "root-city", "id": "course", html: course }),
					$("<h5/>", { "class": "root-date", "id": "date", html: date }), 
					$("<h5/>", { "class": "root-day", "id": "order_code", html: order_code }), 
					$("<h5/>", { "class": "root-day", "id": "day", html: day })
			    ], 
			    "style": "display: none;"	// 숨김
			}).appendTo(".sub-menu .csp-list");
			
			
			// 경로 리스트에 관광지 정보 매칭
			
			$.each(p_list, function(idx, p_code){
						
				// ② place 테이블 데이터 조회
				$.ajax({
					type: "get",
					contentType: "application/json; charset=UTF-8", 
					url: "${pageContext.request.contextPath}/plan/course",
					data: {
						p_code: p_code
					},
					dataType: "json",
					async : false ,
					success: function (data) {
						console.log(data);	// chrome console에 출력
						placeInfo(data, idx);	// 관광지(코스) 정보
					},
	/* 				error: function (xhr, status, error) {
						//alert("Error! " + error);
					} */
				}); // ajax end
				
				
			}); // forEach end
		
		} // if end
		
	}	// courseList() end


	
	// 코스(경로) 출력
	function placeInfo(data, idx){

		// 목록 형태로 데이터 뿌리기
		$("<li/>", {
		    "class": "root list-group-item",
		    html: [ 
				$("<span/>", { "class": "root-place", "id": "p_code", html: data.p_code, "style": "display: none;" }),
				$("<h3/>", { "class": "root-place", html: [
					$("<span/>", { "class": "num", html: idx+1, "style": "margin-right: 20px;" }),
					$("<span/>", { "class": "root-place", "id": "p_name", html: data.p_name })
				] }),
				$("<span/>", { "class": "root-addr", "id": "address", html: data.address })
		    ]
		}).appendTo(".sub-menu .csp-list");
		
	
	}	// placeInfo() end
	
	
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
