<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file='../header.jsp'%>

<style>
	body {
		color : black;
	}
	
	.test1 ::before {
		content:"/"
	}
	
	.content{
		margin : 60px 40px;
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
	
	.reserve2{
	    background-color: cornflowerblue;
	}
	.reserve3{
		background-color: darkgray;
	}
	
	.reserve4{
		background-color: darkturquoise;
	}
	
	.reserve5{
	    background-color: violet;
	}
	
	.reserve6{
	    background-color: azure;
	}
	
	.reserve7{
	    background-color: cadetblue;
	}
	
	.reserve8{
	    background-color: blanchedalmond;
	}
	
	#button{
		width : 30px;
		height : 30px;
	}
	
	#people{
	    width: 40px;
	    height: 30px;
	    margin: 5px;
	}
</style>


<div class="container-fluid">
	<h1>주문결제</h1>

	<div class="reserve">
	
		<form name="" method="post" action="/">
			<!-- 항목 선택 -->
			<div class="reserve-select col-xs-12 col-md-12">
				<span>
					<input type="checkbox" name="chkall" id="chkall">&nbsp;
					<label for="chkall">전체 선택</label>
				</span>
				<span class="test1">
					<button>선택 삭제</button>
				</span>
			</div>
			
			<div class="reserve-list col-xs-12 col-md-9 reserve2">
				<!-- 장바구니 목록 반복 -->
				<%-- <c:forEach var="dto" items="${reservelist }"> --%>
				<div class="reserve-item">
					<div class="chkbox reserve3">
						<input type="checkbox" name="" id="" value="">
					</div>
					<div class="img reserve4">이미지</div>
					<div class="subject reserve5">투어이름<%-- ${dto.tour_name } --%></div>
					<div class="people reserve6">인원 : <%-- ${dto.reserveDTO.people } --%></div>
					<div class="people reserve6">예약날짜 : <%-- ${dto.reserveDTO.people } --%></div>
					<div class="pay reserve7">결제금액&nbsp;<span><%-- ${dto.pay } --%></span></div>
				</div>
				<%-- </c:forEach> --%>
				<!-- 반복 끝 -->
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
					<strong>전체 주문금액</strong>&nbsp;
					<span>0</span>
				</div>
				<div>
					<input type="submit" value="주문하기">
				</div>
			</div>
		</form>
		
	</div>
</div>


<%@ include file='../footer.jsp'%>