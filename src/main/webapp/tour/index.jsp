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
				  <%-- <li class="ct_list"><a href="./tourlist.do?ct_code=${dto.ct_code }">${dto.cityDTO.ct_name}</a></li> --%>
                  <li><span id="ct_code" style="display: none;">${dto.cityDTO.ct_code}</span>
                      <a id="ct_list">${dto.cityDTO.ct_name}</a>
                  </li>
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
      
      $(document).on('click', '#ct_list', function(){
         
         $("#tour5").empty();   // 내용 비우기
         
         var ct_code = $(this).prev().get(0).innerText;   // 도시코드 저장
         //console.log(ct_code);
         
         $.ajax({
            
            type: "get",
            contentType: "application/json; charset=UTF-8", 
            url: "${pageContext.request.contextPath}/tour/tour",
            data: {
               ct_code : ct_code
            },
            dataType : "json",
            success : function (data) {
                console.log(data);
                tu_list(data);   // 출력
            },
            error : function(error){
               alert("error" + error);
            }
            
         });//ajax end
      });
   });

function tu_list(data) {   // 출력
   
   // 투어 갯수 출력
   $("<div/>",{ "class" : "", html : [
      $("<p/>", { "class": "total", html: "상품 수 : "+data.length })
   ]}).appendTo("#tour5");
   
   
   $.each(data, function(idx, tour){
      
      var photoArr = tour.photo.split(",");   // 투어 이미지 리스트
      var photo = photoArr[0];   // 미리보기 이미지
      //console.log(photo);
      
      $("<div/>",{ "class" : "tour", html : [
         $("<img/>", { "class": "tphoto", "src": "${pageContext.request.contextPath}/tour/photo/"+photo }), 
         $("<p/>", { "class": "tname", html: "투어이름 : "+tour.tour_name }),
         $("<p/>", { "class": "tcnt", html: "예약자 수 : "+tour.cnt }), 
         $("<p/>", { "class": "tprice", html: "금액 : "+tour.price })
      ]}).appendTo("#tour5");
      
   });//for end

   }//tu_list end
</script>

<%@ include file='../footer.jsp'%>