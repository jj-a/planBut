<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>

<link href="${pageContext.request.contextPath}/css/fullcalendar/core/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/daygrid/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/timegrid/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/list/main.css" rel="stylesheet" />

<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/moment.js"></script>	<!-- 날짜/시간 라이브러리 -->
<script src="${pageContext.request.contextPath}/js/fullcalendar/core/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/interaction/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/daygrid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/timegrid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/list/main.js"></script>

<style>
.sub-menu {
	background-color: #ffd1f4;
}

.tab-menu {
	background-color: #cfb7ff;
}

.contents {
	background-color: #eeeeee;
}

.maps {
	background-color: #aaaaaa;
}

.calendar {
	background-color: #f0f99f;
}

.gallary {
	background-color: #a8fff1;
}

div.wrap {
	padding: 20px 20px;
}

#calendar-container {
	max-width: 800px;
}

div.slide {
	padding: 0 15px;
}

.thumbnail-wrappper {
	width: 100%;
}

.thumbnail {
	position: relative;
	padding-top: 33%; /* 3:1 ratio */
	overflow: hidden;
}

.thumbnail .centered {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	-webkit-transform: translate(50%, 50%);
	-ms-transform: translate(50%, 50%);
	transform: translate(50%, 50%);
}

.thumbnail .centered img {
	position: absolute;
	top: 0;
	left: 0;
	max-width: 100%;
	height: auto;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	max-width: 100%;
	height: auto;
}
</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/mypage/planner.do">내 플래너</a> > 
	<a href="home.do">홈</a>
</h3>


<!-- Slide image header  슬라이드 이미지 헤더 -->

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

	<ol class="carousel-indicators">
		<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		<li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
	</ol>
	
	<div class="carousel-inner thumbnail-wrappper" role="listbox">
	
		<!-- 플래너 제목 텍스트 -->
		<div class="carousel-caption tp-caption revolution-ch1 sft start" data-x="center" data-hoffset="0" data-y="100" data-speed="1500" data-start="500"
			data-easing="Back.easeInOut" data-endeasing="Power1.easeIn" data-endspeed="300"
			style="transition: all 0s ease 0s; min-height: 0; min-width: 0; font-size: 40px; top: 40%; visibility: visible; opacity: 1; 
							transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, -0.0025, 0, 0, 0, 1);">
			${article.subject }
			<fmt:parseDate var="s_date" value="${fn:substring(article.s_date, 0,10)}" pattern="yyyy-MM-dd" />
			<fmt:formatDate var="s_date" value="${s_date}" pattern="yyyy년 MM월 dd일" />
			<h3>${s_date }부터 ${article.cityplan.daysum +1}일간 여행♥</h3>
		</div>
		
		<!-- 슬라이드 이미지 -->
		<div class="item active thumbnail">
			<div class="centered">
				<img class="img-responsive"  src="${pageContext.request.contextPath}/images/travel.jpg">
			</div>
		</div>
		
		<div class="item thumbnail">
			<div class="centered">
				<img class="img-responsive"  src="${pageContext.request.contextPath}/images/travel.jpg">
			</div>
		</div>
		
		<div class="item thumbnail">
			<div class="centered">
				<img class="img-responsive" src="${pageContext.request.contextPath}/images/travel.jpg">
			</div>
		</div>
		
	</div>
	
	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
		<span class="sr-only">Previous</span>
	</a> 
	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
		<span class="sr-only">Next</span>
	</a>
</div>

<!-- Slide image header  슬라이드 이미지 헤더  /-->


<div class="container-fluid">
	<div class="row">

		<div class="row-fluid col-xs-12 col-md-12">
			<!-- 상단 메뉴 -->
			<div class="tab-menu">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/planner/home.do?plan_code=${article.plan_code}">플래너 홈</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/calendar.do?plan_code=${article.plan_code}">캘린더</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/gallery.do?plan_code=${article.plan_code}">사진</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/schedule.do?plan_code=${article.plan_code}">일정</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/course.do?plan_code=${article.plan_code}">일일경로</a></li>
				</ul>
			</div>

			<!-- 컨텐츠 -->
			<div class="contents">

				<!-- 지도 -->
				<div class="map wrap col-xs-12 col-md-12">
					<h4>
						<span>지도</span> 
						<a href="${pageContext.request.contextPath}/plan/plan.do?plan_code=${article.plan_code }" class="btn btn-default" role="button">도시 수정</a>
					</h4>

					<div id="floating-panel"></div>
					
				</div> <!-- 지도 -->


				<!-- 캘린더  -->
				<div class="calendar wrap col-xs-12 col-md-6">
					<h4>
						<a href="${pageContext.request.contextPath}/planner/calendar.do?plan_code=${article.plan_code}">캘린더</a> 
						<a href="${pageContext.request.contextPath}/plan/calendar.do?plan_code=${article.plan_code }" class="btn btn-default" role="button">메모 관리</a>
					</h4>
					
						<!-- 캘린더 호출 -->
						<div id="calendar-container">
							<div id="calendar"></div>
						</div>
					
				</div> <!-- 캘린더 -->
				

				<!-- 사진 -->
				<div class="gallary wrap col-xs-12 col-md-6">
					<h4>
						<a href="${pageContext.request.contextPath}/planner/gallery.do?plan_code=${article.plan_code}">사진</a>
					</h4>
					
				</div> <!-- 사진 -->

			</div>
			
		</div>
	</div>
</div>


<!-- Script 스크립트 -->

<script>
//////////////////// 지도 관련 Script ////////////////////

	var map;
	
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

		

		google.maps.event.addDomListener(window, 'load', initMap);

		
		map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(legend);

	}//initMap 끝
	
</script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnoA39g01shgSGItH57whv1WjBsYSQ9wA&callback=initMap&region=KR" >
</script>



<script>
////////////////////달력 Script ////////////////////

	
	// cityplan 테이블 - 도시별 일정 dataset
	
	var dataset = [
		<c:forEach var="cp" items="${cplist}" varStatus="status">
		<c:set var="s_date" value="${fn:substring(cp.s_date, 0,10)}" property="time" />
			<c:set var="day" value="${cp.day+1}" />
	    <c:if test="${s_date != ''}">
	        {"id": "<c:out value='${cp.cp_code}' />"
	        ,"title": "<c:out value='${cp.city.ct_name}' />"
	        ,"start": "<c:out value='${s_date}' />" 
	        <c:if test="${cp.day > 1}">
	        ,"end": moment("${s_date}").add("${day}","d").format("YYYY-MM-DD").toString() // e_date = s_date+day
	        </c:if>
	        } <c:if test="${!status.last}">,</c:if>
	    </c:if>
	</c:forEach>
	];


	// 달력 로딩 / Calendar load
	
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid' ],
			header: {
			      left: 'prev',
			      center: 'title',
			      right: 'today next'
			    },
			defaultDate :  "${fn:substring(article.s_date, 0,10)}",	// 기본으로 보여질 일자 = 여행 시작일
			eventLimit : false, // true = allow "more" link when too many events
			events : dataset,	// cityplan 데이터 = 상단에  dto에서 입력받음
			eventColor: "pink",
			contentHeight:"auto"
			
		}); // calendar end

		calendar.render();
	}); // DOMContentLoaded Event func end

</script>




<!-- end Contents -->

<%@ include file="../footer.jsp"%>
