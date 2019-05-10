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
	
	.cart-select {
		background-color: antiquewhite;
	}
	
	.cart-select span {
		margin: 5px 5px;
	}
	
	.cart-item div {
		float: left;
		height: 50px;
		padding: 10px 10px;
	}
	
	.cart-item .chkbox {
		width: 5%;
		margin: 0 auto;
		text-align: center;
	}
	
	.cart-item .img {
		width: 15%;
		margin: 0 auto;
		text-align: center;
	}
	
	.cart-item .subject {
		width: 40%;
		margin: 0 auto;
	}
	
	.cart-item .people {
		width: 20%;
		margin: 0 auto;
		text-align: center;
	}
	
	.cart-item .pay {
		width: 20%;
		margin: 0 auto;
	}
	
	.cart2{
	    background-color: cornflowerblue;
	}
	.cart3{
		background-color: darkgray;
	}
	
	.cart4{
		background-color: darkturquoise;
	}
	
	.cart5{
	    background-color: violet;
	}
	
	.cart6{
	    background-color: azure;
	}
	
	.cart7{
	    background-color: cadetblue;
	}
	
	.cart8{
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
	<h1>장바구니</h1>

	<div class="cart">
	
		<form name="" method="get" onsubmit="return checkSelect(this)">
		<input type="hidden" name="cart_code" value="${dto.cart_code }">
			<!-- 항목 선택 -->
			<div class="cart-select col-xs-12 col-md-12">
				<span>
					<input type="checkbox" name="chkall" id="chkall">&nbsp;
					<label for="chkall">전체 선택</label>
				</span>
				<span class="test1">
					<input type="submit" value="선택삭제" formaction="/tour/cart.do"> 
				</span>
			</div>
			
			<div class="cart-list col-xs-12 col-md-9 cart2">
				<!-- 장바구니 목록 반복 -->
				<c:forEach var="dto" items="${cartlist }">
				<div class="cart-item">
					<div class="chkbox cart3">
						<%-- <input type="checkbox" name="selectchk" id="selectchk" value="${dto.cart_code }"> --%>
						<input type="checkbox" name="cart_list" id="cart_list" value="${dto.cartDTO.cart_code }">
					</div>
					<div class="img cart4">이미지</div>
					<div class="subject cart5">${dto.tour_name }</div>
					<div class="people cart6">인원 : ${dto.cartDTO.people }</div>
					<div class="pay cart7">결제금액&nbsp;<span>${dto.pay }</span></div>
				</div>
				</c:forEach>
				<!-- 반복 끝 -->
			</div>
			
			<!-- 장바구니 합계 -->
			<div class="cart-total col-xs-12 col-md-3 cart8">
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
					<input type="submit" value="주문하기" formaction="../tour/reserve.do?cart_code=${dto.cart_code }">
				</div>
			</div>
		</form>
		
	</div>
</div>

<script>
//체크박스 (전체선택/해제)
$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#chkall").click(function(){
        //클릭되었으면
        if($("#chkall").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=cart_list]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=cart_list]").prop("checked",false);
        }
    })
}) //check end
	


</script>

<%@ include file='../footer.jsp'%>