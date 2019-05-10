<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file='../header.jsp'%>

<style>
body {
	color: black;
}

.test1 ::before {
	content: "/"
}

.content {
	margin: 60px 40px;
	background-color: gainsboro;
}

.reserve-select {
	background-color: antiquewhite;
}

.reserve-select span {
	margin: 5px 5px;
}

.reserve-item div {
	float: left;
	height: 50px;
	padding: 10px 10px;
}

.reserve-item .chkbox {
	width: 5%;
	margin: 0 auto;
	text-align: center;
}

.reserve-item .img {
	width: 15%;
	margin: 0 auto;
	text-align: center;
}

.reserve-item .subject {
	width: 40%;
	margin: 0 auto;
}

.reserve-item .people {
	width: 20%;
	margin: 0 auto;
	text-align: center;
}

.reserve-item .pay {
	width: 20%;
	margin: 0 auto;
}

.reserve2 {
	background-color: cornflowerblue;
}

.reserve3 {
	background-color: darkgray;
}

.reserve4 {
	background-color: darkturquoise;
}

.reserve5 {
	background-color: violet;
}

.reserve6 {
	background-color: azure;
}

.reserve7 {
	background-color: cadetblue;
}

.reserve8 {
	background-color: blanchedalmond;
}

#button {
	width: 30px;
	height: 30px;
}

#people {
	width: 40px;
	height: 30px;
	margin: 5px;
}
</style>


<div class="container-fluid">
	<h1>주문결제</h1>

	<div class="reserve">

		<form name="reserveForm" method="post" action="/reserve.do">

			<div class="reserve-list col-xs-12 col-md-9 reserve2">
				<ul class="">
					<li class="">
						<div class="reserve-item">
							<div class="col-xs-5 col-md-5"><strong>투어이름</strong></div>
							<div class="col-xs-2 col-md-2"><strong>인원</strong></div>
							<div class="col-xs-3 col-md-3"><strong>예약날짜</strong></div>
							<div class="col-xs-2 col-md-2"><strong>결제금액</strong></div>
						</div>
					</li>
					<!-- 장바구니 목록 반복 -->
					<c:forEach var="dto" items="${cart_list }">
						<li class="">
							<div class="reserve-item">
								<div class="col-xs-5 col-md-5">${dto.tour_name }</div>
								<div class="col-xs-2 col-md-2">${dto.cartDTO.people }</div>
								<div class="col-xs-3 col-md-3">${fn: substring(dto.cartDTO.tourday ,0, 10) }</div>
								<div class="col-xs-2 col-md-2">${dto.pay }</div>
							</div>
						</li>
					</c:forEach>
					<!-- 반복 끝 -->
				</ul>
			</div>

			<!-- 장바구니 합계 -->
			<div class="reserve-total col-xs-12 col-md-3 reserve8">
				<div>
					<strong>전체 합계</strong>
				</div>
				<div>
					<ul>
						<li>상품수&nbsp;<span>0</span></li>
						<li>상품금액&nbsp;<span>0</span></li>
					</ul>
				</div>
				<div>
					<strong>전체 주문금액</strong>&nbsp; <span>0</span>
				</div>
				<div>
				<select name="pay_type">
				  <option value="1">신용카드</option>
				  <option value="2">핸드폰 결제</option>
				  <option value="3" selected="selected">무통장입금</option>
				</select>
					<input type="submit" value="예약하기">
				</div>
			</div>
		</form>

	</div>
</div>


<%@ include file='../footer.jsp'%>