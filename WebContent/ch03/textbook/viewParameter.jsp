<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
    <%@ page import="java.util.Map" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<b>request.getParameter() 메서드 사용</b><br>
name 파라미터 = <%= request.getParameter("name") %><br>
address 파라미터 = <%=request.getParameter("address") %>
<p>
<b>requeest.getParameterValue() 메서드 사용</b><br>
<%
String[] value = request.getParameterValues("pet");
if(value != null){
for(int i=0; i<value.length; i++){
%>
<%=value[i] %>
<% 	
}
}
%>
<p>
<b>request.getParameterNames() 메서드 사용</b><br>
<%
Enumeration paramEnum=request.getParameterNames();
while(paramEnum.hasMoreElements()){
	String name = (String)paramEnum.nextElement();
%>
<%=name %>
<%

}
%>
<p>
<b>request.getParameterMap() 메서드 사용</b><br>
<%
Map parameterMap=request.getParameterMap();
String[] nameParam = (String[])parameterMap.get("name");
if(nameParam != null){
	
%>
name=<%=nameParam[0] %>
<%

}
%>

</body>
</html>