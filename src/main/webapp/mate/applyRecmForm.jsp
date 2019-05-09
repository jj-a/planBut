<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<!-- 본문시작 applyBbsForm.jsp -->

<h3>★ 동행신청하기 ★</h3>
<form name="materecmfrm"
     method="post" 
     action="./applyRecm.do">
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
<input type="hidden" name="sp_id" value="${session_m_id }">
<input type="hidden" name="cp_code" value="${dto.cp_code }" readonly>

<table>
   <tr>
       <th>모집자</th>
       <td><input type="text" name="mp_id" value="${dto.mp_id }" readonly></td>
   </tr> 
   <tr>
       <th>동행일</th>
       <td><input type="text" name="m_date" required></td>
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