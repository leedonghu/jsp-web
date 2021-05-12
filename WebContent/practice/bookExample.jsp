<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
<form>

<input class="btn btn-outline-primary" type="text" name="책"><br>
<input class="btn btn-outline-primary" type="text" name="가격"><br>
<input type="submit" class="btn btn-primary" value="전송">
</form>

<%
Map<String, Integer> map = new HashMap<>();
String[] book =request.getParameterValues("책");
String[] price = request.getParameterValues("가격");
if(book != null && book.length>0){
	
for(int i=0; i<book.length; i++){
	map.put(book[i], Integer.parseInt(price[i]));
}
}
request.setAttribute("book", map);
%>
<jsp:include page="bookExample-sub.jsp"></jsp:include>
</div>
</body>
</html>