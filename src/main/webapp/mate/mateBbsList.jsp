<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../header.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/table.css?v=12">
<!-- 본문시작 mateBbsList.jsp -->
<%-- <c:if test="${empty sessionScope.session_m_id }">
<% 
    Cookie[] cookies = request.getCookies();
    String c_id = "";
    if(cookies!=null) { // 쿠키가 존재하는가?
        for(int idx = 0; idx < cookies.length; idx++) {
            Cookie cookie = cookies[idx];
            if(cookie.getName().equals("c_id")==true) {
                // 쿠키변수 c_id가 있는가?
                c_id = cookie.getValue();       
            } // if end
        } // for end
    } // if end
%>

    </c:if> --%>
<style>
.dc{
font-size: 25px;
text-align: center;
}
.dgg{
text-align: center;
}
.bottom{
text-align: center;
}
.tb{
width: 80%;
}
.m_col{
background: yellow;
}
</style>
    
    <br>
    <div class="dc">
        <h3>동행 추천</h3>
        <c:choose>
        <c:when test="${session_m_id != null }">
        <input type="hidden" value="${session_m_id }">
            <c:forEach var="dto1" items="${recmList }" varStatus="status1">
            <form id="recity" action="">
            	<input type="hidden" name="mp_id" value="">
            	<input type="hidden" name="cp_code" value="">
            	<input type="hidden" value="${session_m_id }">
                <input type="button" id="${status1.index}" name="ct_code" value="${dto1.ct_code }" onclick="recm(this.form, this)">
                <input type="text" value="${dto1.s_date.substring(0,10) } ~ ${dto1.hey.substring(0,10) }" size="23" readonly>
                <br>
                <c:forEach var="dto2" items="${recmPeople }" varStatus="status2">
                    <div id="${status2.index}rp " style="display: none;" class="${dto2.ct_code }">
	                    <img class="img-circle" src="${pageContext.request.contextPath}/member/photo/${dto2.photo }" width="100"
							data-toggle="tooltip" data-placement="top" title="${dto2.s_date.substring(0,10) }~${dto2.hey.substring(0,10) }">
						<input type="button" name="mpid" value="${dto2.m_id }">
						<input type="hidden" name="code" value="${dto2.cp_code}">
						<input type="button" value="동행신청" onclick="applyR(this.form, this)">
						<input type="button" value="채팅" onclick="location.href='./mateChat.do'">
                    	<span class="more" style="display: none;">
							<strong><input type="text" name="s_date" id="s_date" value="${dto2.s_date.substring(0,10) }" size="10" readonly>
                        	<input type="text" name="day" id="day" value="${dto2.hey.substring(0,10) }" size="10" readonly></strong><br/>
						</span>
                        <%-- <input type="button" name="chat" value="채팅"> --%>
                    </div>
                </c:forEach>
            </form>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <h3> 로그인 후 이용가능 </h3>
        </c:otherwise> 
        </c:choose>
    </div>
    <br>
    <div class="dgg">
	<h3>동행 구하기 게시판</h3>
	<form action=""> 
	<input type="hidden" name="b_no" value="">
	<table class="tb">
		<tr class="m_col">
			<th>글번호</th><th>도시</th><th colspan="2">동행일</th><th>성별</th><th>정원</th>
		</tr>
		<c:forEach var="dto" items="${list }">
		<tr>
            <td>${dto.b_no }</td>
            <td>${dto.ct_code }</td>
			<td colspan="2">${dto.m_date.substring(0,10) }</td>
			<td>${dto.gender }</td>
			<td>${dto.people } / ${dto.capacity }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="3">${dto.subject }</td>
	        <th>모집자</th>
			<td>${dto.mp_id }</td>
		</tr>
		<tr>
			<th rowspan="2">내용</th>
			<td rowspan="2" colspan="3"><div style="overflow-y:scroll; height:100%; width:100%">${dto.content }</div></td>
			<th>작성일</th>
			<td>${dto.regdt.substring(0,10) }</td>
		</tr>
		<tr>
            <c:if test="${session_m_id == dto.mp_id}">
            <td>
            <input type="button" value="글 삭제" onclick="mateCheck(this.form, getRowidx(this), 1)">
            </td>
            <td>
            <input type="button" value="글 수정" onclick="mateCheck(this.form, getRowidx(this), 2)">
            </td>
            </c:if>
            <c:if test="${session_m_id != dto.mp_id && session_m_id != null}">
            <td>
            <input type="button" value="신청하기" onclick="mateCheck(this.form, getRowidx(this), 3)">
            </td>
            </c:if>
        </tr>
        </c:forEach>
	</table>
	</form>
	<br>
    <br> 
	</div>
	<%-- <c:if test="${!(empty requestScope.list)}">
	<!-- 검색시작 -->
	<br>
		<table>
		<tr>
			<td style="text-align:center; height:50px">
				<form method="get" action="search.do">
					<select name="col">
						<option value="subject">제목
						<option value="rname">작성자
						<option value="title_rname">제목 + 작성자
					</select>
				<input type="text" name="word">
				<input type="submit" value="검색">
				</form>
			</td>
		</tr>
		</table>
	</c:if> --%>
	
	<div class="bottom">
		<input type="button" value="글 등록" style="font-size:25px;" onclick="location.href='./create.do'">
	</div>
	
    <script>
    function applyR(f, i) {
    	var mpid=$(i).parent().children().eq(1).attr("value");
    	var code=$(i).parent().children().eq(2).attr("value");

        f.mp_id.value = mpid;
        f.cp_code.value = code;
		f.action="./applyRecm.do";
		
		var message=mpid+" 에게 동행신청을 하시겠습니까?";
        
        if(confirm(message)) f.submit();
    } // mateCheck() end
    
    function mateCheck(f, row, i) {
    	var no = document.getElementsByTagName('tr')[row-3].children[0].childNodes[0].nodeValue;
        f.b_no.value = no;
        //alert(no)
        if(i==1){
	        f.action="./delete.do?b_no="+no;
	    	var message="게시물을 삭제하시겠습니까?";
        }
        
        if(i==2){
            f.action="./update.do?b_no="+no;
            var message="게시물을 수정하시겠습니까?";
        }
        
        if(i==3){
            f.action="./applyBbs.do?b_no="+no;
            var message="동행신청을 하시겠습니까?";
        }
        
        if(confirm(message)) f.submit();
    } // mateCheck() end
    
    function getRowidx(e) {
        return e.parentElement.parentElement.rowIndex;
    } // getRowidx() end
    
    function recm(f, i){
    	var ct_code = $(i).attr("value");
    	// alert(ct_code);
    	var find = "." + ct_code;
    	var ele = document.getElementById("recity");
    	var number = ele.childElementCount;
    	for(t=1; t<number; t++) {
    		var classval = $(i).parent().children().eq(t).attr("class");
    		// alert(classval);
    		if(classval==ct_code) {
    			$(i).parent().children().eq(t).css("display","inline");
    			$(i).parent().children().eq(t).css("vertical-align", "middle");
    			$(i).parent().children().eq(t).css(" float", "left");
    			$(i).parent().children().eq(t).css("width", "100");
    			$(i).parent().children().eq(t).css("height", "120");
    			$(i).parent().children().eq(t).css("overflow", "hidden");
    		}
    	}
    	//$(i).parent().children().eq(t).css("display","block")
    	//$(i).parent().children().eq(1).attr("id");
    	//$(i).parent().children().eq(1).attr("id");
    	
    	/* alert(find);
    	alert($(find).attr("id"));
    	alert($(find).children().eq(0).attr("value"));
    	alert($(find).children().eq(1).attr("value"));
    	alert($(find).children().eq(2).attr("value"));
    	alert($(find).children().eq(3).attr("value")); */
    	
    	// document.getElementById("0rm").style.display = "block";
        //var order = $(ct_code).attr("id");
       // alert(order);
        //var ct = document.getElementById(order).value;
        //alert(ct);
        //var message = ct + "의 동행을 찾으시겠습니까?";
        //if(confirm(message)) f.submit();
     } // recm() end
     
     $(function () {
    		$('[data-toggle="tooltip"]').tooltip()
    	})
    </script>
   
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%> 