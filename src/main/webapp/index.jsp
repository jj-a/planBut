<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>플랜벗</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?ver=0.00">
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">PlanBut</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/plan/plan.do">계획짜기</a></li>
					<li><a href="${pageContext.request.contextPath}/mate/mate.do">동행찾기</a></li>
					<li><a href="${pageContext.request.contextPath}/tour/tour.do">투어예약</a></li>
					<li><a href="${pageContext.request.contextPath}/place/country.do">여행지</a></li>
					<li><a href="${pageContext.request.contextPath}/board/list.do">광장</a></li>
					<li><a href="${pageContext.request.contextPath}/member/login.do">로그인</a></li>
					<li><a href="${pageContext.request.contextPath}/member/join.do">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- 
	<div class="header text-center">
	  <h1>플랜벗</h1>
	</div>
	 -->

	<!-- Container (Portfolio Section) -->
	<div id="image-menu" class="container-fluid text-center">
		<div class="row text-center">
			<!-- 계획짜기 -->
			<div class="col-sm-6 main-menu main-left" onclick="window.location='${pageContext.request.contextPath}/plan/plan.do'" onmouseover="style='cursor:pointer;'">
				<p class="sub">계획짜기</p>
				<p>한번의 클릭으로 계획 뚝딱</p>
			</div>
			<!-- 동행찾기 -->
			<div class="col-sm-6 main-menu main-right" onclick="window.location='${pageContext.request.contextPath}/mate/mate.do'" onmouseover="style='cursor:pointer;'">
				<p class="sub">동행찾기</p>
				<p>내 계획에 맞는 동행 찾기</p>
			</div>
		</div>
		<br>
	</div>

	<footer class="container-fluid text-center">
		<a href="#myPage" title="To Top"> <span class="glyphicon glyphicon-chevron-up"></span></a>
		<p>Copyright PlanBut 2019</p>
		<p>
			<a href="${pageContext.request.contextPath}/admin/">관리자</a>
		</p>
	</footer>

</body>
</html>
