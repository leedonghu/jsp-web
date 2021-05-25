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
          <div class="col-2" style="border:0.1px solid black;">
	<form action="login.jsp">
	<nav class="navbar navbar-light bg-light">
  <span class="navbar-brand mb-0 h1">
	<p style="font-size:80%;">"<%=session.getAttribute("name") %>"님 안녕하세요</p>
	<button>로그아웃</button>
  </span>
</nav>
	</form>
          </div>
          </div>
	
</div>
</body>
</html>