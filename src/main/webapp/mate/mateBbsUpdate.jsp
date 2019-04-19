<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<%@ include file="ssi.jsp" %>
<!-- 본문시작 template.jsp -->
<h1>★ 게시글 수정 ★</h1>
  <p>
     <a href="mateBbsList.jsp">★ 게시글 목록★</a>
     <br>
      <a href="mateBbsForm.jsp">★ 글 쓰기 ★</a>
  </p>
<form name="matebbsfrm" 
     method="post" 
     action="./update.do?b_no=${dto.b_no }">
<input type="hidden" name="b_no" value="${dto.b_no }">
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
<table>
<tr>
   <th><input type="text" name="b_no" size="28" maxlength="20" value="${dto.b_no }" readonly>번 글</th>
</tr>
<tr>
    <th>작성자</th>
    <td><input type="text" name="mp_id" size="28" maxlength="20" value="${dto.mp_id }" readonly></td>
</tr> 
<tr>
    <th>제목</th>
    <td><input type="text" name="subject" size="28" maxlength="100" value="${dto.subject }" required></td>
</tr> 
<tr>
    <th>내용</th>
    <td>
      <textarea rows="5" cols="30" name="content">${dto.content }</textarea>
    </td>
</tr> 
<tr>
    <th>성별</th>
    <td><select name="gender"  id="gender" value="${dto.gender }">
          <option value="F">여자</option>
          <option value="M">남자</option>
        </select>
     </td>
</tr>
<tr>
    <th>도시</th>
    <td><select name="ct_code"  id="ct_code" value="${dto.ct_code }">
          <option value="0">선택하세요.</option>
          <option value="NY">뉴욕</option>
          <option value="NS">니스</option>
          <option value="LD">런던</option>
          <option value="RM">로마</option>
          <option value="LA">로스엔젤레스</option>
          <option value="LS">리스본</option>
          <option value="MD">마드리드</option>
          <option value="MS">마르세유</option>
          <option value="MH">뮌헨</option>
          <option value="BR">바르셀로나</option>
          <option value="BL">베를린</option>
          <option value="BS">부산</option>
          <option value="BU">브뤼셀</option>
          <option value="SO">서울</option>
          <option value="AM">암스테르담</option>
          <option value="ED">에든버러</option>
          <option value="IN">인터라켄</option>
          <option value="ZU">취리히</option>
          <option value="PR">파리</option>
          <option value="FL">피렌체</option>
        </select></td>
</tr>
<tr>
    <th>정원</th>
    <td><input type="text" name="capacity" size="28" maxlength="100" value="${dto.capacity }" required></td>
</tr> 
<tr>
    <th>동행날짜</th>
    <td><input type="text" name="m_date" size="28" maxlength="100" value="${dto.m_date }"  required></td>
</tr> 
<tr>
    <td colspan="2" align="center">
      <input type="submit" value="수정">
      <input type="reset" value="취소" onclick="location.href='./list.do'">
    </td>
</tr> 
</table>
</form>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>

