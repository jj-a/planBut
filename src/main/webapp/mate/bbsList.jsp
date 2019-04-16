<%@page import="net.bbs.BbsDAO"%>
<%@page import="net.bbs.BbsDTO"%>
<%@ include file="ssi.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<!-- 본문시작 bbsList.jsp -->

<h3>★ 게시판 목록 ★</h3>
<p><a href="bbsComment.jsp">[댓글 목록]</a></p>
<table border = "1" margin=auto>
	<tr>
		<th>작성자</th>
		<th>제목</th>
		<th>조회수</th>
		<th>등록일</th>
	</tr>
<% 
	
	// 글갯수
	int totalRecord = dao.count(col, word);

	// 한페이지당 출력할 글의 줄수
	int recordPerPage = 10;
	
	// 전체목록
	ArrayList<BbsDTO> list = dao.list();
	if(list==null) {
		out.println("<tr>");
		out.println("	<td colspan='5'></td>");
		out.println("</tr>");
	} else {
		// 오늘 날짜를 "2019-01-16" 문자열 작성
		String today = Utility.getDate();
		for(int idx = 0; idx < list.size(); idx++) {
			dto = list.get(idx);
%>
			<tr style="color: green">
				<td><%=dto.getWname() %></td>
				<td>
<% 

				// 답변이미지 출력
				for(int n = 1; n <= dto.getIndent(); n++) {
					out.println("<img src='../images/reply3.png' height='20' width='20'>");
				}
%>
				<a href="bbsRead.jsp?bbsno=<%=dto.getBbsno() %>&col=<%=col%>&word=<%=word%>&nowPage=<%=nowPage%> "><%=dto.getSubject() %></a>
<%
				// 오늘 작성한 글 제목 뒤에 new 이미지 출력
				// 작성일에서 년,월,일만 자르기
				// ex) 2019-01-16
				String regdt = dto.getRegdt().substring(0, 10);
				if(regdt.equals(today)) {
					out.println("<img src='../images/new3.png' height='25' width='25'>");
				} // if end
				
				// 조회수가 10이상이면 hot 이미지 출력
				if(dto.getReadcnt()>=10) {
					out.println("<img src='../images/hot3.png' height='16' width'16'>");
				} // if end
%>
				</td>
				<td><%=dto.getReadcnt() %></td>
				<td><%=dto.getRegdt().substring(0, 10) %></td>
			</tr>
<% 
		} // for end
		
		
	} // if end
%>
	
	<% 
	// 전체목록
	ArrayList<BbsDTO> list2 = dao.list2(col, word, nowPage, recordPerPage);
	
	if(list2==null) {
		out.println("<tr>");
		out.println("	<td colspan='5'>자료없음</td>");
		out.println("</tr>");
	} else {
		
		// 오늘 날짜를 "2019-01-16" 문자열 작성
		String today = Utility.getDate();
		for(int idx = 0; idx < list2.size(); idx++) {
			dto = list2.get(idx);
			
%>
			<tr>
				<td><%=dto.getWname() %></td>
				<td>
<% 
				
				// 답변이미지 출력
				for(int n = 1; n <= dto.getIndent(); n++) {
					out.println("<img src='../images/reply3.png' height='20' width='20'>");
				}
%>
				<a href="bbsRead.jsp?bbsno=<%=dto.getBbsno() %>&col=<%=col%>&word=<%=word%>&nowPage=<%=nowPage%> "><%=dto.getSubject() %></a>
<%
				// 오늘 작성한 글 제목 뒤에 new 이미지 출력
				// 작성일에서 년,월,일만 자르기
				// ex) 2019-01-16
				String regdt = dto.getRegdt().substring(0, 10);
				if(regdt.equals(today)) {
					out.println("<img src='../images/new3.png' height='25' width='25'>");
				} // if end
				
				// 조회수가 10이상이면 hot 이미지 출력
				if(dto.getReadcnt()>=10) {
					out.println("<img src='../images/hot3.png' height='16' width'16'>");
				} // if end
				
%>
				</td>
				<td><%=dto.getReadcnt() %></td>
				<td><%=dto.getRegdt().substring(0, 10) %></td>
			</tr>
<% 
		} // for end
		
		// 글갯수
				out.println("<tr>");
				out.println("<th colspan='4'>");
				out.println("모든 게시글 갯수 : <strong>");
				out.println(totalRecord);
				out.println("</strong>");
				out.println("</th>");
				out.println("</tr>");
%>
<% 				
	} // if end
%>
	<!-- 페이지 리스트 시작 -->
	<tr>
		<td colspan="4">
<%
		String paging = new Paging().paging2(totalRecord, nowPage, recordPerPage, col, word, "bbsList.jsp");
		out.println(paging);
%>		
		</td>
	</tr>
	<!-- 페이지 리스트 끝 -->
	
	<!-- 검색시작 -->
		<tr>
			<td colspan="4" style="text-align:center; height:50px">
			<form method="get"
				  action="bbsList.jsp"
				  onsubmit="return searchCheck(this)">
				<select name="col">
					<option value="wname">작성자
					<option value="subject">제목
					<option value="content">내용
					<option value="subject_content">제목+내용
				</select>
				<input type="text" name="word">
				<input type="submit" value="검색">
			</form>
			</td>
		</tr>
	<!-- 검색끝 -->
	</table>
<p><a href="bbsForm.jsp">[글쓰기]</a></p>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

