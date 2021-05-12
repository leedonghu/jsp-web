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
	<table class="table table-info table-bordered">
 
  <tbody>
    <tr>
      
      <td>제품번호</td>
      <td>xxxx</td>
     
    </tr>
    <tr>
     
      <td>가격</td>
      <td>10000원</td>
    </tr>
    
  </tbody>
</table>

<jsp:include page="infoSub.jsp"><jsp:param name="type" value="B"/></jsp:include>
</div>
</body>
</html>