<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" scope="request" class="ch08.MemberInfo"></jsp:useBean>
<%
member.setId("madvirus");
member.setName("최범균");
%>
<jsp:forward page="useObject.jsp" />
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	
</div>
</body>
</html>