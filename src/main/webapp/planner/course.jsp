<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>

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

.day-list {
	text-align: center;
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
	<a href="course.do">일일경로</a>
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
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/home.do?plan_code=${article.plan_code}">플래너 홈</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/calendar.do?plan_code=${article.plan_code}">캘린더</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/gallery.do?plan_code=${article.plan_code}">사진</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/schedule.do?plan_code=${article.plan_code}">일정</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/planner/course.do?plan_code=${article.plan_code}">일일경로</a></li>
				</ul>
			</div>

			<!-- 컨텐츠 -->
			<div class="contents">

				<p>일일경로</p>

				<!-- 캘린더  -->
				<div class="calendar col-xs-4 col-md-3">
					<div class="list-group day-list">
					
						<!-- 저장된 도시계획 리스트 -->
						<a href="#" class="list-group-item day"><span class="glyphicon glyphicon-chevron-up"></span></a> 
						
						<c:set var = "num" value = "0" />
						<c:forEach var="cp" items="${cplist }">
							<c:set var="ct_name" value="${cp.city.ct_name }" />
							<c:set var="s_date" value="${fn: substring(cp.s_date,0,10) }" />
							<fmt:parseNumber var="dayNum" value="${cp.day }" /> <!-- 도시별 일수 -->
							<c:forEach var="i" begin="1" end="${dayNum }">
								<c:set var= "num" value="${num + 1}"/>
								<a href="#" class="list-group-item day">
									<span class="root-day">DAY&nbsp;${num}&nbsp;&nbsp;${ct_name }&nbsp;&nbsp;(${i }일차)</span>
								</a>
							</c:forEach>
						</c:forEach>
						
						<!-- 샘플 -->
						<!-- 
						<a href="#" class="list-group-item active">DAY 1</a> 
						<a href="#" class="list-group-item">DAY 2</a> 
						<a href="#" class="list-group-item">DAY 3</a>
						 -->
						<a href="#" class="list-group-item day"><span class="glyphicon glyphicon-chevron-down"></span></a>
					</div>
				</div>

				<!-- 지도 -->
				<div class="maps col-xs-8 col-md-9">
					<a href="${pageContext.request.contextPath}/plan/course.do?plan_code=${article.plan_code }" class="btn btn-default" role="button">경로 수정</a>
					<a href="${pageContext.request.contextPath}/plan/course.do">지도</a>
					
					<!-- 저장된 경로계획 리스트 -->
					<ul>
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
					</ul>
					
				</div>

			</div>
		</div>
	</div>
</div>

<!-- end Contents -->

<%@ include file="../footer.jsp"%>
