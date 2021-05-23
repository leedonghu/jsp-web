<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");
String name = request.getParameter("name");
session.setAttribute("id", id);
session.setAttribute("password", password);
session.setAttribute("name", name);
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<form action="checkAccount.jsp" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">아이디</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="id1">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">비밀번호</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password1">
  </div>
  
  <button type="submit" class="btn btn-primary" onclick="location.href='checkAccount.jsp'">로그인</button>
  <button type="button" onclick="location.href='new-account.jsp'" class="btn btn-primary">회원가입</button>
</form>



</div>
</body>
</html>