<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>mate/mateBbsList.jsp</title> 
<style type="text/css"> 
*{ 
  font-family: Consolas; 
  font-size: 24px; 
} 
</style> 
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head> 
<body>
	<div class="title">동행 게시판</div>
	<table>
	<tr>
		<th>번호</th>
		<th>모집자</th>
		<th>작성일</th>
		<th>제목</th>
		<th>내용</th>
		<th>도시</th>
		<th>동행날짜</th>
		<th>성별</th>
		<th>현재 확정인원</th>
		<th>정원</th>
	</tr>
	
	<c:forEach var="dto" items="${list }">
		<tr>
			<td>${dto.b_no }</td>
			<td>${dto.mp_id }</td>
			<td>${dto.regdt.substring(0,10) }</td>
			<td>${dto.subject }</td>
			<td>${dto.content }</td>
			<td>${dto.ct_code }</td>
			<td>${dto.m_date }</td>
			<td>${dto.gender }</td>
			<td>${dto.people } / ${dto.capacity }</td>
		</tr>
	</c:forEach>
	
	</table>
	
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
</body> 
</html> 
