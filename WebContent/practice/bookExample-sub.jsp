<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<%
Map<String, Integer> map = (Map<String, Integer>)request.getAttribute("book");
Set<Map.Entry<String, Integer>> entry = map.entrySet();
for(Map.Entry<String, Integer> entries : entry){
%>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">책 제목</th>
      <th scope="col">가격</th>
      
    </tr>
  </thead>
   
  <tbody>
    <tr>
      <td></td>
      <td><%= entries.getKey() %></td>
      <td><%= entries.getValue() %></td>
     
    </tr>
    
  </tbody>
  
</table>
<%
}
%>