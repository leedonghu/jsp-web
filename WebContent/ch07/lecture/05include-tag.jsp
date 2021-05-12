<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<%
String danStr = request.getParameter("dan");
int dan = Integer.parseInt(danStr);
for(int i=1; i<=9; i++){
	out.println(dan+ "x" + i + "=" + dan*i);
	out.print("<br>");
}

%>