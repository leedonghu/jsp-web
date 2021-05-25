<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
String title = request.getParameter("title");
String text = request.getParameter("text");
Object o1 = session.getAttribute("board");
Map<String, String> map = (Map<String, String>) o1;

if(map == null){
	map = new HashMap<String, String>();
	session.setAttribute("borad", map);
}

if(title != null){
	map.put(title, text);
}
%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-2"></div>
<div class="col"><h1>게시판</h1></div>
<div class="col-2"></div>
<hr>
</div>
	<table class="table">


  <thead>
    <tr>
      <th scope="col-3">#</th>
      <th scope="col">제목</th>
      <th scope="col-3">#</th>
      
    </tr>
  </thead>
  <tbody>
  
  <%
  int num = 0;
  if(!map.isEmpty()){
	  for(Map.Entry<String, String> entries : map.entrySet() ){
		  num++;
	%>	  
  <tr>
  <%
      out.print("<td>");
      out.print(num);
      out.print("</td>");
      
      out.print("<td>");
      out.print(entries.getKey());
      out.print("</td>");
     
      %>
    </tr>
    
    <%
	  }
  }
  %>
  
    <tr>
      <td></td>
      <td></td>
      <td></td>
      
    </tr>
  </tbody>
  
</table>

<button type="button" class="btn btn-primary" onclick="location.href='board.jsp'">글쓰기</button>

</div>
</body>
</html>