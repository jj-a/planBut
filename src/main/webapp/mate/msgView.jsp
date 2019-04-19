<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../header.jsp"%>
<!-- 본문 시작 -->
  <div>알림</div>
  <div>
    <input type="text" name="b_no" value="${dto.b_no }">
	<dl>
		<dd>${msg1!=null ? img : "" } ${msg1 }</dd>
		<dd>${msg2!=null ? img : "" } ${msg2 }</dd>
		<dd>${msg3!=null ? img : "" } ${msg3 }</dd>
		<dd>${msg4!=null ? img : "" } ${msg4 }</dd>
		<dd>${msg5!=null ? img : "" } ${msg5 }</dd>
	</dl>
	
	<p>
	  ${link1 }
	  ${link2 }
	  ${link3 }
	  ${link4 }
	  ${link5 }
	</p>
  </div>

<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>