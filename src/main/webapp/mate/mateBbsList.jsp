<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../header.jsp"%>
<!-- 본문시작 mateBbsList.jsp -->

    <div style="margin: auto">
	<h1>동행 구하기 게시판</h1>
	
	<form method="POST" action=""> 
	
	<table style="text-align: center" border=1>
	<c:forEach var="dto" items="${list }">
	
	<input type="hidden" name="b_no" value="">
	   <tr>
	        <th>번호</th>
	        <td>${dto.b_no }</td>
	        <th>모집자 : ${dto.mp_id }</th>
			<th>작성일</th>
			<td>${dto.regdt.substring(0,10) }</td>
			<th>제목</th>
			<td>${dto.subject }</td>
			<th>내용</th>
			<td>${dto.content }</td>
			<th>
            <input type="button" value="글 삭제" onclick="mateBbsDel(this.form, getRowidx(this))">
            </th>
            <th>
            <input type="button" value="글 수정" onclick="mateBbsUpdate(this.form, getRowidx(this))">
            </th>
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
    
    function mateBbsDel(f, row) {
    	var no = document.getElementsByTagName('tr')[row].children[1].childNodes[0].nodeValue;
    	
        alert(no);
        
        f.b_no.value = no;
        
    	var message="선택한 게시물을 삭제하시겠습니까?";
        if(confirm(message)) f.submit();
    } // mateBbsDel() end
    
    function mateBbsUpdate(f, row) {
        var no = document.getElementsByTagName('tr')[row].children[1].childNodes[0].nodeValue;
        
        alert(no);
        
        f.b_no.value = no;
        
        var message="선택한 게시물을 수정하시겠습니까?";
        if(confirm(message)) f.submit();
    } // mateBbsUpdate() end
    
    function getRowidx(e) {
        return e.parentElement.parentElement.rowIndex;
    }
    
    </script>
   
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%> 
