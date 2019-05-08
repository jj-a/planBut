<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file='../header.jsp'%>
<script src="${pageContext.request.contextPath }/js/tour_submenu.js"></script>
<script src="${pageContext.request.contextPath }/css/tour.css"></script>

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
	background-color: #fcb076;
	font-size: 25px;
	color: black;
	float : left;
	height : 150px;
	width : 20%;
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

.search__container{
	height : 160px;
}

    .menu a{cursor:pointer;}
    .menu .hide{display:none;}

.list{
	padding : 0;
}

</style>

<!-- home -> 투어 예약 -->
<!-- 임시 버튼  -->
<table>
	<tr>
		<td><input type="button" value="도시리스트" onclick="location.href='./city.do'"></td>
		<td><input type="button" value="투어정보" onclick="location.href='./tourinfo.do'"></td>
		<td><input type="button" value="투어리스트" onclick="location.href='./tourlist.do'"></td>
		<td><input type="button" value="예약페이지" onclick="location.href='./reserve.do'"></td>
		<td><input type="button" value="장바구니" onclick="location.href='./cart.do'"></td>
	</tr>
</table>


<div id="tour1"></div>

<div id="tour2">
	<div>
		<p id="tour_home" onClick="window.location.reload()">투어예약 홈</p>
	</div>
</div>

<div class="search__container">
	<input class="search__input" type="text" placeholder="Search">
</div>

<div class="credits__container"></div>

<div id="tour3">

 	<div class="main-title">
		<ul class="list">
			<li><a>국가 ▼</a>
				<ul>
					<c:forEach var="dto" items="${countrylist }">
						<li><a>${dto.countryDTO.c_name }</a></li>
					</c:forEach>
				</ul>
			</li>
		</ul>
	</div>

	<div>
		<ul class="list">
			<li><a>도시▼</a> 
			<!-- 국가 선택 안했을 때 -->
			<!-- <p>국가를 선택 해주세요 -->
			<!-- 국가 선택했을 때 도시리스트 출력 -->
				<ul>
					<c:forEach var="dto" items="${citylist }">
		<%-- 				<li class="ct_list"><a href="./tourlist.do?ct_code=${dto.ct_code }">${dto.cityDTO.ct_name}</a></li> --%>
						<li><a id="ct_list">${dto.cityDTO.ct_name}</a></li>
					</c:forEach>
				</ul>
			</li>
		</ul>
	</div>
</div>

<div id="tour4">
	<p>내 계획에 포함된 도시</p>
	<table>
		<c:forEach var="dto" items="${plannerlist }">
			<tr>
				<!-- <td>이미지</td> -->
				<td>
					<%-- ${dto.photo} --%>도시테이블 사진 칼럼 추가합시다
				</td>
			</tr>
			<tr>
				<td>${dto.cityDTO.ct_name }</td>
			</tr>
		</c:forEach>
	</table>
</div>

<div id="tour5">
	
</div>

<script>
//ajax
	$(document).ready(function(){
		
		$("#ct_list").on('click', function(){
			
			$.ajax({
				
				type: "get",
				contentType: "application/json; charset=UTF-8", 
				url: "${pageContext.request.contextPath}/tour/tour",
				data: {
					ct_code : "${dto.cityDTO.ct_code}"
				},
				dataType : "json",
				success : function (data) {
					 console.log(data);
					 tu_list(data, tour);
				},
				error : function(error){
					alert("error" + error);
				}
				
			});//ajax end
		});
	});

function tu_list(data) {
	
	$.each(data, function(idx, tour){
	
		var tour_name = tour.tour_name;
		var photo = tour.photo;
		var price = tour.price;
		
		$("<div/>",{ "class" : "tour5", html : [
		$("<p/>", { "class": "tname", html: "투어이름 : "+tour.tour_name }),
		$("<p/>", { "class": "tphoto", html: "투어사진 : "+tour_photo }), 
		$("<p/>", { "class": "tprice", html: "금액 : "+tour.price }), 
		]})
		
	});//for end

	}//tu_list end
</script>

<%@ include file='../footer.jsp'%>