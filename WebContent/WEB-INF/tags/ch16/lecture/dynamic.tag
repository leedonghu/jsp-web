<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="attrs" %> <%-- map --%>
<%@ attribute name="req" %>

<div>
<c:forEach items="${attrs }" var="entry">
${entry.key } : ${entry.value } <br>
</c:forEach>
</div>

