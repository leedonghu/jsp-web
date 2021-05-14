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
<%
Object o1 = session.getAttribute("id");
String id = (String) o1;
Object o2 = session.getAttribute("password");
String password = (String) o2;

if(id.equals("")){
%>
<div class="container">
	<span class="border">
	<form action="loginForm.jsp">
  
  <button type="submit" class="btn btn-primary btn-lg">로그인</button>
</form>
	</span>
</div>
<%
} else {
%>
<form>
<button type="submit" class="btn btn-primary">로그아웃</button>
</form>
<%
}
%>
</body>
</html>