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

.gr {
    height: 50px;
    font-size: large;
    background: beige;
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
				    <a href="./mymate.do">■ 동행 확정 목록</a>
			    </th>
			    <th>
				    <a href="./mateApply.do">■ 동행 신청 목록</a>
			    </th>
                <th>
				    <a href="./mateReceive.do">■ 동행 신청 받은 내역</a>
			    </th>
				</tr>
				</table> 
				
				<h3>동행 신청 받은 내역</h3>
				<form action="">
				<input type="hidden" name="ma_code" value="">
			    <table border="1" style="margin: auto;">
			    <tr>
                <td colspan="6" class="gr">동행 게시판 경로</td>
                </tr>
                <tr>
                <th>신청번호</th>
                <th>글번호</th>
                <th>신청자 아이디</th>
                <th>신청한 인원</th>
                <th>처리상황</th>
                <th>동행승인</th>
                </tr>
                <c:forEach var="dto" items="${myMateBbs }">
			    <tr>
			    <td>${dto.ma_code }</td>
			    <td>${dto.b_no }</td>
			    <td>${dto.sp_id }</td>
			    <td>${dto.people }</td>
			    <c:choose>
			    <c:when test="${dto.mate_code == '2' }">
                <td>취소</td>
                </c:when>
                <c:otherwise>
			    <td>
			    <select name="mate_code" id="mate_code" onchange="recCheck(this.form, this, 1)">
                <option value="0" <c:if test="${dto.mate_code == '0' }">selected</c:if>>대기</option>
                <option value="1" <c:if test="${dto.mate_code == '1' }">selected</c:if>>거절</option>
                </select>
                </td>
                </c:otherwise>
                </c:choose>
                <td><input type="button" value="승인" onclick="recOk()"></td>
                </tr>
			    </c:forEach>
			    <tr>
			    <td colspan="6" class="gr">동행 추천 경로</td>
			    </tr>
			    <tr>
			    <th>신청번호</th>
			    <th>신청자 아이디</th>
			    <th colspan="2">동행 날짜</th>
			    <th>처리상황</th>
			    <th>동행승인</th>
			    </tr>
			    <c:forEach var="dto1" items="${myMateRecm }">
			    <tr>
			    <td>${dto1.ma_code }</td>
			    <td>${dto1.sp_id }</td>
			    <td colspan="2">${dto1.m_date.substring(0,10) }</td>
			    <c:choose>
			    <c:when test="${dto1.mate_code == '2' }">
                <td>취소</td>
                </c:when>
                <c:otherwise>
                <td>
                <select name="mate_code" id="mate_code" onchange="recCheck(this.form, this, 2)">
                <option value="0" <c:if test="${dto1.mate_code == '0' }">selected</c:if>>대기</option>
                <option value="1" <c:if test="${dto1.mate_code == '1' }">selected</c:if>>거절</option>
                </select>
                </td>
                </c:otherwise>
                </c:choose>
                <td><input type="button" value="승인" onclick="recOk()"></td>
			    </tr>
			    </c:forEach>
			    
			    </table>
			    </form>	
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

function recCheck(f, i, a) {
	var rq = i.parentElement.parentElement.rowIndex;
	var cd = document.getElementsByTagName('tr')[rq+1].children[0].childNodes[0].nodeValue;
	f.ma_code.value = cd;
	//var mc = $(i).attr("class");
	//var ele = document.getElementById("receive");
    //var number = ele.childElementCount;
    //var eg = ele.childNodes[0].children;
    //var ge = ele.children().eq(0).attr("value")
	if(a==1){
		alert(rq);
		alert(cd);
		alert(f.ma_code.value)
		//alert(mc);  
		//alert(ele);
		//alert(number);
		//alert(eg);
		//alert(ge);
	    var message="변경하시겠습니까?";
	    if(confirm(message)) {
	    	   f.action="./recBbsChange.do";
	    } // if end
    } // if end 
	   
	if(a==2){
		alert(rq);
        alert(ma_code);
	    var message="변경하시겠습니까?";
	    if(confirm(message)) {
	    	   f.action="./recRecmChange.do?ma_code="+ma_code;
	    } // if end
	} // if end
     
} // recCheck() end

function recOk() {
    	
} // recOk() end

</script>


<!-- end Contents -->

<%@ include file="../footer.jsp"%>