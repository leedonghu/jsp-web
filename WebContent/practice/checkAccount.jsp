
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
	
<%
	String id = request.getParameter("id1");
	String password = request.getParameter("password1");

	Object o1 = application.getAttribute("acc");
	HashMap<String, String> map1 = (HashMap<String, String>)o1; 


if(map1 != null){
	if (password.equals(map1.get(id))) {
%>
		<jsp:forward page="logout.jsp"></jsp:forward>
		<%
			} else {
		%>
		<jsp:forward page="loginForm.jsp"></jsp:forward>
		<%
			}
		
		}
		%>
	
</div>



</body>
</html>