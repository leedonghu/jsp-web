<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>

<body>
<form action="loginForm.jsp" method="post">
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="이름" aria-label="Username" aria-describedby="basic-addon1" name="name">
</div>


<div class="input-group mb-3">
  <input id="inputId" type="text" class="form-control" name="id" placeholder="아이디" aria-label="Recipient's username" aria-describedby="basic-addon2">
  <!-- <input type="submit"  class="input-group-text" id="basic-addon2" value="확인"> -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" onclick="getInputValue();">
  확인
</button>
</div>


<div class="input-group mb-3">
  <input type="password" class="form-control" name="password" placeholder="비밀번호" aria-label="Recipient's username" aria-describedby="basic-addon2">
 <!-- <input type="submit"  class="input-group-text" id="basic-addon2" value="확인"> --> 
 <button type="button" class="btn btn-primary">확인</button>
</div>



<label for="basic-url" class="form-label">주민번호</label>
<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="6자리" aria-label="Username"maxlength="6">
  <span class="input-group-text">-</span>
  <input type="password" class="form-control" placeholder="7자리" aria-label="Server" maxlength="7">
</div>

<label for="basic-url" class="form-label">전화번호</label>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">010</span>
  <input type="text" class="form-control" placeholder="xxxx" aria-label="Username" maxlength="4">
  <span class="input-group-text">-</span>
  <input type="text" class="form-control" placeholder="xxxx" aria-label="Server" maxlength="4">
</div>


<button type="submit" class="btn btn-primary btn-lg" onclick="location.href='loginForm.jsp'">확인</button>
</form>


 
 

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">통과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>



<script>
function getInputValue(){

	var valueById = $("#inputId").val();
	var checkId = "^[a-zA-Z0-9]{5, 10}";
	if (checkId == valueById) {
		$("#exampleModal").modal("show");
	}
};
</script>


</body>
</html>