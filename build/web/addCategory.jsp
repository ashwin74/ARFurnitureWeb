<%-- 
    Document   : addCategory
    Created on : Feb 14, 2019, 10:22:21 AM
    Author     : Ashwin
--%>

<%@page import="dbpackage.dbquery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null)
      response.sendRedirect("index.jsp");

  %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>AR Furniture Shop | Add Category</title>
</head>
<body>
    
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="dashboard.jsp">AR Furniture Shop</a>
        <a style="text-decoration: none;" href="viewCategory.jsp"><button type="button" class="btn btn-info" name="category">View Category</button></a>
    </nav>
  
    <div class="container col-md-8">
        
        <h1 class="text-center" style="margin-top: 40px; margin-bottom: 40px;">Add Category</h1>
        
        <form method="post">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Category" name="addcategory">
            </div>
            <button type="submit" class="btn btn-primary btn-lg btn-block" name="category">Add Category</button>
        </form>
        
    </div>
    
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>

<%
if(request.getParameter("category")!=null)
{
    String addcategory = request.getParameter("addcategory");
    dbquery db = new dbquery();
    int i = db.add_category(addcategory);
    if(i>0){
                response.sendRedirect("viewCategory.jsp");
           }
}
%>