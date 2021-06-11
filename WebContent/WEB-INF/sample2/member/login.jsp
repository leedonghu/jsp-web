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
<h1>로그인</h1>
<form action="<%=request.getContextPath() %>/sample2/member/login" method="post">


<div class="form-group">
<label for="input1">아이디</label>
<input class="form-control" type="text" name="id" id="input1">
</div>



<div class="form-group">
<label for="input2">패스워드</label>
<input class="form-control" type="password" name="password" id="input2">
</div>

<br>

<button type="submit" class="btn btn-primary">로그인</button>
</form>

<s2:message></s2:message>
	
</div>
</body>
</html>