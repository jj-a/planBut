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

.memo {
	background-color: #a8fff1;
}

.note-wrap {
	min-height: 1.5em;
}

.calendar-wrap, .note-wrap {
	/*height: 88vh;*/
	padding: 20px 20px 20px 20px;
}

/* calendar CSS */

#calendar-container {
	/*  position: fixed; */
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: 0 20px;
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

#notes {
	margin: 20px;
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
	<a href="calendar.do">캘린더</a>
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
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/planner/calendar.do?plan_code=${article.plan_code}">캘린더</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/gallery.do?plan_code=${article.plan_code}">사진</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/schedule.do?plan_code=${article.plan_code}">일정</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/course.do?plan_code=${article.plan_code}">일일경로</a></li>
				</ul>
			</div>

			<!-- 컨텐츠 -->
			<div class="contents">

				<!-- 캘린더 -->
				<div class="calendar-wrap col-xs-12 col-md-7">
					<!-- 캘린더 호출 -->
					<div id="calendar-container">
						<div id="calendar"></div>
					</div>
				</div>

				<!-- 메모 -->
				<div class="note-wrap col-xs-12 col-md-5 scrollable-menu">
					<div id="notes">
					<!-- 저장된 캘린더 메모 리스트 -->
					</div>
				</div>

			</div>
		</div>
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
			
			eventLimit : false, // true = allow "more" link when too many events
			events : dataset,	// cityplan 데이터 = 상단에  dto에서 입력받음
			eventColor: "pink", 
			contentHeight:"auto", 
			dateClick: function(info){
				//if(info.)
				//alert('clicked ' + info.dateStr);
				
				var date = info.dateStr;	// yyyy-MM-DD 형식 string 날짜
				
				// 캘린더 이벤트 가져오기
				var events = calendar.getEvents();
				//console.log(events);	// Chrome console창 출력
				
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
						//alert(event.title);
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

		$("#notes").empty();	// 기존 메모 리스트 비움
		$("<h3/>", { "class": "note-date text-center", "id": "date", 
			html: moment(date, "YYYY-MM-DD").format("M월 D일").toString()
		}).appendTo("#notes");	// 선택한 날짜
		
		// 도시계획별 메모리스트
		
		$.each(cplist, function(i, cp){

			// 도시계획 단위 div
			$("<div/>", {
			    "class": "cp",
			    html: [ 
					$("<span/>", { "id": "cp_code", html: cp.cp_code , "style": "display: none;"}), 
					//$("<span/>", { "id": "ct_code", html: cp.ct_code, "style": "display: none;"}), // 값이 애초에 없음
					$("<span/>", { "id": "date", html: date , "style": "display: none;"}), 
					$("<h3/>", { html: [
						$("<span/>", { "class": "root-city", "id": "ct_name", html: cp.ct_name }), " ", 
						$("<small/>", { "class": "root-city", "id": "day_idx", html: moment(date).diff(cp.s_date, "day")+1+"일차" }), " ",  
						$("<span/>", { "class": "bt-add", html: [
							$("<button/>", { "type": "button", "class": "add btn btn-default", 
								"onclick": "location.href='${pageContext.request.contextPath}/plan/calendar.do?plan_code=${article.plan_code }'", 
								html: [
									$("<span/>", { "class": "glyphicon glyphicon-pencil"}), 
									" 메모 관리"
								]
							})
						] })
					] }),
					$("<ul/>", { "class": "list well city-"+i}) // 메모 불러올 ul
			    ]
			}).appendTo("#notes");
			
		
			// calendar 테이블 데이터 조회
			$.ajax({
				type: "get",
				contentType: "application/json; charset=UTF-8", 
				url: "${pageContext.request.contextPath}/plan/calendar",
				data: {
					//cityplan: {plan_code: "${article.plan_code}"}, 
					plan_code: "${article.plan_code}", 
					cp_code: cp.cp_code,
					date: date
				},
				dataType: "json",
				async : false ,
				success: function (data) {
					console.log("ajax-calendar data:", data);	// chrome console에 출력
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
		
		//$("#notes ul.list").empty();	// 기존 메모 리스트 비움
		
		if(data.length!=0){
		
			$.each(data, function(i, cal){
		
				//alert(cal.ct_code);
	
				var ct_name=cal.city.ct_name;	// calendar테이블의 ct_code로 조회한 ct_name
				var order_code=cal.cityplan.order_code;
				var day=cal.cityplan.day;
				var date=cal.date.substring(0,10);
	
				// 목록 형태로 데이터 뿌리기
				$("<li/>", {
				    "class": "memo well",
				    html: [ 
						$("<span/>", { "id": "cal_code", html: cal.cal_code, "style": "display: none;" }), 
						$("<p/>", { "class": "root-date", "id": "memo", html: cal.memo })
				    ]
				}).appendTo("#notes ul.list.city-"+idx);
				
				
			}); // forEach end

		} else {
			$("<h6/>", { html:  "메모가 없습니다." }).appendTo("#notes ul.list.city-"+idx);
		} // if-else end

		
	}	// memoList() end
	
	</script>



<!-- end Contents -->

<%@ include file="../footer.jsp"%>
