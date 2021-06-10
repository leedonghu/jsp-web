<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>


<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">
	<h1>글 목록 [${totalNum } 개]</h1>
	<s2:message></s2:message>
	<hr>
	<table class="table">
  <thead>
    <tr>
    <th scope="col-3">#</th>
      <th scope="col-3">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">조회수</th>
      <th scope="col-3">시간</th>
      
    </tr>
  </thead>
	
	 <tbody>
			<c:forEach items="${boards }" var="board" varStatus="status">
			<!-- 
			<script>
			$(document).ready(function(){
				var $a = $('#' + 'list${board.boardId}');
				var count = 0;
				$a.select(function(){
					count++;
				});
			});
			</script>
			 -->
				<tr>
					<td>${boards.size() - status.index  }</td>
					<td>
						<a href="<%= request.getContextPath() %>/sample2/board/detail?id=${board.boardId}" id="list${board.boardId }">
							${board.title }
						</a>
						<c:if test="${board.numberOfComment ne 0 }">
						<span>[${board.numberOfComment }]</span>
						</c:if>
					</td>
					<td>${board.memberName }</td>
					<td>${board.timeAgo }</td>
				</tr>
			</c:forEach>
		</tbody>
	
	</table>
</div>
</body>
</html>