<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@include file="../header.jsp"%>

<link href="${pageContext.request.contextPath}/css/fullcalendar/core/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/daygrid/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/timegrid/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/list/main.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/js/fullcalendar/core/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/interaction/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/daygrid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/timegrid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/list/main.js"></script>

<script src="${pageContext.request.contextPath}/js/moment.js"></script>

<style>
div.row div {
	padding-left: 0px !important;
	padding-right: 0px !important;
}

.calendar-wrap {
	background-color: #f0f99f;
	padding: 20px 20px 20px 20px;
}

.note-wrap {
	background-color: #cfb7ff;
	padding: 20px 20px 20px 20px;
}

.plan-info>li {
	height: 92vh;
}

/* calendar CSS */
html, body {
	overflow: hidden; /* don't do scrollbars */
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar-container {
	/*  position: fixed; */
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.fc-header-toolbar {
	/*
    the calendar will be butting up against the edges,
    but let's scoot in the header's buttons
    */
	padding-top: 1em;
	padding-left: 1em;
	padding-right: 1em;
}
</style>

<!-- Contents -->

<div class="container-fluid non-scrollable-menu">
	<div class="row">



		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-4 col-md-3">

			<!-- 플래너 정보 출력 -->
			<ul class="plan-info list-group" style="margin-bottom: 0;">
				<li class="list-group-item">
					<h3>${article.subject }</h3> <span>여행 시작일: ${fn:substring(article.s_date, 0,10)}</span> <span>인원: ${article.people }</span> <span>아이디:
						${article.m_id }</span> <span>플래너코드: ${article.plan_code }</span>
				</li>
			</ul>

		</div>
		<!-- 좌측메뉴 end -->

		<!-- 우측 컨텐츠 -->
		<div class="row-fluid col-xs-8 col-md-9">

			<!-- 상단 메뉴 -->
			<div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
				<a href="${pageContext.request.contextPath}/plan/plan.do?plan_code=${article.plan_code}" class="btn btn-default" role="button">루트</a> <a
					href="${pageContext.request.contextPath}/plan/calendar.do?plan_code=${article.plan_code}" class="btn btn-primary" role="button">일정</a> <a
					class="btn btn-default" role="button"></a>
				<c:choose>
					<c:when test="${session_m_id!=null}">
						<!-- 로그인 시 -->
						<a href="${pageContext.request.contextPath}/plan/create.do?plan_code=${article.plan_code}" class="btn btn-success" role="button">저장</a>
						<a href="${pageContext.request.contextPath}/plan/course.do?plan_code=${article.plan_code}" class="btn btn-info" role="button">다음단계로</a>
					</c:when>
					<c:when test="${empty session_m_id}">
						<!-- 비회원일 시 -->
						<a class="btn btn-default" role="button"></a>
						<a href="#loginmodal" class="btn btn-danger" role="button"> <span class="glyphicon glyphicon-lock"></span>&nbsp;비회원으로 작업중
						</a>
					</c:when>
				</c:choose>
			</div>

			<!-- 컨텐츠 -->
			<div class="contents">

				<!-- 플래너 정보 출력 -->
				<ul class="list-group" style="margin-bottom: 0;">
					<li class="list-group-item">
						<h3>${article.subject }</h3> <span>여행 시작일: ${fn:substring(article.s_date, 0,10)}</span> <span>인원: ${article.people }</span> <span>아이디:
							${article.m_id }</span> <span>플래너코드: ${article.plan_code }</span>
					</li>
				</ul>

				<!-- 캘린더 -->
				<div class=" calendar-wrap col-xs-12 col-md-6">

					<!-- 캘린더 호출 -->
					<div id="calendar-container">
						<div id="calendar"></div>
					</div>

				</div>


				<!-- 메모 -->
				<div class="note-wrap col-xs-12 col-md-6 scrollable-menu">

					<span>메모</span>

					<!-- 저장된 캘린더 메모 리스트 -->
					<ul style="height: 62vh">
						<c:forEach var="cal" items="${calendar }">
							<c:set var="ct_name" value="${cal.city.ct_name }" />
							<!-- calendar테이블의 ct_code로 조회한 ct_name -->
							<c:set var="order_code" value="${cal.cityplan.order_code }" />
							<c:set var="day" value="${cal.cityplan.day }" />
							<c:set var="date" value="${fn: substring(cal.date,0,10) }" />
							<li class="">
								<h3 class="root-city">${ct_name }</h3> <span class="root-date">${cal.memo }</span>
								<h5 class="root-date">${date }</h5> <span class="root-day">도시순서: ${order_code }</span> <span class="root-day">숙박일: ${day }</span>
							</li>
						</c:forEach>
					</ul>

				</div>

			</div>
		</div>
	</div>
</div>




<!-- 플래너 생성 창 -->
<div id="plannermodal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>새 플래너 생성</h2>
		<form name="planFrm" method="post" action="${pageContext.request.contextPath}/plan/plan.do" onsubmit="return loginCheck(this)">
			<input type="hidden" name="m_id" value="${session_m_id }">
			<div>
				<label for="">플래너 명</label>&nbsp;<input type="text" name="subject" id="subject" placeholder="ex) 나의 여행 플래너" required>
			</div>
			<div>
				<label for="">여행 시작일</label>&nbsp;<input type="text" name="s_date" id="s_date" placeholder="ex) 2019-05-01" required>
			</div>
			<div>
				<label for="">인원</label>&nbsp;<input type="text" name="people" id="people" placeholder="ex) 1" required>
			</div>
			<p>
				<input type="submit" value="플래너 생성" style="cursor: pointer">
			</p>
		</form>
	</div>
</div>


<!-- Script 스크립트 -->

<script>

var dataset = [
	<c:forEach var="cp" items="${cplist}" varStatus="status">
        <c:if test="${cp.s_date != ''}">
            {"id": "<c:out value='${cp.cp_code}' />"
            ,"title": "<c:out value='${cp.city.ct_name}' />"
            ,"start": "<c:out value='${cp.s_date}' />"
            <c:if test="${e_date != ''}">
                ,"end": "<c:out value='${cp.s_date}' />"
            </c:if>
            } <c:if test="${!status.last}">,</c:if>
        </c:if>
    </c:forEach>
];

	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid' ],
			defaultDate :  new Date(),	// 여행 시작일
			editable : true,
			eventLimit : true, // allow "more" link when too many events
			events : dataset	// 상단에  dto에서 입력받음
		});

		calendar.render();
	});
</script>


<script>
//////////////////// 부가 기능 Script ////////////////////

/* 플래너 미생성 시 동작 제어 */
$(function(){
	var plancode='${article.plan_code}';
	var m_id='${session_m_id}';
	if(plancode==""&&m_id!=""){
		location.href="${pageContext.request.contextPath}/plan.do";
	}else if(plancode!=""&&m_id==""){
		alert("비정상적인 접근입니다.");
		location.href="${pageContext.request.contextPath}/plan.do";
	}
});

/* 화면 스크롤 제거 */
$(function(){
	$("body").css("overflow", 'hidden');
});

</script>


<!-- end Contents -->


<%@include file="../footer.jsp"%>
