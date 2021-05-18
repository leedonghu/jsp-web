<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book1" class="ch08.Book">
<jsp:setProperty name="book1" property="title" value="java"/>
<jsp:setProperty name="book1" property="writer" value="kim"/>
</jsp:useBean>

<%
pageContext.setAttribute("title", "writer");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	book : ${book1 }<br>
	title: ${book1.title }<br>
	writer: ${book1.writer }<br>
	code: ${book1.code }
	<%--
	 none: ${book1.none }
	 --%>
	 <hr>
	 title : ${book1["title"] }<br>
	 writer : ${book1["writer"] }
	 <hr>
	 title : ${book1[title] }
	 <%--
	 page 영역에서 title을 찾으면 위에서 writer를 title로 저장해 놓았기 때문에 ${book1["writer"]}와 동일하게 된다
	 그래서 결국 값은 kim이 출력되게 됨
	  --%>
</div>
</body>
</html>