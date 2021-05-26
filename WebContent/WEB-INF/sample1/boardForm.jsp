<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample1" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<s1:navbar />
<div class="container">
<div class="row">
<div class="col-8">
	<form action="" method="post">
	<div class="form-group">
    <label for="exampleFormControlInput1">제목</label>
    <input type="text" class="form-control" id="exampleFormControlInput1"  name="title">
  </div>
	
	<div class="form-group">
	<label for="input2">작성자</label>
	<input id="input2" class="form-control" type="text" name="writer">
	</div>
	
	<div class="form-group">
    <label for="exampleFormControlTextarea1">본문</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="text"></textarea>
  </div>
	
	<button type="submit" class="btn btn-primary">제출</button>
	</form>
</div>
</div>
</div>
</body>
</html>