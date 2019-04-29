<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<!-- 본문시작 template.jsp -->

<h3>★ 동행신청하기 ★</h3>
<p><a href="./list.do">★ 동행 게시판 보러가기 ★</a></p>
<form name="matebbsfrm" 
	  method="post" 
	  action="./applyBbs.do">
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
<input type="hidden" name="b_no" value="${dto.b_no }">
<table>
<tr>
    <th>신청자</th>
    <td><input type="text" name="sp_id" size="28" maxlength="20" ></td>
</tr> 
<tr>
    <th>신청인원</th>
    <td><input type="text" name="people" size="28" maxlength="100" required></td>
</tr>
<tr>
    <td colspan="2" align="center">
      <input type="submit" value="신청">
      <input type="reset" value="취소" onclick="location.href='./list.do'">
    </td>
</tr> 
</table>
</form>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

