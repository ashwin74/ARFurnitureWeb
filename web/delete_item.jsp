<%-- 
    Document   : delete_item.jsp
    Created on : Mar 23, 2019, 10:40:57 AM
    Author     : Ashwin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.dbquery"%>
  <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null)
      response.sendRedirect("index.jsp");

  %>
<%
    String id=request.getParameter("id");
    System.out.println(id);
    dbquery db=new dbquery();
    int i=db.delete_item(id);
    response.sendRedirect("viewItem.jsp");
%>
