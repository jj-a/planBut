<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/table.css">

<!-- 본문시작 mymate.jsp -->

<style>
.sub-menu {
	background-color: #ffd1f4;
}

.tab-menu {
	background-color: #cfb7ff;
}

.contents {
    text-align: center;
}               

.plans {
	background-color: #aaaaaa;
}

.trans, .ticket {
	background-color: #f0f99f;
}

.accomm, .tour {
	background-color: #a8fff1;
}

.center-middle {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 10%;
	margin: auto;
}

.bt-add {
	text-align: center;
	top: 150px;
	position: relative;
}

.data-view tr, .data-view td {
	padding: 0 10px;
}

</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/mtpage/mate.do">내 동행</a>
</h3>

<div class="container-fluid">
	<div class="row">
		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-6 col-md-2">
			<div class="img-wrap profile" style="width: 100%">
			<c:choose>
				<c:when test="${empty member.photo }"> <!-- 프로필사진 없을 시 -->
					<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
						src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzIwMHgyMDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNmEzMGNiNDA0MSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE2YTMwY2I0MDQxIj48cmVjdCB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9Ijc0LjA2MjUiIHk9IjEwNC41NTYyNSI+MjAweDIwMDwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
						data-holder-rendered="true">
				</c:when>
				<c:otherwise>
					<img class="img-thumbnail" src="${pageContext.request.contextPath}/member/photo/${member.photo }">
				</c:otherwise>
			</c:choose>
			</div>
			<div class="panel list-group-item" style="text-align: center">
				${member.m_name } (${session_m_id })
			</div>
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/mypage/planner.do" class="list-group-item">내 플래너<span class="badge">${count }</span></a> 
				<a href="${pageContext.request.contextPath}/mypage/mymate.do" class="list-group-item active">내 동행</a> 
				<a href="${pageContext.request.contextPath}/mypage/reservation.do" class="list-group-item">내 투어예약</a> 
				<a href="${pageContext.request.contextPath}/member/modify.do" class="list-group-item">내 정보 수정</a>
			</div>
		</div>

		<div class="row-fluid col-xs-12 col-md-10">

			<!-- 컨텐츠 -->
			<div class="contents">
			
				<div class="mymate-body">
				<table>
				<tr>
				<th>
				    <a href="./mymate.do" class="list-group-item active">■ 동행 확정 목록</a>
			    </th>
			    <th>
				    <a href="./mateApply.do">■ 동행 신청 목록</a>
			    </th>
                <th>
				    <a href="./mateReceive.do">■ 동행 신청 받은 내역</a>
			    </th>
				</tr>
				</table>
				
                <h3>동행 확정 목록</h3>
    
                <table border="1" style="margin: auto;">
	                <tr>
	                <th>여행 도시</th>
	                <th>동행 날짜</th>
	                <th>동행 하는 사람들</th>
	                <th>모집자 아이디</th>
	                <th>신청경로</th>
	                </tr>
                <c:forEach var="dto" items="${mateOk }">
	                <tr>
	                <td>${dto.ct_code }</td>
	                <td>${dto.m_date.substring(0,10) }</td>
	                <td>${dto.mate_list }</td>
	                <td>${dto.mp_id }</td>
	                <td>
	                <c:if test="${dto.mate_type == 'R' }">추천</c:if>
	                <c:if test="${dto.mate_type == 'B' }">게시판</c:if>
	                </td>
	                </tr>
                </c:forEach>
                </table>    
					<div style="clear: both"></div>

				</div>
				<!-- panel-body end -->
				


			</div>
		</div>
	</div>
</div>



<!-- Script 스크립트 -->


<script>
//////////////////// 부가 기능 Script ////////////////////

/* 접근 권한 제어 */
$(function(){
	var m_id='${session_m_id}';
	if(m_id==""){
		alert("로그인 시 접근 가능한 메뉴입니다.");
		location.href="${pageContext.request.contextPath}#loginmodal";
	}
});

</script>


<!-- end Contents -->

<%@ include file="../footer.jsp"%>