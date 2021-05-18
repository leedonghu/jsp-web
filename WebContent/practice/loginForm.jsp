<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");
session.setAttribute("id", id);
session.setAttribute("password", password);
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<form action="logout.jsp">
  <div class="form-group">
    <label for="exampleInputEmail1">아이디</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="id">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">비밀번호</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
  </div>
  
  <button type="submit" class="btn btn-primary">로그인</button>
</form>
<form action="new-account.jsp">
  <button type="submit" class="btn btn-primary">회원가입</button>
</form>

</div>
</body>
</html>