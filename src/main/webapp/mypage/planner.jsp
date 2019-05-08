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

</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/mypage/planner.do">내 플래너</a>
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
				<a href="${pageContext.request.contextPath}/mypage/planner.do" class="list-group-item active">내 플래너<span class="badge">${count }</span></a> 
				<a href="${pageContext.request.contextPath}/mypage/mymate.do" class="list-group-item">내 동행</a> 
				<a href="${pageContext.request.contextPath}/mypage/reservation.do" class="list-group-item">내 투어예약</a> 
				<a href="${pageContext.request.contextPath}/mypage/qna.do" class="list-group-item">문의 내역</a> 
				<a href="${pageContext.request.contextPath}/member/modify.do" class="list-group-item">내 정보 수정</a>
			</div>
		</div>

		<div class="row-fluid col-xs-12 col-md-10">

			<!-- 컨텐츠 -->
			<div class="contents">
			
				<div class="panel-body">

					<c:forEach var="plan" items="${list }">
						<fmt:parseDate var="s_date" value="${fn:substring(plan.s_date, 0,10)}" pattern="yyyy-MM-dd" />
						<fmt:formatDate var="s_date" value="${s_date}" pattern="yyyy년 MM월 dd일" />

						<!-- planner-box -->
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<div>
									<a href="../planner/home.do?plan_code=${plan.plan_code }" title="자세히보기"> 
										<img width="242px" style="border: 2px solid #e4e4e4" 
											src="http://stuweb.s3.amazonaws.com/photo/6/8/b503bda5272b4f4ff8b2dc5c76d5b05c.png">
									</a>
								</div>
								<div class="caption">
									<ul class="list-unstyled">
										<li style="text-align: center">
											<h3>
												<a href="${pageContext.request.contextPath}/planner/home.do?plan_code=${plan.plan_code }" title="자세히보기"> ${plan.subject } </a>
											</h3>
										</li>
										<li style="text-align: center">${s_date }부터 ${plan.cityplan.daysum +1}일간 여행, ${plan.people }명</li>
										<li style="text-align: center"><!-- 여행국가 아이콘 리스트 --></li>
										<li>
											<p style="text-align: center; padding-top: 30px;">
												<a href="${pageContext.request.contextPath}/planner/home.do?plan_code=${plan.plan_code }" class="btn btn-primary" role="button">플래너</a> 
												<a href="${pageContext.request.contextPath}/plan/plan.do?plan_code=${plan.plan_code }" class="btn btn-default" role="button">수정</a>
											</p>
										</li>
										<li style="text-align: center; font-size: 9pt; font-family: tahoma">
											<span class="glyphicon glyphicon-heart-empty"></span>0&nbsp;&nbsp;&nbsp;
											<span class="glyphicon glyphicon-comment"></span> 0&nbsp;&nbsp;&nbsp; 
											<span class="glyphicon glyphicon-eye-open"></span>0
										</li>
									</ul>
								</div>
							</div>
						</div>

					</c:forEach>


					<!-- planner-add -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail" style="background: #efefef">
							<div class="bt-add">
								<a href="../plan/plan.do" class="btn btn-warning">
									<span class="glyphicon glyphicon-plus"></span>플래너 추가
								</a>
							</div>
						</div>
					</div>


					<div style="clear: both"></div>

				</div>
				<!-- panel-body end -->
				

				<table class="data-view">
				<c:forEach var="plan" items="${list }">
					<tr>
						<td>${plan.plan_code }</td>
						<td class="link" onclick="location.href='../planner/home.do?plan_code=${plan.plan_code }'" onmouseover="style='cursor:pointer;'">
							${plan.subject }</td>
						<td>${plan.people }명</td>
						<td>${fn:substring(plan.s_date, 0,10) }</td>
						<td>${plan.cityplan.daysum }박 (${plan.cityplan.daysum+1 }일)</td>
					</tr>
				</c:forEach>
				</table>


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
