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

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">PlanBut</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/#">계획짜기</a></li>
					<li><a href="${pageContext.request.contextPath}/#">동행찾기</a></li>
					<li><a href="${pageContext.request.contextPath}/#">투어예약</a></li>
					<li><a href="${pageContext.request.contextPath}/#">여행지</a></li>
					<li><a href="${pageContext.request.contextPath}/board.do">광장</a></li>
					<li><a href="${pageContext.request.contextPath}/login.do">로그인</a></li>
					<li><a href="${pageContext.request.contextPath}/join.do">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- 
	<div class="header text-center">
	  <h1>플랜벗</h1>
	</div>
	 -->
