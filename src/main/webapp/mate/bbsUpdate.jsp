<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<%@ include file="ssi.jsp" %>
<!-- 본문시작 template.jsp -->
<h1>★ 게시글 수정 ★</h1>
  <p>
     <a href="bbsList.jsp">★ 게시글 목록★</a>
 	 <br>
  	 <a href="bbsForm.jsp">★ 글 쓰기 ★</a>
  </p>
<%
  int bbsno = Integer.parseInt(request.getParameter("bbsno"));
  String passwd = request.getParameter("passwd");
  
  /* 
  dto.setPasswd(passwd);
  dto.setBbsno(bbsno);
  
  dto = dao.updateform(bbsno, passwd);
  
  if(dto==null) {
	  out.print("해당 게시글 없음");
  } else {
	 */  
%>
	 <form method="post" action="bbsUpdateProc.jsp" onsubmit="return bbsCheck(this)">
	 <table border="1">
	 <input type="hidden" name="bbsno" value="<%=request.getParameter("bbsno")%>">
	 <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
	 <input type="hidden" name="col" value="<%=request.getParameter("col")%>">
  	 <input type="hidden" name="word" value="<%=request.getParameter("word")%>">
  	 <input type="hidden" name="nowPage" value="<%=nowPage%>">
	 <tr>
     <th>작성자</th>
     <%-- <td><input type="text" name="wname" value="<%=dto.getWname() %>" size="28" maxlength="20" required></td> --%>
	 </tr> 
	 <tr>
     <th>제목</th>
     <%-- <td><input type="text" name="subject" value="<%=dto.getSubject() %>" size="28" maxlength="100" required></td> --%>
	 <tr>
     
     <th>내용</th>
     <td>
     <%--  <textarea rows="5" cols="30" name="content"><%=dto.getContent() %></textarea> --%>
     </td>
	 </tr> 
	 <tr>
		<th>비밀번호</th>
   		<%-- <td><input type="password" name="passwd" value="<%=dto.getPasswd() %>" size="28" maxlength="10" required></td> --%>
	 </tr>
		<tr>
    		<td colspan="2" align="center">
      		<input type="submit" value="수정">
      		<input type="reset" value="취소">
   	 		</td>
		</tr> 
		</table>
		</form>
<% 	
	 // }
%>	 
  

<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

