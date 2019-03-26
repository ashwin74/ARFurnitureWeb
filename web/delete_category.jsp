<%-- 
    Document   : delete_category.jsp
    Created on : Mar 23, 2019, 11:04:17 AM
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
    dbquery db=new dbquery();
    int i=db.delete_category(id);
    response.sendRedirect("viewCategory.jsp");
%>