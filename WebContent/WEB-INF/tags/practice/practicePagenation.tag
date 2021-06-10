<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="start" required="true" type="java.lang.Integer" %>
<%@ attribute name="end" required="true" type="java.lang.Integer" %>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <c:forEach begin="${start }" end="${end }" var="i">
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/practice02/product?page=${i }">${i }</a></li>
    </c:forEach>
  </ul>
</nav>
