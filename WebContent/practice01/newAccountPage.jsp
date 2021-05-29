<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
<div><h3>회원가입</h3></div>
<hr>
<div></div>
<form action="<%=request.getContextPath() %>/NewAccountPage" method="post">
	<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">@</span>
  </div>
  <input type="text" class="form-control" placeholder="이름" aria-label="Username" aria-describedby="basic-addon1" name="name">
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon2">@</span>
  </div>
  <input type="text" class="form-control" placeholder="아이디" aria-label="Username" aria-describedby="basic-addon2" name="id">
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon3">@</span>
  </div>
  <input type="text" class="form-control" placeholder="비밀번호" aria-label="Username" aria-describedby="basic-addon3" name="password">
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon4">@</span>
  </div>
  <input type="text" class="form-control" placeholder="전화번호" aria-label="Username" aria-describedby="basic-addon4" name="mobilNum">
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon5">@</span>
  </div>
  <input type="text" class="form-control" placeholder="이메일" aria-label="Username" aria-describedby="basic-addon5" name="email">
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon6">@</span>
  </div>
  <input type="text" class="form-control" placeholder="주소" aria-label="Username" aria-describedby="basic-addon6" name="address">
</div>
</div>
<button type="submit" class="btn btn-primary" >확인</button>
</form>

</body>
</html>