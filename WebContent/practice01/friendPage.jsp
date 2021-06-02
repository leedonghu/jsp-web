<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>
<%@ taglib prefix="pr" tagdir="/WEB-INF/tags/practice" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<pr:practiceNav></pr:practiceNav>
	<div class="d-flex justify-content-center mt-3">
		
		<form action="<%=request.getContextPath() %>/SerchFriendServlet" method="post">
			<input class="btn btn-outline-primary " type="text" name="friend"></input>
			<input type="submit" class="btn btn-primary" value="전송">
		</form>
		</div>
		<hr>
		<br>
		
		<table class="table">
	<thead>
	<tr>
	<th>이름</th>
	<th>나이</th>
	<th>사는곳</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${friend }" var="friend">
	
	<tr>
	<td>${friend.lastName }${friend.firstName }</td>
	<td>${friend.age }</td>
	<td>${friend.city }</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
	
	
   
    
  </ul>
</nav>
</div>
</body>
</html>