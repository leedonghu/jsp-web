<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
String[] attr1 = {"java","spring", "mariadb", "sql","html"};
request.setAttribute("attr1", attr1);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>foreach array</h1>
	
	<ul>
	<c:forEach items="${attr1 }" var="item"><%--attr1의 값이 한번씩 item(page attribute에 들어감 --%>
	<li>${item }</li>
	</c:forEach>
	</ul>
</div>
</body>
</html>