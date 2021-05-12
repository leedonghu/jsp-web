<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>
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
	//User user = new User("동후", 29, "korea");
	//request.setAttribute("member", user);
	
	//User user2 = new User("홍길동", 30, "korea");
	//request.setAttribute("member1", user2);
	
	List<User> list = new ArrayList<>();
	list.add(new User("동후", 29, "korea"));
	list.add(new User("홍길동", 30, "korea"));
	list.add(new User("김철수", 35, "korea"));
	
	request.setAttribute("list", list);
	
	%>
	<h1>유저 정보</h1>
	<jsp:include page="08request-attribute-sub.jsp"></jsp:include>
</div>
</body>
</html>