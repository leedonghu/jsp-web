<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
      <my:navbar></my:navbar>
  <div class="row">
          <div class="col-2"></div>
          <div class="col"></div>
          <div class="col-2">
          <form action="loginForm.jsp">
          <nav class="navbar navbar-light bg-light" style="border:0.1px solid black;">
  <span class="navbar-brand mb-0 h1">
  <p style="font-size:160%;"></p>
  <button type="submit" class="btn btn-secondary btn-outline-light btn-lg">로그인</button>
  </span>
</nav>
</form>
          </div>
    </div>
<div class="container">
	

	
</div>



</body>
</html>