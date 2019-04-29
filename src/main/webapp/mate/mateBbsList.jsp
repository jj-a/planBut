<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../header.jsp"%>
<!-- 본문시작 mateBbsList.jsp -->
<style>
.dc{
text-align: center;
}
.dgg{
text-align: center;
}
.bottom{
text-align: center;
}

</style>

    <div class="dc">
        <h3>동행 추천</h3>
        
            <c:forEach var="dto1" items="${recmList }" varStatus="status1">
            <form id="recity">
                <input type="button" id="${status1.index}" name="ct_code" value="${dto1.ct_code }" onclick="recm(this.form, this)">
                
                
                    <c:forEach var="dto2" items="${recmPeople }" varStatus="status2">
                       <div id="${status2.index}rp " style="display: none;" class="${dto2.ct_code }">
                        <input type="text" name="cc" id="cc" value=${dto2.ct_code }>
                        <input type="text" name="m_id" id="m_id" value="${dto2.m_id }">
                        <input type="text" name="s_date" id="s_date" value="${dto2.s_date }">
                        <input type="text" name="day" id="day" value="${dto2.hey }">
                       </div>
                    </c:forEach>
                    
	          
            </form>
            </c:forEach>
          
        <%-- 
        <c:forEach var="dto" items="${recmList }" varStatus="status">
        <form name="qw" id="${status.index }qw">
            <ul id="ua">
	            <li id="la">
	               <h5 id="ct_code${dto.ct_code }" onclick="mateRecm(this.form)">${dto.ct_code }</h5>
	            </li>
	            <li>
		            <div id="recm" style="display: none;">
		                <input type="hidden" name="ct_code2" id="ct_code2" value="${dto.ct_code }">
		                <c:forEach var="dto" items="${recmPeople }">
		                    <input type="text" name="cc" value="">
		                    <input type="text" name="s_date" id="s_date" value="${dto.s_date }">
		                    <input type="text" name="day" id="day" value="${dto.day }">
		                    <input type="text" name="m_id" id="m_id" value="${dto.m_id }">
		                </c:forEach>
		            </div>
	            </li>
            </ul>
        </form>    
        </c:forEach> 
        --%>
    </div>
    
    <div class="dgg">
	<h3>동행 구하기 게시판</h3>
	
	<form action=""> 
	<input type="hidden" name="b_no" value="">
	<table border=1 style="margin: auto;">
	<c:forEach var="dto" items="${list }">
	   <tr>
	        <th>모집자 : ${dto.mp_id }</th>
			<th>작성일</th>
			<td>${dto.regdt.substring(0,10) }</td>
			<th>제목</th>
			<td>${dto.subject }</td>
			<th>내용</th>
			<td>${dto.content }</td>
		</tr>
		<tr>
		    <th>도시</th>
            <td>${dto.ct_code }</td>
			<th>동행날짜</th>
			<td>${dto.m_date.substring(0,10) }</td>
			<th>성별</th>
			<td>${dto.gender }</td>
			<th>현재확정인원 / 정원</th>
			<td>${dto.people } / ${dto.capacity }</td>
		</tr>
		<tr>
		    <th>번호</th>
            <td>${dto.b_no }</td>
            <th>
            <input type="button" value="글 삭제" onclick="mateCheck(this.form, getRowidx(this), 1)">
            </th>
            <th>
            <input type="button" value="글 수정" onclick="mateCheck(this.form, getRowidx(this), 2)">
            </th>
            <th>
            <input type="button" value="신청하기" onclick="mateCheck(this.form, getRowidx(this), 3)">
            </th>
        </tr>
        </c:forEach>
         </table>
        </form>
        
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
		<input type="button" value="글 등록" onclick="location.href='./create.do'">
	</div>
	
    <script>
    
    function mateCheck(f, row, i) {
    	var no = document.getElementsByTagName('tr')[row].children[1].childNodes[0].nodeValue;
        f.b_no.value = no;
        
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
    
    function mateRecm(qw) {
    	
    	//document.getElementById("1recm").style.display = "block";
    	//alert($(qw).children().eq(1).val());
    	//alert($(qw).children().children().eq(1).val());
    	//alert($(qw).children().children().eq(1));
    	//alert($(qw).children().children().eq(1).text());
    	//alert($(qw).children().children().eq(1).attr("id"));
    	
    	var fid = $(qw).attr("name");
    	alert(fid);
    	var ct = $(qw).eq(0).attr("id");
    	alert(ct);
        //var div_id = "#" + $(qw).attr("id") + "recm";
        // var te = document.forms["qw"].elements["la"];
/*        var te = document.getElementById("div_id");
        alert(te);
    	var gd = document.getElementsByTagName("h5").innerHTML;
    	alert(gd);
    	var gg = document.getElementsByTagName("ul");
    	alert(gg); */
    } // mateRecm() end
    
    function recm(f, i){
    	var ct_code = $(i).attr("value");
    	alert(ct_code);
    	var find = "." + ct_code;
    	var ele = document.getElementById("recity");
    	var number = ele.childElementCount;
    	alert(number);
    	for(t=1; t<number; t++) {
    		var classval = $(i).parent().children().eq(t).attr("class");
    		alert(classval);
    		if(classval==ct_code) {
    			$(i).parent().children().eq(t).css("display","block");
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
    
    </script>
   
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%> 
