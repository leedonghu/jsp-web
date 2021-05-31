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

<div class="container">
	<form action="<%=request.getContextPath() %>/JDBC15InsertSelvet" method="post">
	lastName : <input type="text" name="lastName"><br>
	firstName : <input type="text" name="firstName"><br>
	
	photo : <input type = "text" name="photo"><br>
	notes : <input type="text" name = "notes"><br>
	
	<input type="submit">
	</form>
</div>
</body>
</html>