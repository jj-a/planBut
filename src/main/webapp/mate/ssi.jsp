<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%@ page import="net.utility.*"%>
<%@ page import="kr.co.planbut.mate.*"%>

<% request.setCharacterEncoding("UTF-8"); %>

<%
	// 검색 목록 페이지
	String col = request.getParameter("col");    // 검색칼럼
	String word = request.getParameter("word");  // 검색어
	/*
	if(col==null) {
		col = "";
	}
	
	if(word==null) {
		word = "";
	}
	*/
	// 위 주석한 코딩을 함수를 이용해서 밑에처럼 코딩
	col = Utility.checkNull(col); // null이면 공백문자열 출력
	word = Utility.checkNull(word);
	
	// 현재 페이지
	int nowPage = 1;
	if(request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
%>