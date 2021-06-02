<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="pr" tagdir="/WEB-INF/tags/practice" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<script>
$(document).ready(function() {
	$("#button1").click(function() {
		$("#form1").find("input").removeAttr("readonly");
		$("#submit1").removeAttr("hidden");
	});
});
</script>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<pr:practiceNav></pr:practiceNav>
	<hr>
	
	<form id="form1" action="<%=request.getContextPath() %>/ProfileModifyServlet" method="post">
	<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">이름</span>
  </div>
  <input type="text" class="form-control" placeholder="이름" aria-label="Username" aria-describedby="basic-addon1" value="${acc.name }" readonly name="name">
</div><br>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">전화번호</span>
  </div>
  <input type="text" class="form-control" placeholder="전화번호" aria-label="Username" aria-describedby="basic-addon1" value="${acc.mobileNum }" readonly name="mobileNum">
</div><br>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">이메일</span>
  </div>
  <input type="text" class="form-control" placeholder="이메일" aria-label="Username" aria-describedby="basic-addon1" value="${acc.email }" readonly name="email">
</div><br>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">주소</span>
  </div>
  <input type="text" class="form-control" placeholder="주소" aria-label="Username" aria-describedby="basic-addon1" value="${acc.address }" readonly name="address">
</div><br>
<button type="button" class="btn btn-primary" id="button1">수정</button>
<input hidden type="submit" id="submit1" class="btn btn-primary" value="확인" />
	</form>
</div>
</body>
</html>