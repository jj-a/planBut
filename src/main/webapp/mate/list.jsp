<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>notice5/list.jsp</title> 
<style type="text/css"> 
*{ 
  font-family: Consolas; 
  font-size: 24px; 
} 
</style> 
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head> 
<body>
	<div class="title">공지사항</div>
	<table>
	<tr>
		<th>번호</th>
		<th>내용</th>
		<th>작성자</th>
		<th>등록일</th>
	</tr>
	
	<c:forEach var="dto" items="${list }">
		<tr>
			<td>${dto.noticeno }</td>
			<td><a href="../notice/read.do?noticeno=${dto.noticeno }">${dto.title }</a></td>
			<td>${dto.rname }</td>
			<td>${dto.rdate.substring(0,10) }</td>
		</tr>
	</c:forEach>
	
	</table>
	
	<c:if test="${!(empty requestScope.list)}">
	<!-- 검색시작 -->
	<br>
		<table>
		<tr>
			<td style="text-align:center; height:50px">
				<form method="get" action="search.do">
					<select name="col">
						<option value="title">제목
						<option value="rname">작성자
						<option value="title_rname">제목 + 작성자
					</select>
				<input type="text" name="word">
				<input type="submit" value="검색">
				</form>
			</td>
		</tr>
		</table>
	</c:if>
	
	<div class="bottom">
		<input type="button" value="공지사항 등록" onclick="location.href='./create.do'">
	</div>
</body> 
</html> 
