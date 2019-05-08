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


.myqna{
    margin-bottom: 30px;
    height: 100px;
    background-color: darkgrey;
}

.qnalist{
	background-color : aquamarine;
	width : 50%;
    margin: 7% auto;
    text-align: center;
}

.reply{
	background-color : aliceblue;
	width : 80%;
    margin: 7% auto;
    text-align: center;
}

</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/mypage/planner.do">내 플래너</a> >
	<span>문의 내역</span>
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
					class="list-group-item">내 투어예약</a> <a
					href="${pageContext.request.contextPath}/mypage/qna.do"
					class="list-group-item active">문의 내역</a> <a
					href="${pageContext.request.contextPath}/member/modify.do"
					class="list-group-item">내 정보 수정</a>
			</div>
		</div>

		<div class="row-fluid col-xs-12 col-md-10">

			<!-- 컨텐츠 -->
			<div class="contents">
				<div class="myqna">
					<h2 style="margin-bottom: 10px">나의 문의 내역</h2>
					<a href="./planner.do">${session_m_id }</a>님의 문의 내역입니다.
				</div>
				<div class="qnalist">
					<h4 style="margin-bottom: 20px">문의 내역</h4>
					<c:set var="listlen" value="${fn:length(qnalist)}" />
					<c:choose>
						<c:when test="${listlen==0}">
							<!-- 문의 내역이 없을 때 -->
							<p>
								<span>문의 내역이 없습니다.</span><img alt="" src="/">
							</p>
						</c:when>
						<c:otherwise>
							<!-- 문의 내역이 있을 때 -->
							<c:forEach var="dto" items="${qnalist }">
								<a>${dto.tour_name }</a>
								<p>${dto.qnaDTO.content }</p>
								<p>${dto.qnaDTO.regdt }</p>
								<button class="replybutton">답변보기</button>
								
								<div id="reply" class="reply">
									<h4 style="margin-bottom: 20px">문의 답변</h4>
									<!-- 문의 내역이 있을 때 -->
									<!-- 답변보기 버튼 클릭하면 show 평소에는 hide -->
									<c:forEach var="re" items="${replylist }">
										<div>
											<p>작성자 : 관리자</p>
											<p>${re.qnaDTO.content }</p>
											<p>${re.regdt }</p>
										</div>
									</c:forEach>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- 문의 답변 -->

				</div>
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

/* 문의 답변 show / hide */
$(document).ready(function(){
  $(".replybutton").click(function(){
    $(".reply").toggle();
  });
});
</script>


<!-- end Contents -->

<%@ include file="../footer.jsp"%>
