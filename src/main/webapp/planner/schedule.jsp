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

.plans {
	background-color: #aaaaaa;
}

.trans, .ticket {
	background-color: #f0f99f;
}

.accomm, .tour {
	background-color: #a8fff1;
}
</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/planner/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/planner/">내 플래너</a> > 
	<a href="schedule.do">일정</a>
</h3>

<div class="container-fluid">
	<div class="row">
		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-6 col-md-2">
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
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/planner/schedule.do">일정</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/planner/course.do">일일경로</a></li>
				</ul>
			</div>

			<!-- 컨텐츠 -->
			<div class="contents">

				<p>일정</p>

				<!-- 도시별 일정 -->

				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">1. 도시명</h3>
					</div>
					<div class="panel-body">
						<ul>
							<!-- 교통  -->
							<li class="trans">교통</li>
							<!-- 숙소 -->
							<li class="accomm">숙소</li>
							<!-- 티켓 -->
							<li class="ticket">티켓</li>
							<!-- 투어 -->
							<li class="tour">투어</li>
						</ul>
					</div>
				</div>

				<div class="plans">
					2. 도시명
					<ul>
					
						<!-- 교통  -->
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">교통</h3>
							</div>
							<div class="panel-body">내용</div>
						</div>
						
						<!-- 숙소 -->
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">숙소</h3>
							</div>
							<div class="panel-body">내용</div>
						</div>
						
						<!-- 티켓 -->
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">티켓</h3>
							</div>
							<div class="panel-body">내용</div>
						</div>
						
						<!-- 투어 -->
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">투어</h3>
							</div>
							<div class="panel-body">내용</div>
						</div>
						
					</ul>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- end Contents -->

<%@ include file="../footer.jsp"%>
