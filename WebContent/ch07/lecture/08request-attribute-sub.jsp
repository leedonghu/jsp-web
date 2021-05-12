<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>

<%
User member =(User) request.getAttribute("member");
User member1 = (User) request.getAttribute("member1");

List<User> list1 = (List<User>) request.getAttribute("list");
%>

<div>
<%
for(int i=0; i<list1.size(); i++){
	%>
	이름: <%= list1.get(i).getName() %><br>
나이: <%= list1.get(i).getAge() %><br>
주소: <%= list1.get(i).getAddress() %><br>
<% 
}
%>
<%--

이름: <%= member.getName() %><br>
나이: <%= member.getAge() %><br>
주소: <%= member.getAddress() %><br>

이름: <%= member1.getName() %><br>
나이: <%= member1.getAge() %><br>
주소: <%= member1.getAddress() %><br>
--%>

</div>