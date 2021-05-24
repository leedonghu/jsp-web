<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
String title = request.getParameter("title");
String text = request.getParameter("text");
%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table class="table">


  <thead>
    <tr>
      <th scope="col-3">#</th>
      <th scope="col">제목</th>
      <th scope="col-3">#</th>
      
    </tr>
  </thead>
  <tbody>
  <tr>
      <td></td>
      <td>${title }</td>
      
      
     
     
    </tr>
    <tr>
      <th></th>
      <th></th>
      <th></th>
      
    </tr>
  </tbody>
  
</table>
</div>
</body>
</html>