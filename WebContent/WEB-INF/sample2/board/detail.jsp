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
	
	<div class="form-group">
    <label for="exampleFormControlInput1">제목</label>
    <input readonly value="${board.title }" type="text" class="form-control" id="exampleFormControlInput1"  name="title">
  </div>
	
	<div class="form-group">
    <label for="input2">작성자</label>
    <input readonly value="${board.memberIdHidden }" type="text" class="form-control" id="input2"  name="memberId">
  </div>
	
	<div class="form-group">
    <label for="exampleFormControlTextarea1">본문</label>
    <textarea readonly class="form-control" id="exampleFormControlTextarea1" rows="10" name="text"><c:out value="${board.body }" /></textarea>
  </div>
  
  <div class="form-group">
    <label for="input2">시간</label>
    <input readonly value="${board.inserted }" type="text" class="form-control" id="input2"  name="inserted">
  </div>
	
</div>
</body>
</html>