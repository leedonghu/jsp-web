<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	
<s2:navbar></s2:navbar>	
<div class="jumbotron">
  <h1 class="display-4"><i class="fas fa-atom"></i>환영합니다</h1>
  <p class="lead">기본 Servlet / jsp로 만든 회원, 게시판 어플리케이션 입니다.</p>
  <hr class="my-4">
  <p>처음 만들어본 게시판. 회원가입해 보세요</p>
  <a class="btn btn-primary btn-lg" href="<%=request.getContextPath() %>/sample2/member/signup" role="button">회원가입</a>
</div>
</div>

</body>
</html>