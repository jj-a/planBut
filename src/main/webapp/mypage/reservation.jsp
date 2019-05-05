<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
.sub-menu {
	background-color: #ffd1f4;
}

.tab-menu {
	background-color: #cfb7ff;
}

.contents {
	background-color: #eeeeee;
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

.mytour{
    margin-bottom: 30px;
    height: 100px;
    background-color: darkgrey;
}

.myreserve{
	background-color : aquamarine;
	width : 50%;
    margin: 7% auto;
    text-align: center;
}

</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/mypage/planner.do">내 플래너</a> >
	<a href="${pageContext.request.contextPath}/mypage/reservation.do">내 투어예약</a>
</h3>

<div class="container-fluid">
	<div class="row">
		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-6 col-md-2">
			<div class="img-wrap profile" style="width: 100%">
				<c:choose>
					<c:when test="${empty member.photo }">
						<!-- 프로필사진 없을 시 -->
						<img data-src="holder.js/200x200" class="img-thumbnail"
							alt="200x200"
							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzIwMHgyMDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNmEzMGNiNDA0MSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE2YTMwY2I0MDQxIj48cmVjdCB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9Ijc0LjA2MjUiIHk9IjEwNC41NTYyNSI+MjAweDIwMDwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
							data-holder-rendered="true">
					</c:when>
					<c:otherwise>
						<img class="img-thumbnail"
							src="${pageContext.request.contextPath}/member/photo/${member.photo }">
					</c:otherwise>
				</c:choose>
			</div>
			<div class="panel list-group-item" style="text-align: center">
				${member.m_name } (${session_m_id })</div>
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/mypage/planner.do"
					class="list-group-item">내 플래너</a> <a
					href="${pageContext.request.contextPath}/mypage/mymate.do"
					class="list-group-item">내 동행</a> <a
					href="${pageContext.request.contextPath}/mypage/reservation.do"
					class="list-group-item active">내 투어예약</a> <a
					href="${pageContext.request.contextPath}/member/modify.do"
					class="list-group-item">내 정보 수정</a>
			</div>
		</div>

		<div class="row-fluid col-xs-12 col-md-10">

			<!-- 컨텐츠 -->
			<div class="contents">
				<div class="mytour">
					<h2 style="margin-bottom: 10px">예약내역</h2>
					<a href="./planner.do">${session_m_id }</a>님의 예약 내역입니다.
				</div>
				<div class="myreserve">
					<h4 style="margin-bottom: 20px">내 투어 예약내역</h4>
					<c:choose>
						<c:when test="${empty dto.treserveDTO.re_code } ">
							<!-- 예약 내역이 없을 때 -->
							<p><span>예약 내역이 없습니다.</span><img alt="" src="/"></p>
							<a href="../tour/tour.do"><span>투어홈 바로가기 ></span></a>
						</c:when>
						<c:otherwise>
							<!-- 예약 내역이 있을 때 -->
							<c:forEach var="dto" items="${reservelist }">
								<p>${dto.tour_name }</p>
								<p>${member.m_name }</p>
								<p>${dto.treserveDTO.payed }</p>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
				<div>
					<div class="myreserve">
						<h4>지난 예약 / 후기쓰기</h4>
						<c:forEach var="dto" items="${c_reservelist }">
								<p>${dto.tour_name }</p>
								<p>${member.m_name }</p>
								<p>${dto.treserveDTO.payed }</p>
								<button type="button" id="reviewbutton" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#modal-fechacap">후기작성</button>
								
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 후기 작성 modal -->
<form name="addreview" method="POST" action="../mypage/reservation.do">
<input type="hidden" name="re_code" value="20190317-12"> <!-- re_code 값 모달창으로 보내는 방법 찾아보기 -->
<%-- <input type="hidden" name="re_code" value="${dto.re_code }"> --%>
<div id="reviewmodal" class="container">

		<div class="modal fade" id="modal-fechacap" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">후기 작성</h4>
					</div>
					<div class="modal-body">
						<p>
							<label>아이디 :</label> ${session_m_id }
						</p>
						<p>
							<label>예약 번호 : </label>
						</p>
						<p>
							<label>별점 :</label>
							<input type="text" name="star" id="star" size='5' maxlength='3' />
						</p>
						<p>
							<label>내용</label>
							<textarea id="content" name="content" class="form-controller"></textarea>
						</p>
					</div>

					<div class="modal-footer">
						<div style="margin-left: 10px">
							<input type="submit" value="등록"	 class="glyphicon glyphicon-pencil">
							<input type="button" value="취소" class="glyphicon glyphicon-pencil" data-dismiss="modal">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>


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
