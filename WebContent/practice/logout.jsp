<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container-fluid">
<my:navbar></my:navbar>

          <div class="row">
          <div class="col"></div>
          <div class="col"></div>
          <div class="col-2" style="border:2px solid black;">
	<form action="login.jsp">
	<p style="font-size:160%;">"<%=session.getAttribute("name") %>"님 안녕하세요</p>
	<button>로그아웃</button>
          </div>
          </div>
	
	</form>
</div>
</body>
</html>