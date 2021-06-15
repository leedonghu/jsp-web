<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>
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
	
<pr:practice01Nav></pr:practice01Nav>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">제품 이름</th>
      <th scope="col">수량</th>
      <th scope="col">가격</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list }" var="list" >
    <tr>
      <th scope="row"><img width="100px" src="<%=request.getContextPath() %>/res/img/${list.pName }.jpg" alt="."></th>
      <td>${list.pName }</td>
      <td>${list.amount }</td>
      <td>${list.price * list.amount }</td>
     
    </tr>
   <input hidden value="${list.pId }"/>
  </c:forEach>
  </tbody>
</table>
</div>

</body>
</html>