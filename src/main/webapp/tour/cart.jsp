<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file='../header.jsp'%>

<style>
	body {
		color : black;
	}
	
	.test1 ::before {
		content:"/"
	}
	
	.cart1{
		margin : 60px 40px;
		background-color: gainsboro;
	}
	
	.cart2{
	    background-color: cornflowerblue;
	    height: 150px;
	    width: 80%;
	}
	.cart3{
		background-color: darkgray;
	    width: 3%;
	    float: left;
	    height: 150px;
	}
	
	.cart4{
		background-color: darkturquoise;
	    height: 150px;
	    width: 15%;
	    float: left;
	}
	
	.cart5{
	    height: 150px;
	    width: 30%;
	    float: left;
	    background-color: violet;
	}
	
	.cart6{
		height: 150px;
	    background-color: azure;
	    width: 30%;
	    float: left;
	}
	
	.cart7{
	    float: right;
	    height: 150px;
	    width: 22%;
	    background-color: cadetblue;
	}
	
	.cart8{
		width: 20%;
	    background-color: blanchedalmond;
	    float: right;
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
<!-- 임시 버튼  -->
<table>
<tr>
	<td><input type="button" value="투어홈" onclick="location.href='./tour.do'"></td>
	<td><input type="button" value="도시리스트" onclick="location.href='./city.do'"></td>
	<td><input type="button" value="투어정보" onclick="location.href='./tourinfo.do'"></td>
	<td><input type="button" value="투어리스트" onclick="location.href='./tourlist.do'"></td>
	<td><input type="button" value="예약페이지" onclick="location.href='./reserve.do'"></td>
</tr>
</table>


<div  class="cart1">
	<h1>장바구니</h1>

	<div style="background-color: aliceblue">
		<div style="background-color: antiquewhite">
			<ul>
				<li><span><input type="checkbox"></span> <label>전체선택</label>
				</li>
				<li class="test1">
					<button> 선택삭제</button>
				</li>
			</ul>
		</div>
		<div>
			<div class="cart2">
				<div class="cart3">
					<input type="checkbox">
				</div>
				<div class="cart4">이미지</div>
				<div class="cart5">투어제목</div>
				<div class="cart6">
					<button id="button">-</button>
					<input type="number" id="people">
					<button id="button">+</button>
				</div>
				<div class="cart7">결제금액</div>
			</div>
			<div class="cart8">
				<div>
					<strong>전체 합계</strong>
				</div>
				<div>
					<ul>
						<li>상품수</li>
						<li>상품금액</li>
					</ul>
				</div>
				<div>
					<strong>전체 주문금액</strong>
				</div>
				<div>
					<button>주문하기</button>
				</div>
			</div>
		</div>
	</div>
</div>


<%@ include file='../footer.jsp'%>