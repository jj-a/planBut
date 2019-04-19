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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?ver=0.01">
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">PlanBut</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">


				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/plan/plan.do">계획짜기</a></li>
					<li><a href="${pageContext.request.contextPath}/mate/mate.do">동행찾기</a></li>
					<li><a href="${pageContext.request.contextPath}/tour/tour.do">투어예약</a></li>
					<li><a href="${pageContext.request.contextPath}/place/country.do">여행지</a></li>
					<li><a href="${pageContext.request.contextPath}/board.do">광장</a></li>

					<%-- 
					<li><a href="${pageContext.request.contextPath}/login.do">로그인</a></li>
 					--%>
					<li><a href="${pageContext.request.contextPath}/cart.do">장바구니</a></li>
					<%-- 
					<li><a href="${pageContext.request.contextPath}/join.do">회원가입</a></li>
					--%>
					<li>
						<div class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <!-- 드롭다운을 켜고 끌 링크나 버튼 -->
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a href="${pageContext.request.contextPath}/planner/home.do">마이페이지</a></li>
								<li><a href="${pageContext.request.contextPath}/member/modify.do">회원정보수정</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a></li>
							</ul>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</nav>