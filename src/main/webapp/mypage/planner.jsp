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
	<a href="${pageContext.request.contextPath}/mypage/">마이페이지</a> > 
	<a href="${pageContext.request.contextPath}/mypage/planner.do">내 플래너</a>
</h3>

<div class="container-fluid">
	<div class="row">
		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-6 col-md-2">
			<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
				src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzIwMHgyMDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNmEzMGNiNDA0MSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE2YTMwY2I0MDQxIj48cmVjdCB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9Ijc0LjA2MjUiIHk9IjEwNC41NTYyNSI+MjAweDIwMDwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
				data-holder-rendered="true" style="width: 200px; height: 200px;">
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/mypage/planner.do" class="list-group-item active">내 플래너<span class="badge">1</span></a> 
				<a href="${pageContext.request.contextPath}/mypage/mymate.do" class="list-group-item">내 동행</a> 
					<a href="${pageContext.request.contextPath}/mypage/reservation.do" class="list-group-item">내 투어예약</a> 
					<a href="${pageContext.request.contextPath}/member/modify.do" class="list-group-item">내 정보 수정</a>
			</div>
		</div>

		<div class="row-fluid col-xs-12 col-md-10">

			<!-- 컨텐츠 -->
			<div class="contents">

				<p><a href="${pageContext.request.contextPath}/planner/home.do">플래너 목록</a></p>
				
				<c:forEach var="article" items="${list }">
					<tr>
						<td>${article.plan_code }</td>
						<td class="link" onclick="location.href='../planner/home.do?plan_code=${article.plan_code }'" onmouseover="style='cursor:pointer;'">
							${article.subject }
						</td>
						<td>${article.people }명</td>
					</tr>

					<!-- planner-box -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<div>
								<a href="../planner/home.do?plan_code=${article.plan_code }" title="자세히보기">
									<img width="242px" style="border: 2px solid #e4e4e4"
										src="http://stuweb.s3.amazonaws.com/photo/6/8/b503bda5272b4f4ff8b2dc5c76d5b05c.png">
								</a>
							</div>
							<div class="caption">
								<ul class="list-unstyled">
									<li style="text-align: center"><h3>
										<a href="../planner/home.do?plan_code=${article.plan_code }" title="자세히보기">
											${article.subject }
										</a>
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
				

				<div class="panel-body">
					
					<div style="clear: both"></div>
					
					<!-- planner-box -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<div style="position: relative; height: 280px; overflow: hidden;">
								<a href="/planner/detail.asp?trip_id=10228771" title="자세히보기"><img width="242px" style="border: 2px solid #e4e4e4"
									src="http://maps.googleapis.com/maps/api/staticmap?size=242x280&amp;mobile=true&amp;visible=39,17&amp;path=color:0x|weight:1|41.388,2.17|37.176,-3.598|38.707,-9.135|41.157,-8.63|40.417,-3.702|43.603,1.446&amp;&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|41.388,2.17&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|37.176,-3.598&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|38.707,-9.135&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|41.157,-8.63&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|40.417,-3.702&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|43.603,1.446&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&amp;format=png&amp;maptype=roadmap&amp;style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&amp;style=element:labels%7Cvisibility:simplified&amp;style=element:labels.icon%7Cvisibility:off&amp;style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&amp;style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&amp;style=feature:poi%7Cvisibility:off&amp;style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&amp;style=feature:water%7Celement:labels%7Cvisibility:off&amp;scale=2"></a>
								<div style="position: absolute; top: 0px; left: 12px; width: 56px; height: 71px; background: url('/img_v8/bg_dday.png');">
									<p style="text-align: center; padding-top: 15px; font-family: tahoma; font-size: 11pt; color: #ffffff">D-12</p>
								</div>
							</div>
							<div class="caption">
								<ul class="list-unstyled">
									<li style="text-align: center"><h3>
											<a href="/planner/detail.asp?trip_id=10228771" title="자세히보기"><font style="font-family: 'NanumGothic'; font-size: 14pt">2019년 5월
													1일 출발</font></a>
										</h3></li>
									<li style="text-align: center">10일간 , 2019년 5월</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- planner-box -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<div style="position: relative; height: 280px; overflow: hidden;">
								<a href="/planner/detail.asp?trip_id=10229842" title="자세히보기"><img width="242px" style="border: 2px solid #e4e4e4"
									src="http://maps.googleapis.com/maps/api/staticmap?size=242x280&amp;mobile=true&amp;visible=39,17&amp;path=color:0x|weight:1|48.861,2.342|50.847,4.351|50.112,8.684&amp;&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.847,4.351&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.112,8.684&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&amp;format=png&amp;maptype=roadmap&amp;style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&amp;style=element:labels%7Cvisibility:simplified&amp;style=element:labels.icon%7Cvisibility:off&amp;style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&amp;style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&amp;style=feature:poi%7Cvisibility:off&amp;style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&amp;style=feature:water%7Celement:labels%7Cvisibility:off&amp;scale=2"></a>
								<div style="position: absolute; top: 0px; left: 12px; width: 56px; height: 71px; background: url('/img_v8/bg_dday.png');">
									<p style="text-align: center; padding-top: 15px; font-family: tahoma; font-size: 11pt; color: #ffffff">D-13</p>
								</div>
							</div>
							<div class="caption">
								<ul class="list-unstyled">
									<li style="text-align: center"><h3>
											<a href="/planner/detail.asp?trip_id=10229842" title="자세히보기"><font style="font-family: 'NanumGothic'; font-size: 14pt">2019년 5월
													2일 출발</font></a>
										</h3></li>
									<li style="text-align: center">6일간 , 2019년 5월</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- planner-box -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<div>
								<a href="/planner/detail.asp?trip_id=51935" title="자세히보기"><img width="242px" style="border: 2px solid #e4e4e4"
									src="http://maps.googleapis.com/maps/api/staticmap?size=242x280&amp;mobile=true&amp;visible=39,17&amp;path=color:0x|weight:1|51.5,-0.126|52,-1.7|51.5,-0.126|48.861,2.342|48.633,-1.509|48.861,2.342|52.374,4.891|52.473,4.817|52.374,4.891|52.524,13.412|51.048,13.734|48.14,11.579|47.57,10.7|49.381,10.178|50.112,8.684|47.369,8.538|47.046,8.308|46.686,7.856|45.464,9.188|45.434,12.339|43.769,11.257|43.716,10.397|41.895,12.482&amp;&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|51.5,-0.126&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|52,-1.7&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|51.5,-0.126&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|48.633,-1.509&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|52.374,4.891&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|52.473,4.817&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|52.374,4.891&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|52.524,13.412&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|51.048,13.734&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.14,11.579&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|47.57,10.7&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|49.381,10.178&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.112,8.684&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.369,8.538&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.046,8.308&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|46.686,7.856&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|45.464,9.188&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|45.434,12.339&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|43.769,11.257&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|43.716,10.397&amp;markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|41.895,12.482&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&amp;format=png&amp;maptype=roadmap&amp;style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&amp;style=element:labels%7Cvisibility:simplified&amp;style=element:labels.icon%7Cvisibility:off&amp;style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&amp;style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&amp;style=feature:poi%7Cvisibility:off&amp;style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&amp;style=feature:water%7Celement:labels%7Cvisibility:off&amp;scale=2"></a>
							</div>
							<div class="caption">
								<ul class="list-unstyled">
									<li style="text-align: center"><h3>
											<a href="/planner/detail.asp?trip_id=51935" title="자세히보기"><font style="font-family: 'NanumGothic'; font-size: 14pt">2018년 5월 3일
													출발</font></a>
										</h3></li>
									<li style="text-align: center">30일간 , 2018년 5월</li>
								</ul>
							</div>
						</div>
					</div>

					<div style="clear: both"></div>

					<!-- planner-box -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<div>
								<a href="/supertrip/detail.asp?planserial=441292" title="자세히보기"><img width="242px" style="border: 2px solid #e4e4e4"
									src="http://stuweb.s3.amazonaws.com/photo/6/8/b503bda5272b4f4ff8b2dc5c76d5b05c.png"></a>
							</div>
							<div class="caption">
								<ul class="list-unstyled">
									<li style="text-align: center"><h3>
											<a href="/planner/index.asp?planserial=441292" title="자세히보기"><font style="font-family: 'NanumGothic'">여행계획</font> </a>
										</h3></li>
									<li style="text-align: center">29일간&nbsp;배낭여행, 2018년 5월초</li>
									<li style="text-align: center"><img src="/images/is/flag/11103_s.gif"></li>
									<li>
										<p style="text-align: center; padding-top: 30px;">
											<a href="/planner/index.asp?planserial=441292" class="btn btn-primary" role="button">플래너</a> 
											<a href="/supertrip/detail.asp?planserial=441292" class="btn btn-default" role="button">자세히</a>
										</p>
									</li>
									<li style="text-align: center; font-size: 9pt; font-family: tahoma"><span class="glyphicon glyphicon-heart-empty"></span>
										0&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment"></span> 0&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-eye-open"></span>
										94</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- planner-box -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<div>
								<a href="/supertrip/detail.asp?planserial=438850" title="자세히보기"><img width="242px" style="border: 2px solid #e4e4e4"
									src="http://maps.googleapis.com/maps/api/staticmap?size=242x175&amp;mobile=true&amp;path=color:0x333333ff|weight:2|51.5,-0.126|52.374,4.891|52.524,13.412|50.112,8.684|49.794,9.927|50.112,8.684|48.14,11.579|45.434,12.339|41.895,12.482|41.903,12.453|41.895,12.482|43.769,11.257|43.716,10.397|44.131,9.722|43.769,11.257|45.464,9.188|43.703,7.266|48.861,2.342|49.077,1.524|49.072,2.177|48.796,2.139|48.861,2.342&amp;markers=color:red|label:S|51.5,-0.126&amp;markers=color:red|label:E|48.861,2.342&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a>
							</div>
							<div class="caption">
								<ul class="list-unstyled">
									<li style="text-align: center"><h3>
											<a href="/planner/index.asp?planserial=438850" title="자세히보기"><font style="font-family: 'NanumGothic'">런던-네덜-독일-이탈-프..</font> </a>
										</h3></li>
									<li style="text-align: center">29일간&nbsp;배낭여행, 2018년 5월초</li>
									<li style="text-align: center"><img src="/images/is/flag/11103_s.gif"> </li>
									<li>
										<p style="text-align: center; padding-top: 30px;">
											<a href="/planner/index.asp?planserial=438850" class="btn btn-primary" role="button">플래너</a> 
											<a href="/supertrip/detail.asp?planserial=438850" class="btn btn-default" role="button">자세히</a>
										</p>
									</li>
									<li style="text-align: center; font-size: 9pt; font-family: tahoma"><span class="glyphicon glyphicon-heart-empty"></span>
										0&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment"></span> 0&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-eye-open"></span>
										239</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- planner-add -->
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail" style="background: #efefef">
							<p style="text-align: center">
								<br> <a href="/planner/planner_rt.asp" class="btn btn-warning"><span class="glyphicon glyphicon-plus"></span> 여행 등록하기</a> <br>
							</p>
						</div>
					</div>

				</div>


			</div>
		</div>
	</div>
</div>

<!-- end Contents -->

<%@ include file="../footer.jsp"%>
