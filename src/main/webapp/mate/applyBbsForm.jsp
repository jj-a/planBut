<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<!-- 본문시작 applyBbsForm.jsp -->

<h3>★ 동행신청하기 ★</h3>
<p><a href="./list.do">★ 동행 게시판 보러가기 ★</a></p>
<form name="matebbsfrm" 
     method="post" 
     action="./applyBbs.do">
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">

<table>
   <tr>
       <th>글번호</th>
       <td><input type="text" name="b_no" value="${b_no }" readonly></td>
   </tr> 
   <tr>
       <th>신청자</th>
       <td><input type="text" name="sp_id"></td>
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