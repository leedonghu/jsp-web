<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%--@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" --%>
<%
String type = request.getParameter("type");
if(type==null){
	return;
}

%>
<br>
<table class="table table-striped table-hover table-bordered">
 
  <tbody>
    <tr>
      
      <td>타입</td>
      <td><b><%=type %></b></td>
     
    </tr>
    <tr>
     
      <td>특징</td>
      <td><% if(type.equals("A")){ %>
      강한 내구성.
      <%}else if(type.equals("B")){ %>
      뛰어난 대처능력
      <%} %>
      </td>
      
    </tr>
    
  </tbody>
</table>