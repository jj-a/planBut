<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../header.jsp"%>
<!-- 본문시작 mateBbsList.jsp -->

    
	<h3>동행 구하기 글안나와</h3>
	<h1>동행 구하기 게시판</h1>
	<table border=1>
	<c:forEach var="dto" items="${list }">
	     <tr>
			<th>모집자 : ${dto.mp_id }</th>
			<th>작성일</th>
			<td>${dto.regdt.substring(0,10) }</td>
			<th>제목</th>
			<td>${dto.subject }</td>
			<th>내용</th>
			<td>${dto.content }</td>
			<th>도시</th>
			<td>${dto.ct_code }</td>
		</tr>
		<tr>
			<th>동행날짜</th>
			<td>${dto.m_date.substring(0,10) }</td>
			<th>성별</th>
			<td>${dto.gender }</td>
			<th>현재확정인원 / 정원</th>
			<td>${dto.people } / ${dto.capacity }</td>
		</tr>
		
	</c:forEach>
	<br/>
	
	</table>
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

<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%> 
