<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@include file="../header.jsp"%>

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
div.row div {
	padding-left: 0px !important;
	padding-right: 0px !important;
}

.calendar-wrap {
	background-color: #f0f99f;
}

.note-wrap {
	background-color: #ccdfff;
	opacity: 0.8;
}

.calendar-wrap, .note-wrap {
	height: 88vh;
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
						<!-- <ul class="list"></ul> -->
					</div>

				</div>

			</div>
		</div>
	</div>
</div>


<!-- Modal -->

<!-- 메모 추가 모달 창 -->
<div class="modal modal-center fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-center">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">새 메모 추가</h4>
			</div>
			<div class="modal-body">
				<!-- ajax 데이터 전송용 폼 -->
				<form name="addCalForm" id="addCalForm">
					<input type="hidden" name="cp_code" value=""> 
					<div>
						<label for="date">날짜</label>
						<input type="text" name="date" value="" maxlength="10"
							onkeyup="auto_date_format(event, this)" onkeypress="auto_date_format(event, this)" readonly>
					</div>
					<div>
						<label for="ct_name">도시</label>
						<input type="text" name="ct_name" value="" readonly>
					</div>
					<div>
						<label for="memo">메모</label>
						<textarea class="form-control noresize" name="memo" required></textarea>
					</div>
				</form><!-- form end -->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="addMemo()">저장</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>


<!-- 메모 수정 모달 창 -->
<div class="modal modal-center fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-center">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">메모 수정</h4>
			</div>
			<div class="modal-body">
				<!-- ajax 데이터 전송용 폼 -->
				<form name="editCalForm" id="editCalForm">
					<input type="hidden" name="cal_code" value=""> 
					<div>
						<label for="date">날짜</label>
						<input type="text" name="date" value="" maxlength="10"
						onkeyup="auto_date_format(event, this)" onkeypress="auto_date_format(event, this)">
					</div>
					<div>
						<label for="ct_name">도시</label>
						<input type="text" name="ct_name" value="" readonly>
					</div>
					<div>
						<label for="memo">메모</label>
						<textarea class="form-control noresize" name="memo" required></textarea>
					</div>
				</form><!-- form end -->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="editMemo()">저장</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>


<!-- 메모 삭제 모달 창 -->
<div class="modal modal-center fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-center modal-sm">
		<div class="modal-content">
			<div class="modal-header">
			</div>
			<div class="modal-body">
				<!-- ajax 데이터 전송용 폼 -->
				<form name="delCalForm" id="delCalForm">
					<input type="hidden" name="cal_code" value=""> 
					<div><h5 id="memo" class="text-center"></h5></div>
					<p>해당 메모를 삭제하시겠습니까?</p>
				</form><!-- form end -->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="deleteMemo()">삭제</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
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
								"data-toggle": "modal", "data-target": "#addModal", html: [
								$("<span/>", { "class": "glyphicon glyphicon-plus"}), 
								" 새 메모"
							] })
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
						$("<p/>", { "class": "root-date", "id": "memo", html: cal.memo }),
						//$("<p/>", { "class": "root-day", html: "숙박일: "+day }), 
						$("<p/>", { "class": "bt-edit", "style": "margin-top: 20px;", html: [
							$("<button/>", { "type": "button", "class": "edit btn btn-default btn-sm", 
								"data-toggle": "modal", "data-target": "#editModal", html: [
								$("<span/>", { "class": "glyphicon glyphicon-pencil"}), 
								" 메모 수정"
							] }),
							$("<button/>", { "type": "button", "class": "delete btn btn-default btn-sm", 
								"data-toggle": "modal", "data-target": "#deleteModal", html: [
								$("<span/>", { "class": "glyphicon glyphicon-minus"}), 
								" 메모 삭제"
							] })
						] })
				    ]
				}).appendTo("#notes ul.list.city-"+idx);
				
				
			}); // forEach end

		} else {
			$("<h6/>", { html:  "메모가 없습니다." }).appendTo("#notes ul.list.city-"+idx);
		} // if-else end

		
	}	// memoList() end
	
	
	
	// 메모 추가 버튼 클릭 시 - 모달창에 데이터 저장
	$(document).on("click", ".cp button.add", function() {
		
		//console.log("add element:", this); // chrome console에 출력
		//console.log("parents element:", $(this).closest(".cp")); // chrome console에 출력
		
		var cp_code = $(this).closest(".cp").children("#cp_code").get(0).innerText;
		var ct_name = $(this).closest(".cp").find("#ct_name").get(0).innerText;
		var date = $(this).closest(".cp").children("#date").get(0).innerText;
		console.log("cp_code:", cp_code);
		console.log("ct_name:", ct_name);
		console.log("date:", date);

		$("#addModal").find("input[name=cp_code]").val(cp_code);
		$("#addModal").find("input[name=ct_name]").val(ct_name);
		$("#addModal").find("input[name=date]").val(date);
		
	}); // onclick(add) end
	
	
	// 메모 수정 버튼 클릭 시 - 모달창에 데이터 저장
	$(document).on("click", ".cp button.edit", function() {
		
		//console.log("edit element:", this); // chrome console에 출력
		//console.log("parents element:", $(this).closest(".cp")); // chrome console에 출력
		
		var cal_code = $(this).closest("li.memo").find("#cal_code").get(0).innerText;
		var ct_name = $(this).closest(".cp").find("#ct_name").get(0).innerText;
		var date = $(this).closest(".cp").children("#date").get(0).innerText;
		var memo = $(this).closest("li.memo").find("#memo").get(0).innerText;
		console.log("cal_code:", cal_code);
		console.log("ct_name:", ct_name);
		console.log("date:", date);
		console.log("memo:", memo);

		$("#editModal").find("input[name=cal_code]").val(cal_code);
		$("#editModal").find("input[name=ct_name]").val(ct_name);
		$("#editModal").find("input[name=date]").val(date);
		$("#editModal").find("textarea[name=memo]").text(memo);
		
	}); // onclick(edit) end
	
	
	// 메모 삭제 버튼 클릭 시 - 모달창에 데이터 저장
	$(document).on("click", ".cp button.delete", function() {
		
		//console.log("delete element:", this); // chrome console에 출력
		//console.log("parents element:", $(this).closest(".cp")); // chrome console에 출력

		var cal_code = $(this).closest("li.memo").find("#cal_code").get(0).innerText;
		var memo = $(this).closest("li.memo").find("#memo").get(0).innerText;
		console.log("cal_code:", cal_code);
		console.log("memo:", memo);

		$("#deleteModal").find("input[name=cal_code]").val(cal_code);
		$("#deleteModal").find("h5#memo").text("\" "+memo+" \"");
		
	}); // onclick(delete) end
	
	
	
	// 캘린더 메모 추가
	function addMemo(){
		
		var dataset = $("form[name=addCalForm]").serialize();
		
		// calendar 테이블에 저장
		$.ajax({
			type: "post",
			url: "${pageContext.request.contextPath}/plan/cal-add",
			data: dataset, 
			dataType: "json",
			async : false ,
			success: function (result) {
				console.log("add result:", result);	// chrome console에 출력
				if(result!=0){	// 성공 시
					$("#addModal").modal("hide");
					alert("등록되었습니다.");
					// TODO: 부분 새로고침 혹은 페이지 전체 새로고침하기
					location.reload();
				}else{
					alert("오류가 발생하여 등록되지 않았습니다.");
				}
				
			},
			error: function (xhr, status, error) {
				alert("Error! " + error);
			}
		}); // ajax end
		
	} // addMemo() end
	
	
	// 캘린더 메모 수정
	function editMemo(){
		
		var dataset = $("form[name=editCalForm]").serialize();
		console.log(dataset);
		
		// calendar 테이블에 수정
		$.ajax({
			type: "put",
			//contentType: "application/json; charset=UTF-8", 
			//contentType: false,
			processData: false,
			url: "${pageContext.request.contextPath}/plan/cal-upd",
			data: dataset,
			dataType: "json",
			async : false ,
			success: function (result) {
				console.log("ajax edit result:", result);	// chrome console에 출력
				if(result!=0){	// 성공 시
					$("#editModal").modal("hide");
					alert("수정되었습니다.");
					// TODO: 부분 새로고침 혹은 페이지 전체 새로고침하기
					location.reload();
				}else{
					alert("오류가 발생하여 수정되지 않았습니다.");
				}
			},
			error: function (xhr, status, error) {
				alert("Error! " + error);
			}
		}); // ajax end
		
	} // editMemo() end
	
	
	// 캘린더 메모 삭제
	function deleteMemo(){
		
		var dataset = $("form[name=delCalForm]").serialize();
		
		// calendar 테이블에서 삭제
		$.ajax({
			type: "delete",
			url: "${pageContext.request.contextPath}/plan/cal-del",
			data: dataset,
			dataType: "json",
			async : false ,
			success: function (result) {
				console.log("ajax delete result:", result);	// chrome console에 출력
				if(result!=0){	// 성공 시
					$("#delModal").modal("hide");
					alert("삭제되었습니다.");
					// TODO: 부분 새로고침 혹은 페이지 전체 새로고침하기
					location.reload();
				}else{
					alert("삭제에 실패하였습니다.");
				}
			},
			error: function (xhr, status, error) {
				alert("Error! " + error);
			}
		}); // ajax end
		
	} // deleteMemo() end
	
	
	
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
}); // func end


/* 화면 스크롤 제거 */
$(function(){
	$("body").css("overflow", 'hidden');
}); // func end


/* 날짜 하이픈(-) 자동 입력 */
function auto_date_format( e, oThis ){
    
    var num_arr = [ 
        97, 98, 99, 100, 101, 102, 103, 104, 105, 96,
        48, 49, 50, 51, 52, 53, 54, 55, 56, 57
    ]
    
    var key_code = ( e.which ) ? e.which : e.keyCode;
    if( num_arr.indexOf( Number( key_code ) ) != -1 ){
        var len = oThis.value.length;
        if( len == 4 ) oThis.value += "-";
        if( len == 7 ) oThis.value += "-";
    }
    
} // auto_date_format() end


</script>


<!-- end Contents -->


<%@include file="../footer.jsp"%>
