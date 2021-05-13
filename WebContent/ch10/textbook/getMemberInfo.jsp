<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
Object o1 = session.getAttribute("MEMBERID");
String str1 = (String) o1;

Object o2 = session.getAttribute("NAME");
String str2 = (String) o2;
%>

MEMBERID : <%=str1%><br>
NAME : <%= str2%>