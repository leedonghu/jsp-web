<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<MemberInfo> list =(List<MemberInfo>) application.getAttribute("list");
if(list==null){
	list = new ArrayList<>();
	application.setAttribute("list", list);
}
%>

<jsp:useBean id="memberInfo" class="ch08.MemberInfo"></jsp:useBean>>
<jsp:setProperty name="memberInfo" property="*"/>
<jsp:setProperty name="memberInfo" property="password" value="<%=memberInfo.getId() %>"/>

<%
list.add(memberInfo);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table width="400" border="1" cellpadding="0" cellspacing="0">
	<thead>
	<Tr>
	<td>아이디</td>
	
	<td>암호</td>
	<td>이름</td>
	<td>이메일</td>
	
	</Tr>
	</thead>
	
	<tbody>
	<%
	for(MemberInfo mem : list){
		out.print("<tr>");
		out.print("<td>");
		out.print(mem.getId());
		out.print("</td>");
		out.print("<td>");
		out.print(mem.getPassword());
		out.print("</td>");
		out.print("<td>");
		out.print(mem.getName());
		out.print("</td>");
		out.print("<td>");
		out.print(mem.getEmail());
		out.print("</td>");
	}
	%>
	
	<%--
	<tr>
	<td><jsp:getProperty property="id" name="memberInfo"/></td>
	<td><jsp:getProperty property="password" name="memberInfo"/></td>
	<td><jsp:getProperty property="name" name="memberInfo"/></td>
	
	<td><jsp:getProperty property="email" name="memberInfo"/></td>
	</tr>
	 --%>
	</tbody>
	
	</table>
</div>
</body>
</html>