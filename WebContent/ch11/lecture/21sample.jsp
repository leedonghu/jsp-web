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

<div class="container">
	<form>
	수1 : <input type="text" name="num1"/><br>
	수2 : <input type="text" name="num2"/><br>
	<input type="submit"/>
	</form>
	더한결과 :${param.num1 + param.num2 } <br>
	뺀 결과 : ${param.num1 - param.num2 }<br>
	곱한결과 : ${param.num1 * param.num2 }<br>
	나눈결과 : ${param.num1 / param.num2 }<br>
</div>
</body>
</html>