
<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	
<%
	String id1 = request.getParameter("id1");
	String password1 = request.getParameter("password1");
    Object o1 = session.getAttribute("id");
    String id = (String) o1;
    Object o2 = session.getAttribute("password");
    String password = (String) o2;
%>

<%
if(id1.equals(id)){
	if(password1.equals(password)){
		session.setAttribute("id1", id1);
		session.setAttribute("password1", password1);
		%>
	<script>
	alert("인증되었습니다.");
	location.href="logout.jsp"
	</script>
	
	<%
	} else {
		%>
		<script>
	alert("비밀번호가 다릅니다.");
	location.href="loginForm.jsp"
	</script>
	<%
	
	}
} else {
	%>
	<script>
	alert("아이디가 다릅니다.");
	location.href="loginForm.jsp"
	</script>
<%
}
%>
	



	
</div>



</body>
</html>