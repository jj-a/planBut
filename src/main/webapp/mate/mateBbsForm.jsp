<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<!-- 본문시작 template.jsp -->

<h3>★ 글쓰기 ★</h3>
<p><a href="mateBbsForm.jsp">★ 동행 게시판 쓰기 ★</a></p>
<form name="matebbsfrm" 
	  method="post" 
	  action="./create.do">
<table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
<tr>
    <th>작성자</th>
    <td><input type="text" name="mp_id" size="28" maxlength="20" required></td>
</tr> 
<tr>
    <th>제목</th>
    <td><input type="text" name="subject" size="28" maxlength="100" required></td>
</tr> 
<tr>
    <th>내용</th>
    <td>
      <textarea rows="5" cols="30" name="content"></textarea>
    </td>
</tr> 
<tr>
    <th>성별</th>
    <td><input type="text" name="gender" size="1" maxlength="10" required></td>
</tr>
<tr>
    <th>작성일</th>
    <td><input type="text" name="regdt" size="28" maxlength="100" required></td>
</tr>
<tr>
    <th>도시</th>
    <td><input type="text" name="ct_code" size="2" maxlength="100" required></td>
</tr>
<tr>
    <th>정원</th>
    <td><input type="text" name="capacity" size="28" maxlength="100" required></td>
</tr> 
<tr>
    <th>동행날짜</th>
    <td><input type="text" name="m_date" size="28" maxlength="100" required></td>
</tr> 
<tr>
    <td colspan="2" align="center">
      <input type="submit" value="쓰기">
      <input type="reset" value="취소" onclick="location.href='./list.do'">
    </td>
</tr> 
</table>
</form>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

