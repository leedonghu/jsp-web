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

<div class="container">
<s2:navbar></s2:navbar>

<h1>글 보기</h1>
<hr>
	<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
	
	
	<div class="form-group">
    <label for="input1">제목</label>
    <input readonly value="${board.title }" type="text" class="form-control" id="input1"  name="title">
  </div>
	
	<div class="form-group">
    <label for="input2">작성자</label>
    <input readonly value="${board.memberNameHidden }" type="text" class="form-control" id="input2"  name="memberId">
  </div>
	
	<div class="form-group">
    <label for="textarea1">본문</label>
    <textarea readonly class="form-control" id="textarea1" rows="10" name="text" ><c:out value="${board.body }" /></textarea>
  </div>
  
  <div class="form-group">
    <label for="input2">시간</label>
    <input readonly value="${board.inserted }" type="text" class="form-control" id="input4"  name="inserted">
  </div>
  
  <c:if test="${sessionScope.userLogined.id == board.memberId }">
  
  <script >
  $(document).ready(function(){
	  $("#button1").click(function(){
		 $("#submit1, #submit2").removeAttr("hidden"); 
		 $("#input1, #textarea1").removeAttr("readonly");
	  });
	  $("#submit2").click(function(e){
		  //function에 이벤트 객체를 넣어서 preventDefault메소드 실해하면 아무일도 일어나지 않음
		  e.preventDefault();
		  if(confirm("삭제 하시겠습니까?")){
		  var path = "${pageContext.request.contextPath }/sample2/board/remove";
		  $("#form1").attr("action", path);
		  $("#form1").submit();	  
		  
		  }
	  });
  });
  </script>
  <br>
  <input type="number" value="${board.boardId }" name="boardId" hidden>
  <button type="button" id="button1">수정</button>
  <input hidden type="submit" value="전송" id="submit1">
  <input id="submit2" hidden type="submit" value="삭제">
  </c:if>
  </form>
	
	<s2:message></s2:message>
</div>
</body>
</html>