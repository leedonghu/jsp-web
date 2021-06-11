<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
<div>
	<a href="<%= request.getContextPath() %>/sample2/main">메인</a>
	|
	<a href="<%= request.getContextPath() %>/sample2/member/signup">회원가입</a>
	|
	<c:if test="${empty sessionScope.userLogined }" >
		<a href="<%= request.getContextPath() %>/sample2/member/login">로그인</a>
		|
	</c:if>
	
	<c:if test="${not empty sessionScope.userLogined }" >
		<a href="<%= request.getContextPath() %>/sample2/member/info">정보보기</a>
		|
		<a href="<%= request.getContextPath() %>/sample2/member/logout">로그아웃</a>
		|
		<a href="<%=request.getContextPath() %>/sample2/board/write">글쓰기</a>
		|
	<a href="<%= request.getContextPath() %>/sample2/member/list">회원 목록보기</a>
	|
	</c:if>
	<a href="<%= request.getContextPath()%>/sample2/board/list">글 목록보기</a>
</div>
 --%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  
   <a class="navbar-brand" href="#">
    <img src="${pageContext.request.contextPath }/res/img/logo.png" height="30" alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/main">메인 <span class="sr-only">(current)</span></a>
      </li>
      
      <%--로그인 안 되었을때 --%>
      <c:if test="${empty sessionScope.userLogined }" >
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/signup"><i class="fas fa-user-plus"></i>회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/login"><i class="fas fa-sign-in-alt"></i>로그인</a>
      </li>
      </c:if>
      
      <%--로그인 되어있을 때 --%>
      <c:if test="${not empty sessionScope.userLogined }" >
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/info"><i class="fas fa-info"></i>정보보기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/logout"><i class="fas fa-sign-out-alt"></i>로그아웃</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath() %>/sample2/board/write"><i class="fas fa-pen-square"></i>글쓰기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/list"><i class="fas fa-clipboard-list"></i>회원목록보기</a>
      </li>
      </c:if>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath()%>/sample2/board/list"><i class="fas fa-clipboard-list"></i>글목록모기</a>
      </li>
    </ul>
 
  </div>
</nav>
