<%-- 
    Document   : signout
    Created on : Mar 23, 2019, 12:25:06 PM
    Author     : Ashwin
--%>

<% 
    session.removeAttribute("lid");
    response.sendRedirect("index.jsp");
%>
