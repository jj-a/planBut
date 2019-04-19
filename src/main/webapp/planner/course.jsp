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
</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/mypage/planner.do">내 플래너</a> >
	<a href="course.do">일일경로</a>
</h3>

<div class="container-fluid">
	<div class="row">
		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-8 col-md-2">
			<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
				src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzIwMHgyMDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNmEzMGNiNDA0MSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE2YTMwY2I0MDQxIj48cmVjdCB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9Ijc0LjA2MjUiIHk9IjEwNC41NTYyNSI+MjAweDIwMDwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
				data-holder-rendered="true" style="width: 200px; height: 200px;">
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/planner/home.do" class="list-group-item active">내 플래너<span class="badge">1</span></a> 
				<a href="${pageContext.request.contextPath}/mypage/mymate.do" class="list-group-item">내 동행</a> 
				<a href="${pageContext.request.contextPath}/mypage/reservation.do" class="list-group-item">내 투어예약</a> 
				<a href="${pageContext.request.contextPath}/member/modify.do" class="list-group-item">내 정보 수정</a>
			</div>
		</div>

		<div class="row-fluid col-xs-12 col-md-10">
			<!-- 상단 메뉴 -->
			<div class="tab-menu">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/home.do">플래너 홈</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/calendar.do">캘린더</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/gallery.do">사진</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/schedule.do">일정</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/planner/course.do">일일경로</a></li>
				</ul>
			</div>

			<!-- 컨텐츠 -->
			<div class="contents">

				<p>일일경로</p>

				<!-- 캘린더  -->
				<div class="calendar col-xs-4 col-md-3">
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/planner/home.do" class="list-group-item"><span class="glyphicon glyphicon-chevron-up"></span></a> 
				<a href="${pageContext.request.contextPath}/planner/home.do" class="list-group-item active">DAY 1</a> 
				<a href="${pageContext.request.contextPath}/mypage/mymate.do" class="list-group-item">DAY 2</a> 
				<a href="${pageContext.request.contextPath}/mypage/reservation.do" class="list-group-item">DAY 3</a> 
				<a href="${pageContext.request.contextPath}/member/modify.do" class="list-group-item"><span class="glyphicon glyphicon-chevron-down"></span></a>
			</div>
				</div>

				<!-- 지도 -->
				<div class="maps col-xs-8 col-md-9">
					<a href="${pageContext.request.contextPath}/plan/course.do">지도</a>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- end Contents -->

<%@ include file="../footer.jsp"%>
