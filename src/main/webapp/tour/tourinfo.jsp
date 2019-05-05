<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file='../header.jsp'%>
<link rel="stylesheet" href="./css/calendar.css">
<script src="./js/pureJSCalendar.js"></script>




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
	width : 1300px;
	margin : auto;
}
.tour_info{
}

.tour_info1{
	position : relative;
	background-color: #fcb076;
	min-width : 550px;
	max-width : 550px;
	height : 450px;
	display : inline-block;
	border : 2px solid;
}

.tour_info2{
	position : absolute;
	background-color : #e0d4a1;
	min-width : 750px;
	max-width : 750px;
	height : 450px;
	display : inline-block;
	border : 2px solid;
	padding : 20px;	
}

.tour_info3{
	width : 1300px;
	text-align : center;
	margin : 10px auto;
	background-color : pink;
	display : flex;
	justify-content : space-around;
	border : 2px solid;
}

.tour_name{
	background-color : white;
	width : 600px;
	height : 100px;
	text-align : center;
	font-size : 35px;
	font-weight : bold;
	line-height : 3;
	margin : 50px;
}

.country_city{
	text-align : left;
}
	
.tour_product{
	text-align: center;
    width: 1300px;
    height: 100%;
    margin: auto;
    background-color: lemonchiffon;
}

.tour_p{
	margin : 0 0 20px;
}

.carousel slide{
	height : 450px;
}

.tour_content{
	background-color: aliceblue;
}

.tour_review{
	background-color: bisque;
    width: 50%;
    text-align: center;
    margin: auto;
    height : 300px;
}

.tour_qna{
	background-color: burlywood;
}

.item img{
	height : 446px !important;
}

.info_sp{
	background-color: #c5b2d7;
    margin : -25px 0 0 0;
    height : 60px;
}

.star{
	background-color: aliceblue;
	float : left;
 	width: 350px;
 	height: 60px;
}

.price{
 	float : right;
 	height : 60px;
}

.info_img{
   height : 70px;
   width : 50px;
   padding : 5px;
   float : left;
}

.info_personnel{
	margin : 0 10px;
	padding : 5px;
	display: inline-block;
}
.info_ipt{
	padding-left: 5%;
    padding-right: 5%;
    border-top: inset;
    border-bottom: inset;
    border-color: black;
    text-align: center;
    vertical-align: middle;
    margin-top: 20px;
}

.tour_qna{
	padding : 30px 25%;
	text-align : left;
}

.review_area{
	width : 500px;
	height : 130px;
	resize : none;
	vertical-align : middle;
}

.review_button{
	width : 100px;
	height : 130px;
	vertical-align : middle;
}
.glyphicon{
    position: relative;
    top: 1px;
    font-size: 35px;
    display: inline-block;
    font-family: "Glyphicons Halflings";
    font-style: normal;
    font-weight: 400;
    line-height: 2;
    margin: 0 15px;
    float: left;
    -webkit-font-smoothing: antialiased;
}

#btn_like{
	position : relative;
	width : 30px;
	height : 30px;
	float : right;
	margin : -80% 2%;	
}

#atag1{
	float : left;
}

#atag2{
	color : black;
}
</style>

<h1>투어 정보</h1>
<!-- 임시 버튼  -->
<table>
	<tr>
		<td><input type="button" value="투어홈" onclick="location.href='./tour.do'"></td>
		<td><input type="button" value="도시리스트" onclick="location.href='./city.do'"></td>
		<td><input type="button" value="투어리스트" onclick="location.href='./tourlist.do'"></td>
		<td><input type="button" value="예약페이지" onclick="location.href='./reserve.do'"></td>
		<td><input type="button" value="장바구니" onclick="location.href='./cart.do'"></td>
	</tr>
</table>


<!---------------------------- 이 미 지 ---------------------------->
<main class="tour">
<section>
	<div class="tour_main1">
		<div class="tour_info1 tour_info">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class=""></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"
						class=""></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"
						class="active"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item">
						<img data-src="holder.js/1140x500/auto/#777:#555/text:First slide"
							alt="First slide [1140x500]"
							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIHZpZXdCb3g9IjAgMCAxMTQwIDUwMCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvMTE0MHg1MDAvYXV0by8jNzc3OiM1NTUvdGV4dDpGaXJzdCBzbGlkZQpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE2YTQzMzMxNWYzIHRleHQgeyBmaWxsOiM1NTU7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6NTdwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTZhNDMzMzE1ZjMiPjxyZWN0IHdpZHRoPSIxMTQwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzc3NyIvPjxnPjx0ZXh0IHg9IjM5MC41MDc4MTI1IiB5PSIyNzUuNDM5MDYyNSI+Rmlyc3Qgc2xpZGU8L3RleHQ+PC9nPjwvZz48L3N2Zz4="
							data-holder-rendered="true">
					</div>
					<div class="item">
						<img
							data-src="holder.js/1140x500/auto/#666:#444/text:Second slide"
							alt="Second slide [1140x500]"
							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIHZpZXdCb3g9IjAgMCAxMTQwIDUwMCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvMTE0MHg1MDAvYXV0by8jNjY2OiM0NDQvdGV4dDpTZWNvbmQgc2xpZGUKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNmE0MzMzMGRkMyB0ZXh0IHsgZmlsbDojNDQ0O2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjU3cHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE2YTQzMzMwZGQzIj48cmVjdCB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIGZpbGw9IiM2NjYiLz48Zz48dGV4dCB4PSIzMzUuNjAxNTYyNSIgeT0iMjc1LjQzOTA2MjUiPlNlY29uZCBzbGlkZTwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
							data-holder-rendered="true">
					</div>
					<div class="item active">
						<img data-src="holder.js/1140x500/auto/#555:#333/text:Third slide"
							alt="Third slide [1140x500]"
							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIHZpZXdCb3g9IjAgMCAxMTQwIDUwMCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvMTE0MHg1MDAvYXV0by8jNTU1OiMzMzMvdGV4dDpUaGlyZCBzbGlkZQpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE2YTQzMzMyNDFlIHRleHQgeyBmaWxsOiMzMzM7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6NTdwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTZhNDMzMzI0MWUiPjxyZWN0IHdpZHRoPSIxMTQwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzU1NSIvPjxnPjx0ZXh0IHg9IjM3Ny44NjcxODc1IiB5PSIyNzUuNDM5MDYyNSI+VGhpcmQgc2xpZGU8L3RleHQ+PC9nPjwvZz48L3N2Zz4="
							data-holder-rendered="true">
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				 <a class="right carousel-control" href="#carousel-example-generic"	role="button" data-slide="next">
				 	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
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
				<p>${dto.tour_name }</p>
			</div>
			<div class="info_sp">
				<div class="star">
					<p>별점</p>
					<p>${reviewavg }</p> <!-- 별 이미지로 보이게  -->
				</div>
				<div class="price">
					<p>&#92; ${ dto.price}&nbsp; 1인</p>
				</div>
			</div>

			<div class="info_ipt col-md-12">
				<div class="col-md-6">
					<div>
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					</div>
					<div class="info_personnel">
						<p>인원</p>
						<p>${dto.minimum }~${dto.capacity }명</p>
					</div>
				</div>
				<div class="col-md-6">
					<div>
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
					<div class="info_personnel">
						<p>소요시간</p>
						<p>${dto.t_time }시간</p>
					</div>
				</div>
			</div>
		<button type="button" id="cartbutton" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#modal-fechacap">장바구니</button>
		<button type="button" id="reservebutton" class="btn btn-lg btn-primary" onclick="">간편예약</button>
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
		<p>투어소개</p>
		<p>${dto.content }</p>
	</div>

	<div class="tour_p tour_review">
		<div>
			<div>
				<h4 style="text-align : left; padding-left : 10px;">이용후기</h4>
			</div>
			<div style="background-color: #fff351">
				<p>${reviewavg } / 5.0</p> <!-- 리뷰점수를 별 그림으로 바꿔줘야 됨 -->
				
				<p>${reviewtotal }개의 이용후기가 있습니다.</p>
			</div>
			<div>
				<ul style="padding: 0;">
					<li>
						<div>
							<c:forEach var="dto" items="${reviewlist }">
								<div class="col-md-3" style="text-align: left;">
									<ul style="padding: 0; line-height: 2;">
										<li>${dto.treviewDTO.star }</li>
										<li>${dto.treviewDTO.m_id }</li>
										<li>0월00일 여행</li> <!-- db에서 re_code 가져와서 날짜데이터로 변환 후 yy월dd일 형식으로 보여주기 -->
									</ul>
								</div>
								<div class="col-md-9">
									<p>${dto.treviewDTO.content }</p>
								</div>
							</c:forEach>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<form name="addqna" method="POST" action="/">
		<div class="tour_p tour_qna">
			<div>
				<h3>문의사항이 있으시면 1:1 문의를 남겨주세요</h3>
			</div>
			<div>
				<textarea class="review_area" placeholder="문의를 작성해주세요"></textarea>
				<button class="review_button" value="">등록</button>
			</div>
		</div>
	</form>
</div>


<!-- Cart Modal -->
<form name="addcart" method="POST" action="./tourinfo.do">
<input type="hidden" name="tour_code" value="${dto.tour_code }">
	<div id="calendarmodal" class="container">

		<div class="modal fade" id="modal-fechacap" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">장바구니</h4>
					</div>
					<div class="modal-body">
						<input type="hidden" name="horario" id="horario" value="" />
						<p>
							<label>${dto.tour_name }</label>
						</p>
						<p>
							<label>인원: </label>
							<!-- + - 버튼 넣어서 인원 추가 삭제 readonly -->
							<!-- <input type="text" name="unidad" id="unidad" value="" size='5' maxlength='2' readonly /> -->
							<input type="text" name="people" id="people" size='5' maxlength='3' />
						</p>
						<p>
							<input type="button" value="달력" onclick="pureJSCalendar.open('dd.MM.yyyy', 20, 30, 1, '2018-5-5', '2019-8-20', 'txtTest', 20)" class="btn btn-primary"> <label>예약날짜</label>
							<input type="text" id="tourday" name="tourday" class="form-controller" size='13'>
						</p>
					</div>

					<div class="modal-footer">
						<div style="margin-left: 10px">
							<input type="submit" value="등록"	 class="glyphicon glyphicon-pencil">
							<input type="submit" value="취소" class="glyphicon glyphicon-pencil" onclick="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<!-- Calendar Modal -->
<div id="cal" style="top: 30px; left: 20px; z-index: 20;">
	<div class="header">
		<span class="left button" id="prev"> ⟨ </span> <span class="left hook"></span><span
			class="month-year" id="label">April 2019</span> <span
			class="right hook"></span> <span class="right button" id="next">
			⟩ </span>
	</div>
</div>

</main>


<!-- JavaScript -->
<script>

/* 좋아요 버튼 클릭 시 로그인 페이지로 이동 */
function toggleLike() {
	location.href="#loginmodal";
}


$("#cartbutton").click(function(){
$('#cartbutton').modal('hide')
});


</script>



<%@ include file='../footer.jsp'%>