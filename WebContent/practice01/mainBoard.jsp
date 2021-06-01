<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="pr" tagdir="/WEB-INF/tags/practice" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<pr:practiceNav></pr:practiceNav>
		<div class="d-flex justify-content-center mt-3">
		
		<form action="<%=request.getContextPath() %>/BoardList">
			<textarea class="btn btn-outline-primary " type="text" name="board" row="10" cols="60"></textarea>
			<input type="submit" class="btn btn-primary" value="전송">
		</form>
		</div>
		
		<br>
		<hr>
		
		<c:forEach items="${list1 }" var="i">
		<br>
				<div class="d-flex justify-content-center mt-3">
		<table class="table" style="width:525px;">
		<tr>
		<th>${acc.name }</th>
		<th>${date }</th>
		<th></th>
		</tr>
		
		<tr>
		<td></td>
		<td><c:out value="${i }"></c:out></td>
		<td></td>
		
		</tr>
		
		
		</table>
		</div>
		<br>
		
		<hr>
		</c:forEach>

	</div>
</body>
</html>