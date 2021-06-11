<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>


<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">

<div class="row">
<div class="col-8">
	<h1>글 작성</h1>
	<form action="${pageContext.request.contextPath }/sample2/board/write" method="post">
	
	
	<div class="form-group">
	<label for="input1">제목</label>
	<input type="text" id="input1" name="title" class="form-control">
	</div>
	
	
	
	<div class="form-group">
	<label for="textarea1">본문</label>
	<textarea rows="10" id="textarea1" name="body" class="form-control"></textarea>
	</div>
	
	<button calss="btn btn-primary" type="submit" >작성</button>
	
	
	
	</form>
</div>
</div>
</div>
</body>
</html>