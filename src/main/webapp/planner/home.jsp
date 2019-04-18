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
	<a href="home.do">마이페이지>내 플래너</a>
</h3>
<p>&nbsp;</p>

<!-- 좌측 메뉴 -->
<div class="sub-menu"></div>

<div class="wrapper">
	<!-- 상단 메뉴 -->
	<div class="tab-menu"></div>

	<!-- 컨텐츠 -->
	<div class="contents">

		<!-- 지도 -->
		<div class="maps"></div>


		<!-- 캘린더  -->

		<div class="calendar"></div>

		<!-- 사진 -->

		<div class="gallary"></div>

	</div>
</div>

<!-- end Contents -->

<%@ include file="../footer.jsp"%>
