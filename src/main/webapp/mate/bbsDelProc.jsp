<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<%@ include file="ssi.jsp" %>
<!-- 본문시작 template.jsp -->
  <h1>★ 게시글 삭제 ★</h1>
  <p>
     <a href="bbsList.jsp">★ 게시글 목록 ★</a>
     <br>
     <a href="bbsForm.jsp">★ 글 쓰기 ★</a>
  </p>
<%
  int bbsno = Integer.parseInt(request.getParameter("bbsno"));
  String passwd = request.getParameter("passwd");
  int res = dao.delproc(bbsno,passwd);
  if(res==0){
    out.println("<p>게시글 삭제 실패</p>");
    out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
  }else{
    out.println("<script>");
    out.println("   alert('게시글 삭제');");        
    out.println("   location.href='bbsList.jsp?col=" + col + "&word=" + word + "&nowPage=" + nowPage + "';"); // 페이지 이동     
    out.println("</script>");        
  }//if end
%>  
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>