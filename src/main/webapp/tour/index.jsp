<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file='../header.jsp'%>

<style>
#tour1 {
	margin-top: 70px;
	margin-bottom: 30px;
	font-size: 50px;
	color: black;
	background: url(../images/tour_image1.jpg) no-repeat center;
	background-size: 100% 100%;
	height: 400px;
	clear: both;
}

#tour2 {
	width : 20%;
	background-color: #fcb076;
	font-size: 25px;
	color: black;
}

#tour3 {
	width: 20%;
	height: 850px;
	float: left;
	background-color: #edbd63;
	font-size: 25px;
	color: black;
}

#tour4 {
	background-color: #f4e161;
	font-size: 25px;
	color: black;
	width: 80%;
	height: 250px;
	float: left;
}

#tour5 {
	background-color: #d089f4;
	font-size: 25px;
	color: black;
	width: 80%;
	height: 600px;
	float: left;
}

#tour_home{
	cursor : pointer;
	text-align : center;
	margin : 0 135px 0 135px;
}
</style>

<!-- home -> 투어 예약 -->
<div id="tour1"></div>

<div id="tour2">
	<p id="tour_home" onClick="window.location.reload()">투어예약 홈</p>
</div>

<div id="tour3">
	<p>국가 ▼</p>
	<div>
	<p>도시 ▼</p>
	</div>
	
</div>

<div id="tour4">
	<p>내 계획에 포함된 도시</p>
</div>

<div id="tour5">
	<p>인기있는 도시</p>
</div>


<script>
y7
</script>

<%@ include file='../footer.jsp'%>