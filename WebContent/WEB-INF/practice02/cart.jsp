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


<script>
	$(document).ready(function() {
		var sum = 0;
		$(".cart-checkbox").change(function() {
			
			$(".cart-checkbox:checked").each(function(i, e) {
				sum += Number($(e).closest("tr").find("span.value").text());
			});
			
			$("#sum").text(sum + "원");
		});
	});
</script>

</head>
<body>
<div class="container">
	
<pr:practice01Nav></pr:practice01Nav>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">이미지</th>
      <th scope="col">제품 이름</th>
      <th scope="col">수량</th>
      <th scope="col">가격</th>
      <th scope="col">삭제</th>
      
    </tr>
  </thead>
  
 <form action="#" method="post">
 
  <tbody>
  <c:forEach items="${list }" var="list" >
    <tr>
      <th><input class="cart-checkbox" type="checkbox"></th>
      <td scope="row"><img width="100px" src="<%=request.getContextPath() %>/res/img/${list.pName }.jpg" alt="."></td>
      <td>${list.pName }</td>
      <td>
      <button type="button" id="minus${list.pId }button"><i class="fas fa-minus"></i></button>
      <input value="${list.amount }" id="amount${list.pId }value" name="amount">
      <button type="button" id="plus${list.pId }button"><i class="fas fa-plus"></i></button>
      </td>
      <td><span class="value">${list.price * list.amount }</span>원</td>
      <td><button type="button" class="btn btn-primary">삭제</button></td>
     
    </tr>
   <input hidden value="${list.pId }"/>
  </c:forEach>
  </tbody>
</table>


<hr>
<br>

<div class="row">
  <div class="col-8"></div>
  <div class="col"><h3>총 가격</h3></div>
  <div class="col"><h3 id="sum"></h3></div>
</div>

<div class="d-flex justify-content-center mt-3">
  <button class="btn btn-primary" type="submit">결제</button>
</div>

 </form> 


</div>

</body>
</html>