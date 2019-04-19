<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file='../header.jsp'%>

<!-- 투어정보 Page -->

<style>

.tour{
	background-color : #c5c6c9;
}

.info1{
}

.info2{
	background-color : yellow;
	text-align : center;
	height : 100px;
	line-height : 100px;
	margin : 30px 0 30px 0;
	/* 
	onclick 이벤트 적용
	font-weight : 500;
	border-bottom : 2px solid red;
	color : black;
	 */
}

.info3{
	background-color : #6d94c6;
	text-align : center;
	font-size : 30px;
	color : black;
	margin : 30px 0 30px 0;
}

.tour_main1{
	width : 1200px;
	margin : auto;
}
.tour_info{
	color : black;
	font-size : 20px;
}

.tour_info1{
	position : relative;
	background-color: #fcb076;
	min-width : 550px;
	max-width : 500px;
	height : 450px;
	display : inline-block;
	border : 2px solid;
}

.tour_info2{
	position : absolute;
	background-color : #e0d4a1;
	min-width : 650px;
	max-width : 600px;
	height : 450px;
	display : inline-block;
	border : 2px solid;	
}

.tour_info3{
	width : 1200px;
	text-align : center;
	margin : 10px auto;
	background-color : pink;
	display : flex;
	justify-content : space-around;
	border : 2px solid;
}

.tour_name{
	background-color : white;
	margin : 50px;
}

.country_city{
	text-align : left;
}
	
.tour_product{
	text-align: center;
    width: 1200px;
    height: 100%;
    margin: auto;
    background-color: lemonchiffon;
}

.tour_p{
	margin : 0 0 20px;
}

.tour_content{
	background-color: aliceblue;
}

.tour_review{
	background-color: bisque;
}

.tour_qna{
	background-color: burlywood;
}
#btn_like{
	position : relative;
	width : 30px;
	height : 30px;
	float : right;
	margin : -82% 2%;	
}

#atag1{
	float : left;
}

#atag2{
	color : black;
}

</style>

<h1>투어 정보</h1>
<table>
<tr>
<td><input type="button" value="투어홈" onclick="location.href='./tour.do'"></td>
<td><input type="button" value="도시" onclick="location.href='./city.do'"></td>
</tr>
</table>

<!---------------------------- 이 미 지 ---------------------------->
<main class="tour">
<section>
	<div class="tour_main1">
		<div class="tour_info1 tour_info">
			<p style="width: auto; height: 100%;"><img src="../images/tour_image1.jpg" style='width: 100%; height: 100%;'></p>
			<dl>
				<!-- 좋아요 버튼 -->
				<!-- 로그인 안했을 때 ( 로그인 페이지로 이동 )-->
				<!-- <dt><button id="btn_like"></button></dt> -->
				<!-- 로그인 했을 때 (버튼 클릭 시 좋아요 ) -->
				<dt>
					<button id="btn_like" class="ico_like1" type="button" onclick="location.href='javascript:toggleLike()'"></button>
				</dt>
			</dl>
		</div>


		<!---------------------------- 투어 정보 ---------------------------->
		<div class="tour_info2 tour_info">
			<div class="country_city">
				<dl style="margin: 5px 6px;">
					<dt id="atag1">
						<a href="">국가</a>
					</dt>
					<dt id="atag1">
						<p>></p>
					</dt>
					<dt id="atag1">
						<a href="">도시</a>
					</dt>
				</dl>
			</div>
			<div class="tour_name">
				<p>tour_name</p>
			</div>
		</div>
	</div>
</section>

<!---------------------------- 투어 설명 ---------------------------->
<div class="tour_info3">
	<div class="col-md-4">상품소개</div>
	<div class="col-md-4">후기</div>
	<div class="col-md-4">문의</div>
</div>

<div class="tour_product">
	<div class="tour_p tour_content">
		<p>상품소개</p>
	</div>

	<div class="tour_p tour_review">
		<p>후기</p>
	</div>

	<div class="tour_p tour_qna">
		<p>문의</p>
	</div>
</div>

</main>

<script>
function toggleLike()
{
		

	window.location="/login.jsp";

}
</script>


<%@ include file='../footer.jsp'%>