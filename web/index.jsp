<%-- 
    Document   : index
    Created on : Jan 5, 2019, 12:40:55 PM
    Author     : Ashwin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.dbquery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <title>AR Furniture | Admin | Sign In</title>
</head>

<body>
    
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand mx-auto" href="#">AR FURNITURE SHOP</a>
    </nav>

    <h1 class="text-center" style="margin-top:20px;">Admin Sign In</h1>

    <div class="container row">
        <div class="col-md-6 offset-md-4">
            
            <form style="margin-top:20px;" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control"  placeholder="Admin Email ID" name="email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" placeholder="Password" name="password">
                </div>
                <button type="submit" name="signin" class="btn btn-success btn-block btn-lg" style="margin-top:30px;">Sign In</button>
            </form>
            
        </div>
    </div>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>

<!--Sign In-->
<%
if(request.getParameter("signin")!=null)
{
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    dbquery db=new dbquery();
    ResultSet res = db.login(email,password);
    if(res.next())
    {
        String lid = res.getString("loginid");
        session.setAttribute("lid", lid);
        String type = res.getString("usertype");
        if(type.equalsIgnoreCase("admin"))
        {
            response.sendRedirect("dashboard.jsp");
        }
    } else {
        %>
        <script>alert("Invalid Admin ID or Password");</script>
        <%
    }
}
%>