<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file='../header.jsp'%>

<style>
#list {
	background-color: #a5bde5;
	height: 300px;
	text-align: center;
	margin-top: 30px;
}

.tour_list {
	float: left;
	height: 1000px
}

.list1 {
	width: 30%;
}

.list2 {
	width: 70%;
}
</style>

<!-- 임시 버튼  -->
<table>
	<tr>
		<td><input type="button" value="투어홈"
			onclick="location.href='./tour.do'"></td>
		<td><input type="button" value="도시리스트"
			onclick="location.href='./city.do'"></td>
		<td><input type="button" value="투어정보"
			onclick="location.href='./tourinfo.do'"></td>
		<td><input type="button" value="예약페이지"
			onclick="location.href='./reserve.do'"></td>
		<td><input type="button" value="장바구니"
			onclick="location.href='./cart.do'"></td>
	</tr>
</table>


<main>
<section>
	<div id="list">
		<p>이미지</p>
	</div>
</section>
<section class="tour_list list1">
	<div class="filter-container">
		<ul>
			<li class="filter-section stu_clearfix">
				<h4 class="stu_title">상품 정렬</h4>
				<ul class="filter-wrap sorting">

					<li class="filter-list table">
						<div class="filter-item" onclick="update_orderby('recom')">추천순</div>
					</li>
					<li class="filter-list table  default on ">
						<div class="filter-item" onclick="update_orderby('hot')">인기순</div>
					</li>
					<li class="filter-list table">
						<div class="filter-item" onclick="update_orderby('review')">후기순</div>
					</li>

				</ul>
			</li>

			<li class="filter-section">
				<h4 class="stu_title">상품 카테고리</h4>
				<ul class="filter-wrap category">
					<li class="filter-list default on">
						<div class="filter-item" onclick="select_thema_code(0)">전체</div>
					</li>
					<li class="filter-list">
						<div class="filter-item" onclick="select_thema_code(6)">시내투어</div>
					</li>
					<li class="filter-list">
						<div class="filter-item" onclick="select_thema_code(5)">근교투어</div>
					</li>
					<li class="filter-list">
						<div class="filter-item" onclick="select_thema_code(2)">액티비티</div>
					</li>
					<li class="filter-list">
						<div class="filter-item" onclick="select_thema_code(3)">스냅촬영</div>
					</li>
					<li class="filter-list">
						<div class="filter-item" onclick="select_thema_code(7)">티켓/교통패스</div>
					</li>
					<li class="filter-list">
						<div class="filter-item" onclick="select_thema_code(8)">여행편의</div>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</section>

<section class="tour_list list2">
	<div>
		<div>
			<div>
				<p>상품 ${total }</p>
			</div>
		</div>
		<div>
			<ul>
				<c:forEach var="dto" items="${tourlist }">
					<li>
						<figure>
							<img src="/">
							<figcaption>
								<a href="./tourinfo.do?tour_code=${dto.tour_code }">${dto.tour_name }</a>
							</figcaption>
						</figure>
						<div>
							<div>
								<p>${dto.treviewDTO.star }점</p>
							</div>
							<div>
								<p>예약자수 : ${dto.cnt }</p>
							</div>
							<div>
								<p>${dto.price }</p>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>

</section>

</main>
<%@ include file='../footer.jsp'%>