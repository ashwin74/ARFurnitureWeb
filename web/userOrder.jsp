<%-- 
    Document   : userOrder
    Created on : Jan 5, 2019, 12:44:22 PM
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
    <title>AR Furniture Shop | View More</title>
</head>

<body>
      
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand mx-auto" style="width: 200px;" href="dashboard.jsp">AR Furniture Shop</a>
    </nav>
      
    <div class="container">
        
        <%
        String mid=request.getParameter("mid");
        String ulid=request.getParameter("ulid");
            dbquery db=new dbquery();
            ResultSet rs=db.view_userOne(ulid);
            if(rs.next())
            {
        %>
        
        <div style="margin: 20px;">
            <h3>User Name: <%=rs.getString("firstname")%></h3>
            <h5>Phone Number: <%=rs.getString("mobileno")%></h5>
        </div>
        
        <% }
        else{
                out.print("Error Fetching User Details");
            }
        %>
        
        <table class="table table-hover" style="margin-bottom: 5%;">
            
            <thead class="thead-dark">
                <tr>
                    <th>Sl No.</th>
                    <th>Item Name</th>
                    <th>Category Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            
            <tbody>
                
                 <%
                     int i=1;
                     ResultSet res=db.view_user_order(mid);
                     while(res.next())
                     {
                         int quantity=res.getInt("itemquantity");
                         int itemprice=res.getInt("itemprice");
                         int totalprice = quantity * itemprice;
                 %>
                
                <tr>
                    <th><%= i++ %></th>
                    <td><%= res.getString(7) %></td>
                    <td><%= res.getString("categoryname") %></td>
                    <td><%= res.getString("itemurl") %></td>
                    <td><%= res.getString("itemquantity") %></td>
                    <td><%= res.getString("itemprice") %></td>
                    <td><%= totalprice+"" %></td>
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