<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container" style="border: 2px solid black">
	
	<form action="loginForm.jsp">
  
  <button type="submit" class="btn btn-primary btn-lg">로그인</button>
</form>

	
</div>



</body>
</html>