<%@ page contentType="text/html; charset=UTF-8" %>

<!-- 본문시작 template.jsp -->
 <h1>★ 동행 게시글 삭제 ★</h1>
  <form method="post" action="./delete.do">
  <input type="hidden" name="b_no" value="${dto.b_no }">
  <p>정말 삭제 하시겠습니까?</p>
  <table>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" value="확인">
    </td>
  </tr> 
  </table>  
  </form>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

