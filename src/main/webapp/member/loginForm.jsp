<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>
<form name="loginFrm" method="post" action="login.do" onsubmit="return loginCheck(this)">
  <table style="text-align: center; margin: auto; color: black">
  <tr>
      <td>
          <input type="text" name="m_id" id="m_id"  placeholder="아이디" required>
      </td>  
      <td rowspan="2">
      	  <input type="image" src="../images/bt_login.gif" style="cursor:pointer">
      </td>		
  </tr>
  <tr>
      <td>
          <input type="password" name="password" id="password" placeholder="비밀번호" required>
      </td>  
  </tr>
  <tr>
      <td colspan="2">
          <p>
              아이디저장<input type="checkbox"  name="c_id" value="SAVE">
              
              <a href="agreement.jsp">회원가입</a>
              <a href="forgot.jsp"> 아이디/비번찾기</a>
          </p>
      </td>  
  </tr>
  </table>    
</form>         

<%@include file="../footer.jsp"%>
