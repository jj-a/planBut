<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>플랜벗</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?ver=0.02">
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js?ver=0.00"></script>
<style>
.modalDialog {
	position: fixed;
	font-family: Arial, Helvetica, sans-serif;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: rgba(0, 0, 0, 0.8);
	z-index: 99999;
	opacity: 0;
	-webkit-transition: opacity 400ms ease-in;
	-moz-transition: opacity 400ms ease-in;
	transition: opacity 400ms ease-in;
	pointer-events: none;
}

.modalDialog:target {
	opacity: 1;
	pointer-events: auto;
}

.modalDialog>div {
	width: 400px;
	position: relative;
	margin: 10% auto;
	padding: 5px 20px 13px 20px;
	border-radius: 10px;
	background: #fff;
	background: -moz-linear-gradient(#fff, #999);
	background: -webkit-linear-gradient(#fff, #999);
	background: -o-linear-gradient(#fff, #999);
}

label {
	width: 80px;
}

.close {
	background: #606061;
	color: #FFFFFF;
	line-height: 25px;
	position: absolute;
	right: -12px;
	text-align: center;
	top: -10px;
	width: 24px;
	text-decoration: none;
	font-weight: bold;
	-webkit-border-radius: 12px;
	-moz-border-radius: 12px;
	border-radius: 12px;
	-moz-box-shadow: 1px 1px 3px #000;
	-webkit-box-shadow: 1px 1px 3px #000;
	box-shadow: 1px 1px 3px #000;
}

.close:hover {
	background: #4a8ef9;
}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<!-- header -->

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
					<li><a href="${pageContext.request.contextPath}/mate/list.do">동행찾기</a></li>
					<li><a href="${pageContext.request.contextPath}/tour/tour.do">투어예약</a></li>
					<li><a href="${pageContext.request.contextPath}/place/country.do">여행지</a></li>
					<li><a href="${pageContext.request.contextPath}/board.do">광장</a></li>
					<c:choose>
						<c:when test="${empty session_m_id}"><!-- 비회원 -->
							<li><a href="#loginmodal">로그인</a></li> <!-- 얘 왜 active클래스 계속 들어가나요 -->
							<li><a href="${pageContext.request.contextPath}/member/register.do">회원가입</a></li>
						</c:when>
						<c:otherwise><!-- 회원 -->
							<li><a href="${pageContext.request.contextPath}/tour/cart.do">장바구니</a></li>
							<li><!-- 드롭다운 메뉴 -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <!-- 드롭다운을 켜고 끌 링크나 버튼 --> 
										<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li role="separator" class="divider"></li>
										<li><a href="${pageContext.request.contextPath}/mypage">마이페이지</a></li>
										<li><a href="${pageContext.request.contextPath}/member/modify.do">회원정보수정</a></li>
										<li><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a></li>
									</ul>
								</div>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
	${msgh }
	
	<!-- 로그인 모달 -->
	<div id="loginmodal" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>로그인</h2>
			<form name="loginFrm" method="post" action="/planbut/member/login.do" onsubmit="return loginCheck(this)">
				<div><label for="m_id">Username</label>&nbsp;<input type="text" name="m_id" id="m_id" placeholder="" required></div>
				<div><label for="password">Password</label>&nbsp;<input type="password" name="password" id="password" placeholder="" required></div>
				<p><input type="submit" value="로그인" style="cursor: pointer"></p>
				<p>
					아이디 저장 <input type="checkbox" name="c_id" value="SAVE">&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/member/register.do">회원가입</a>&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/member/find.do"> 아이디/비번찾기</a>
				</p>
			</form>
		</div>
	</div>
	
	<!-- header end -->
	
	