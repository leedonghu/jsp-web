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

<input class="btn btn-outline-primary" type="text" name="book"><br>
<input class="btn btn-outline-primary" type="text" name="price"><br>
<input type="submit" class="btn btn-primary" value="전송">
</form>


<jsp:include page="bookExample-sub.jsp"></jsp:include>
</div>
</body>
</html>