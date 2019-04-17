<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp" %>

	<!-- Container (Portfolio Section) -->
	<div id="image-menu" class="container-fluid text-center">
		<div class="row text-center slideanim">
			<!-- 계획짜기 -->
			<div class="col-sm-6 main-menu main-left"
				onclick="window.location='${pageContext.request.contextPath}/plan/plan.do'" onmouseover="style='cursor:pointer;'">
				<p class="sub">계획짜기</p>
				<p>한번의 클릭으로 계획 뚝딱</p>
			</div>
			<!-- 동행찾기 -->
			<div class="col-sm-6 main-menu main-right"
				onclick="window.location='${pageContext.request.contextPath}/mate/mate.do'" onmouseover="style='cursor:pointer;'">
				<p class="sub">동행찾기</p>
				<p>내 계획에 맞는 동행 찾기</p>
			</div>
		</div>
		<br>
	</div>

<%@ include file="../footer.jsp" %>
	