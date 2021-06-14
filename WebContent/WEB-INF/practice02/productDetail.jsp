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
<pr:practice01Nav></pr:practice01Nav>

<!-- 
제품의 수량을 포함한 다른 정보들을 servlet으로 보내줌
 -->
<form action="<%=request.getContextPath() %>/practice02/cart" method="post">
	<div class="card d-flex justify-content-center mt-3" style="width: 18rem;">
  <img src="<%=request.getContextPath() %>/res/img/${fruit.name }.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">${fruit.name }</h5>
    <p class="card-text">개당 ${fruit.price }원</p>
    <div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">수량</label>
    <input hidden value="${fruit.name }" name="name"/>
    <input hidden value="${fruit.id }" name="id"/>
    <input hidden value="${fruit.price }" name="price"/>
  </div>
  <select class="custom-select" id="inputGroupSelect01" name="amount">
    <option selected>Choose...</option>
    <c:forEach items="${list }" var="i">
    <option value="${list[i-1] }">${list[i-1] }</option>
    </c:forEach>
    
  </select>
</div>
    <button type="submit" class="btn btn-primary">장바구니에 담기</button>
  </div>
  </div>
</form>
</div>

</body>
</html>