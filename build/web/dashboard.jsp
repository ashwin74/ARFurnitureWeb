<%-- 
    Document   : dashboard
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
  <title>AR Furniture Shop | Dashboard</title>
</head>

<body>
    
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand" href="#">AR FURNITURE SHOP</a>
      <a style="text-decoration: none;" href="index.jsp">
            <button class="btn btn-danger">Sign Out</button>
        </a>
    </nav>

    <h1 class="text-center" style="margin-top: 20px;">Admin Dashboard</h1>

    <div class="container">
        <div class="row">
            <div class="col-sm">
                
                <div class="card" style="width: 90%; margin-top: 50px;">
                    <div class="card-header text-center"><h3>Business Statistics</h3></div>
                    
                    <!-- Business Statistics from Database-->
                    <%
                        dbquery db=new dbquery();
                        ResultSet res=db.view_business();
                        if(res.next())
                        {
                    %>
                    
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item">Total Profit: Rupees <%= res.getString(1) %></li>
                      <li class="list-group-item">Number of Items: <%= res.getString(2) %></li>
                      <li class="list-group-item">Number of Customers: <%= res.getString(3) %></li>
                      <li class="list-group-item">Number of Items Sold: <%= res.getString(4) %></li>
                    </ul>
                    
                    <% } %>
                    
                </div>
                
            </div>
            
            <div class="col-sm" style="margin-top: 45px;">
                <a href="viewItem.jsp" style="text-decoration: none;">
                    <button type="button" style="margin-top: 10px;" class="btn btn-success btn-lg btn-block">View Items</button>
                </a>
                <a href="order.jsp" style="text-decoration: none;">
                    <button type="button" style="margin-top: 20px;" class="btn btn-danger btn-lg btn-block">View Orders</button>
                </a>
                <a href="review.jsp" style="text-decoration: none;">
                    <button type="button" style="margin-top: 20px;" class="btn btn-warning btn-lg btn-block">View Reviews</button>
                </a>
                <a href="userdetail.jsp" style="text-decoration: none;">
                    <button type="button" style="margin-top: 20px;" class="btn btn-info btn-lg btn-block">View Users</button>
                </a>
            </div>
            
        </div>
    </div>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>