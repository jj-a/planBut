<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@include file="../header.jsp"%>

<link href="${pageContext.request.contextPath}/css/fullcalendar/core/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/daygrid/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/timegrid/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fullcalendar/list/main.css" rel="stylesheet" />

<script src="./jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/moment.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/core/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/interaction/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/daygrid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/timegrid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar/list/main.js"></script>


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
					<h3>${article.subject }</h3> 
					<span>여행 시작일: ${fn:substring(article.s_date, 0,10)}</span> 
					<span>인원: ${article.people }</span> 
					<span>아이디: ${article.m_id }</span> 
					<span>플래너코드: ${article.plan_code }</span>
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
				<!-- 
				<ul class="list-group" style="margin-bottom: 0;">
					<li class="list-group-item">
						<h3>${article.subject }</h3> 
						<span>여행 시작일: ${fn:substring(article.s_date, 0,10)}</span> 
						<span>인원: ${article.people }</span> 
						<span>아이디: ${article.m_id }</span> 
						<span>플래너코드: ${article.plan_code }</span>
					</li>
				</ul>
				 -->
				<!-- 캘린더 -->
				<div class=" calendar-wrap col-xs-12 col-md-7">

					<!-- 캘린더 호출 -->
					<div id="calendar-container">
						<div id="calendar"></div>
					</div>

				</div>


				<!-- 메모 -->
				<div class="note-wrap col-xs-12 col-md-5 scrollable-menu">

					<div id="notes" style="height: 62vh">
						<h3 class="note-date text-center"></h3>
						<!-- 저장된 캘린더 메모 리스트 -->
						<!-- <ul class="list"></ul> -->
					</div>

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
			editable : false,	// 수정(드래그) 가능 여부
			selectable: true,	// 선택 가능 여부
			
			// TODO: 이벤트(도시계획)가 있는 날짜만 선택되도록 수정하기
			/* 
			selectAllow: function(selectInfo) {
				//since we're only interested in whole days, set all times to the start/end of their respective day
				selectInfo.start.startOf("day");
				selectInfo.end.startOf("day");
				
				var evts = $("#calendar").fullCalendar("clientEvents", function(evt) {
					var st = evt.start.clone().startOf("day");
					if (evt.end) { 
						var ed = evt.end.clone().startOf("day"); 
					}
					else { 
						ed = st; 
					}
					
					//return true if the event overlaps with the selection
					return (selectInfo.start.isSameOrBefore(ed) && selectInfo.end.isSameOrAfter(st));
				});
				
				//return true if there are no events overlapping that day
				return evts.length == 0;
			},
			 */
			eventLimit : true, // allow "more" link when too many events
			events : dataset,	// cityplan 데이터 = 상단에  dto에서 입력받음
			eventColor: "pink", 
			dateClick: function(info){
				//if(info.)
				//alert('clicked ' + info.dateStr);
				
				var date = info.dateStr;	// yyyy-MM-DD 형식 string 날짜
				
				// 캘린더 이벤트 가져오기
				var events = calendar.getEvents();
				console.log(events);	// Chrome console창 출력
				
				var cplist=new Array();	// 해당 날짜에 방문하는 도시 리스트

				$.each(events, function(i, event){
					// 선택 날짜가 이벤트 범위에 들어가면 해당 이벤트 리스트에 저장
					if(info.date>=event.start && info.date<event.end){
						cplist.push({
							cp_code: event.id, 
							ct_name: event.title, 
							s_date: moment(event.start)//, 
							//e_date: event.end.substring(0,10)
						});
						alert(event.title);
					}
				}); // forEach end
				
				//cplist=JSON.stringify(cplist);	// list에 담긴 json Object를 String형으로 변환
				
				viewDate(date, cplist);	// 선택 날짜, 해당 도시계획 전달
				
			} // dateClick end
			/* 
			, dayRender: function (date, cell) {
				if (date.isSame('2019-05-05')) {
					cell.css("background-color","red");
				}
		    }
			 */
		}); // calendar end

		calendar.render();
	}); // DOMContentLoaded Event func end
	
	
	
	// 달력 일자 클릭 시 
	function viewDate(date, cplist){
		// date: 선택 날짜, cplist: 해당 도시계획

		$("#notes .note-date").html(date);	// 선택한 날짜

		$("#notes").empty();	// 기존 메모 리스트 지움
		
		// 도시계획별 메모리스트
		
		$.each(cplist, function(i, cp){

			// 도시계획 단위 div
			$("<div/>", {
			    "class": "cp",
			    html: [ 
					$("<h3/>", { "class": "root-city", html: cp.ct_name }), 
					$("<p/>", { "class": "bt-add", html: [
						$("<button/>", { "type": "button", "class": "btn btn-default", "onclick": "location.href='#'", html: [
							$("<span/>", { "class": "glyphicon glyphicon-pencil"}), 
							" 새 메모"
						] })
					] }),
					$("<ul/>", { "class": "list city-"+i}) // 메모 불러올 ul
			    ]
			}).appendTo("#notes");
			
		
			// calendar 테이블 데이터 조회
			$.ajax({
				type: "get",
				contentType: "application/json; charset=UTF-8", 
				url: "${pageContext.request.contextPath}/plan/calendar",
				data: {
					plan_code: "${article.plan_code}", 
					cp_code: cp.cp_code,
					date: date
				},
				dataType: "json",
				success: function (data) {
					console.log(data);	// chrome console에 출력
					memoList(data, i);	// 일별 메모
				},
				error: function (xhr, status, error) {
					alert("Error! " + error);
				}
			}); // ajax end
		
		}); // forEach end
		
		
	} // viewDate() end
	

	// 일별 메모 출력
	function memoList(data, idx){
		
		$("#notes ul.list").empty();	// 기존 메모 리스트 지움
		
		$.each(data, function(i, cal){
	
			//alert(cal.ct_code);

			var ct_name=cal.city.ct_name;	// calendar테이블의 ct_code로 조회한 ct_name
			var order_code=cal.cityplan.order_code;
			var day=cal.cityplan.day;
			var date=cal.date.substring(0,10);

			// 목록 형태로 데이터 뿌리기
			$("<li/>", {
			    "class": "memo",
			    html: [ 
					//$("<h3/>", { "class": "root-city", html: ct_name }), 
					$("<p/>", { "class": "root-date", html: cal.memo }),
					//$("<p/>", { "class': "root-date", html: date }), 
					$("<p/>", { "class": "root-day", html: "도시순서: "+order_code }),
					$("<p/>", { "class": "root-day", html: "숙박일: "+day }), 
					$("<p/>", { "class": "bt-delete", html: [
						$("<button/>", { "type": "button", "class": "btn btn-default btn-sm", "onclick": "location.href='#'", html: [
							$("<span/>", { "class": "glyphicon glyphicon-minus"}), 
							" 메모 삭제"
						] })
					] })
			    ]
			}).appendTo("#notes ul.list.city-"+idx);
			
			
		}); // forEach end
		
		
	}	// memoList() end
	
	
	
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
