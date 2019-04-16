<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<%@ include file="ssi.jsp"%>
<!-- 본문시작 template.jsp -->
<h1>★ 게시글 수정 ★</h1>
  <p>
     <a href="bbsList.jsp">★ 게시글 목록★</a>
 	 <br>
  	 <a href="bbsForm.jsp">★ 글 쓰기 ★</a>
  </p>
  <form method="post" action="bbsUpdateForm2.jsp" onsubmit="return upCheck(this)">
  <input type="hidden" name="bbsno" value="<%=request.getParameter("bbsno")%>">
  <input type="hidden" name="col" value="<%=request.getParameter("col")%>">
  <input type="hidden" name="word" value="<%=request.getParameter("word")%>">
  <input type="hidden" name="nowPage" value="<%=nowPage%>">
  <table>
  <tr>
    <th>비밀번호</th>
   <td><input type="password" name="passwd" size="28" maxlength="10" required></td> 
  </tr> 
  <tr>
    <td colspan="2" align="center">
      <input type="submit" value="확인">
    </td>
  </tr> 
  </table>  
  </form>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

