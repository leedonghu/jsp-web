<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<%
Object c = session.getAttribute("book");
Map<String, Integer> map = (Map<String, Integer>) c;
String book =request.getParameter("book");
String price = request.getParameter("price");
Integer pr =0;
int sum =0;
if(price !=null){
	
 pr = Integer.parseInt(price);
}
if(map == null){
	map = new HashMap<String, Integer>();
	session.setAttribute("book", map);
}
if(book != null){
	map.put(book, pr);

}
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
<%
if(!map.isEmpty()){
	
for(Map.Entry<String, Integer>entries : map.entrySet() ){
%>
   
    <tr>
      <td></td>
      <%
      out.print("<td>");
      out.print(entries.getKey());
      out.print("</td>");
      out.print("<td>");
      out.print(entries.getValue());
      out.print("</td>");
      %>
     <%sum +=entries.getValue(); %>
     
    </tr>
    
<%
}
}
%>
 <tr>
      <th></th>
      <th>총 <%= map.size()%>권</th>
      <th>총<%=sum %>가격</th>
      
    </tr>
  </tbody>
  
</table>
