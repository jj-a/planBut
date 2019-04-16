<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="ssi.jsp"%>
<%@ include file="../header.jsp"%>
<!-- 본문시작 bbsIns.jsp -->
<% 
	// 1) 사용자가 입력한 정보를 변수에 담기
	String wname   = request.getParameter("wname").trim();
	String subject = request.getParameter("subject").trim();
	String content = request.getParameter("content").trim();
	String passwd  = request.getParameter("passwd").trim();
	String ip = request.getHeader("X-Forwarded-For");
	 
    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
      ip = request.getHeader("Proxy-Client-IP");
    }
    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
      ip = request.getHeader("WL-Proxy-Client-IP");
    }
    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
      ip = request.getHeader("HTTP_CLIENT_IP");
    }
    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
      ip = request.getHeader("HTTP_X_FORWARDED_FOR");
    }
    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
      ip = request.getRemoteAddr();
    }
	
	// 2) 1)의 값을 dto 객체에 담기
	dto.setWname(wname);
	dto.setSubject(subject);
	dto.setContent(content);
	dto.setPasswd(passwd);
	dto.setIp(ip);
	
	// 3) tb_bbs 테이블에 저장하기
	int res = dao.insert(dto);
	
	// 4) 글쓰기 성공 후 목록페이지로 이동하기
	if(res==0){
		out.println("<p>게시글 입력이 실패했습니다</p>");
		out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
	} else {
		out.println("<script>");
		out.println("	alert('게시글이 입력되었습니다');");
		out.println("	location.href='bbsList.jsp';"); // 페이지 이동
		out.println("</script>");
	} // if end

	
%>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

