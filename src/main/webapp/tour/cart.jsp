<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file='../header.jsp'%>

<!-- 임시 버튼  -->
<table>
<tr>
	<td><input type="button" value="투어홈" onclick="location.href='./tour.do'"></td>
	<td><input type="button" value="도시리스트" onclick="location.href='./city.do'"></td>
	<td><input type="button" value="투어정보" onclick="location.href='./tourinfo.do'"></td>
	<td><input type="button" value="투어리스트" onclick="location.href='./tourlist.do'"></td>
	<td><input type="button" value="예약페이지" onclick="location.href='./reserve.do'"></td>
</tr>
</table>

<h1> 짱바구니 </h1>

<%@ include file='../footer.jsp'%>