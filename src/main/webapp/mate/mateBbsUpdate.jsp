<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<%@ include file="ssi.jsp" %>
<!-- 본문시작 template.jsp -->
<h1>★ 게시글 수정 ★</h1>
  <p>
     <a href="./list.do">★ 게시글 목록★</a>
     <br>
      <a href="./create.do">★ 글 쓰기 ★</a>
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
    <td><select name="gender"  id="gender">
          <option value="F" <c:if test="${dto.gender == 'F' }">selected</c:if>>여자</option>
          <option value="M" <c:if test="${dto.gender == 'M' }">selected</c:if>>남자</option>
        </select>
     </td>
</tr>
<tr>
    <th>도시</th>
    <td><select name="ct_code"  id="ct_code">
          <option value="0" <c:if test="${dto.ct_code == '0' }">selected</c:if>>선택하세요.</option>
          <option value="NY" <c:if test="${dto.ct_code == 'NY' }">selected</c:if>>뉴욕</option>
          <option value="NS" <c:if test="${dto.ct_code == 'NS' }">selected</c:if>>니스</option>
          <option value="LD" <c:if test="${dto.ct_code == 'LD' }">selected</c:if>>런던</option>
          <option value="RM" <c:if test="${dto.ct_code == 'RM' }">selected</c:if>>로마</option>
          <option value="LA" <c:if test="${dto.ct_code == 'LA' }">selected</c:if>>로스엔젤레스</option>
          <option value="LS" <c:if test="${dto.ct_code == 'LS' }">selected</c:if>>리스본</option>
          <option value="MD" <c:if test="${dto.ct_code == 'MD' }">selected</c:if>>마드리드</option>
          <option value="MS" <c:if test="${dto.ct_code == 'MS' }">selected</c:if>>마르세유</option>
          <option value="MH" <c:if test="${dto.ct_code == 'MH' }">selected</c:if>>뮌헨</option>
          <option value="BR" <c:if test="${dto.ct_code == 'BR' }">selected</c:if>>바르셀로나</option>
          <option value="BL" <c:if test="${dto.ct_code == 'BL' }">selected</c:if>>베를린</option>
          <option value="BS" <c:if test="${dto.ct_code == 'BS' }">selected</c:if>>부산</option>
          <option value="BU" <c:if test="${dto.ct_code == 'BU' }">selected</c:if>>브뤼셀</option>
          <option value="SO" <c:if test="${dto.ct_code == 'SO' }">selected</c:if>>서울</option>
          <option value="AM" <c:if test="${dto.ct_code == 'AM' }">selected</c:if>>암스테르담</option>
          <option value="ED" <c:if test="${dto.ct_code == 'ED' }">selected</c:if>>에든버러</option>
          <option value="IN" <c:if test="${dto.ct_code == 'IN' }">selected</c:if>>인터라켄</option>
          <option value="ZU" <c:if test="${dto.ct_code == 'ZU' }">selected</c:if>>취리히</option>
          <option value="PR" <c:if test="${dto.ct_code == 'PR' }">selected</c:if>>파리</option>
          <option value="FL" <c:if test="${dto.ct_code == 'FL' }">selected</c:if>>피렌체</option>
        </select></td>
</tr>
<tr>
    <th>정원</th>
    <td><input type="text" name="capacity" size="28" maxlength="100" value="${dto.capacity }" required></td>
</tr> 
<tr>
    <th>동행날짜</th>
    <td><input type="text" name="m_date" size="28" maxlength="100" value="${dto.m_date.substring(0,10) }"  required></td>
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

