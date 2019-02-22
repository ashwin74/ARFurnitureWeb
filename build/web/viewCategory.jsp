<%-- 
    Document   : viewCategory
    Created on : Jan 5, 2019, 12:45:17 PM
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
    <title>AR Furniture Shop | View Category</title>
</head>
<body>
    
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand mx-auto" href="dashboard.jsp">AR Furniture Shop</a>
    </nav>
    
    <div class="container" style="margin-bottom: 4%;">
        
        <h1 style="margin-top: 2%; margin-bottom: 2%;" class="text-center">Categories</h1>
        
        <table class="table table-hover">
            
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Sl No</th>
                    <th scope="col">category name</th>
                    <th scope="col">Edit Category</th>
                    <th scope="col">Delete Category</th>
                </tr>
            </thead>
            
            <tbody>
                <tr>
                    
                    <%
                        dbquery db=new dbquery();
                        int i=1;
                        ResultSet res=db.view_category();
                        while(res.next())
                        {
                    %>
                    
                    <th><%= i++ %></th>
                    <td><%= res.getString("categoryname") %></td>
                    <td><button class="btn btn-primary"><a href=""></a>Edit Category</button></td>
                    <td><button class="btn btn-warning"><a href=""></a>Delete Category</button></button></td>
                </tr>
                
                <% } %>
                
            </tbody>
        </table>
        
    </div>
    
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>