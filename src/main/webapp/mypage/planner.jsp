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
</style>

<!-- Contents -->

<h3>
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > <a href="${pageContext.request.contextPath}/mypage/planner.do">내 플래너</a>
</h3>

<div class="container-fluid">
	<div class="row">
		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-6 col-md-2">
			<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
				src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzIwMHgyMDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNmEzMGNiNDA0MSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE2YTMwY2I0MDQxIj48cmVjdCB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9Ijc0LjA2MjUiIHk9IjEwNC41NTYyNSI+MjAweDIwMDwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
				data-holder-rendered="true" style="width: 200px; height: 200px;">
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/mypage/planner.do" class="list-group-item active">내 플래너<span class="badge">1</span></a> <a
					href="${pageContext.request.contextPath}/mypage/mymate.do" class="list-group-item">내 동행</a> <a
					href="${pageContext.request.contextPath}/mypage/reservation.do" class="list-group-item">내 투어예약</a> <a
					href="${pageContext.request.contextPath}/member/modify.do" class="list-group-item">내 정보 수정</a>
			</div>
		</div>

		<div class="row-fluid col-xs-12 col-md-10">

			<!-- 컨텐츠 -->
			<div class="contents">

				<p>
					<a href="${pageContext.request.contextPath}/planner/home.do">플래너 목록</a>
				</p>


				<table>
				<c:forEach var="article" items="${list }">
					<tr>
						<td>${article.plan_code }</td>
						<td class="link" onclick="location.href='../planner/home.do?plan_code=${article.plan_code }'" onmouseover="style='cursor:pointer;'">
							${article.subject }</td>
						<td>${article.people }명</td>
					</tr>
				</c:forEach>
				</table>


				<div class="panel-body">

					<c:forEach var="article" items="${list }">

						<!-- planner-box -->
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<div>
									<a href="../planner/home.do?plan_code=${article.plan_code }" title="자세히보기"> <img width="242px" style="border: 2px solid #e4e4e4"
										src="http://stuweb.s3.amazonaws.com/photo/6/8/b503bda5272b4f4ff8b2dc5c76d5b05c.png">
									</a>
								</div>
								<div class="caption">
									<ul class="list-unstyled">
										<li style="text-align: center"><h3>
												<a href="../planner/home.do?plan_code=${article.plan_code }" title="자세히보기"> ${article.subject } </a>
											</h3></li>
										<li style="text-align: center">YYYY-MM-DD부터 N일간 여행, ${article.people }명</li>
										<li style="text-align: center"><img src="/images/is/flag/11103_s.gif"></li>
										<li>
											<p style="text-align: center; padding-top: 30px;">
												<a href="/planner/index.asp?planserial=441292" class="btn btn-primary" role="button">플래너</a> 
												<a href="/supertrip/detail.asp?planserial=441292" class="btn btn-default" role="button">자세히</a>
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
							<p style="text-align: center">
								<a href="../plan/plan.do" class="btn btn-warning"><span class="glyphicon glyphicon-plus"></span>플래너 추가</a>
							</p>
						</div>
					</div>


					<div style="clear: both"></div>

				</div>
				<!-- panel-body end -->


			</div>
		</div>
	</div>
</div>

<!-- end Contents -->

<%@ include file="../footer.jsp"%>
