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
	margin : 0 35% 0 35%;
}
</style>

<!-- home -> 투어 예약 -->
<!-- 임시 버튼  -->
<table>
<tr>
<td><input type="button" value="도시" onclick="location.href='./city.do'"></td>
<td><input type="button" value="투어정보" onclick="location.href='./tourinfo.do'"></td>
</tr>
</table>


<div id="tour1"></div>

<div id="tour2">
	<p id="tour_home" onClick="window.location.reload()">투어예약 홈</p>
</div>

<div id="tour3">
	<h3>국가 ▼</h3>
	<div>
		<h3>도시▼</h3>
		<c:forEach var="dto" items="${list }">
			<div>
				<p>${dto.ct_code }</p>
			</div>
		</c:forEach>
	</div>
</div>

<div id="tour4">
	<p>내 계획에 포함된 도시</p>
	<table>
		<tr>
			<td>이미지</td>
		</tr>
		<tr>
			<td>파리</td>
		</tr>
		<tr>
			<td>프랑스</td>
		</tr>
	</table>
</div>

<div id="tour5">
	<p>인기있는 도시</p>
</div>


<script>
y7
</script>

<%@ include file='../footer.jsp'%>