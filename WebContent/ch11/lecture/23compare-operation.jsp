<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
pageContext.setAttribute("num1", 5);
pageContext.setAttribute("num2", 3);
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	\${num1 == num2 } : ${num1 == num2 }<br>
	\${num1 != num2 } : ${num1 != num2 }<br>
	\${num1 > num2 } : ${num1 > num2 }<br>
	\${num1 < num2 } : ${num1 < num2 }<br>
	\${num1 >= num2 } : ${num1 >= num2 }<br>
	\${num1 <= num2 } : ${num1 <= num2 }
	
	<hr>
	\${num1 eq num2 } : ${num1 eq num2 }<br><%--equal --%>
	\${num1 ne num2 } : ${num1 ne num2 }<br><%--not equal --%>
	\${num1 gt num2 } : ${num1 gt num2 }<br><%--greater than --%>
	\${num1 lt num2 } : ${num1 lt num2 }<br><%--less than --%>
	\${num1 ge num2 } : ${num1 ge num2 }<br><%--greater than equal --%>
	\${num1 le num2 } : ${num1 le num2 }<%--less than equal --%>
</div>
</body>
</html>