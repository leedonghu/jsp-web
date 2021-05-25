<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="boardView.jsp" method="post">
	<div class="form-group">
    <label for="exampleFormControlInput1">제목</label>
    <input type="text" class="form-control" id="exampleFormControlInput1"  name="title">
  </div>
	
	<div class="form-group">
    <label for="exampleFormControlTextarea1">본문</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="text"></textarea>
  </div>
	
	<button type="submit" class="btn btn-primary">제출</button>
	</form>
</div>
</body>
</html>