<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>
<%@ taglib prefix="pr" tagdir="/WEB-INF/tags/practice" %>


<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
<table class="table">
<pr:practice01Nav></pr:practice01Nav>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">제품 이름</th>
      <th scope="col">가격</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${fruit }" var="fruit" >
    <tr>
      <th scope="row"><img width="100px" src="<%=request.getContextPath() %>/res/img/${fruit.name }.jpg" alt="."></th>
      <td>${fruit.name }</td>
      <td>${fruit.price }</td>
     
    </tr>
   
  </c:forEach>
  </tbody>
</table>
<hr>

		<pr:practicePagenation start="${1 }" end="${size / 5 }"></pr:practicePagenation>
</div>
</body>
</html>