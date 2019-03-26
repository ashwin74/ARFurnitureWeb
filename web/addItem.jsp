<%-- 
    Document   : addItem
    Created on : Feb 14, 2019, 10:22:21 AM
    Author     : Ashwin
--%>

<%@page import="java.sql.ResultSet"%>
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
    <title>AR Furniture Shop | Add Item</title>
</head>
<body>
    
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="dashboard.jsp">AR Furniture Shop</a>
        <a style="text-decoration: none;" href="addCategory.jsp">
            <button class="btn btn-warning">Create New Category For Items</button>
        </a>
    </nav>
    
    <div class="container">
        
        <h1 class="text-center" style="margin-top: 20px;">Add Item</h1>
        
        <form action="file_upload_update.jsp" method="post" enctype="multipart/form-data">
            
            <div class="form-group">
                <label for="itemname">Item Name</label>
                <input type="text" class="form-control" placeholder="Item Name" name="itemname">
            </div>
                
            <div class="form-group">
                <label for="itemdescription">Description</label>
                <textarea class="form-control" placeholder="Item Description" name="itemdescription"></textarea>
            </div>
            
            <div class="row">
                <div class="form-group col-md-6">
                    <label>Category</label>
                    <select class="custom-select" name="category">
                        
                        <option selected disabled>Select Category</option>
                        <%
                            dbquery db=new dbquery();
                            int i=1;
                            ResultSet res=db.view_category();
                            while(res.next())
                            {
                        %>
                        
                        <option value="<%= i++ %>"><%= res.getString("categoryname") %></option>
                        
                        <% } %>
                        
                    </select>    
                </div>
                   
                <div class="form-group col-md-6">
                    <label for="price">Price</label>
                    <input type="number" class="form-control" placeholder="Price" name="price">
                </div>
            </div>
                
            <div class="form-group">
                <label>Select Item Image</label>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" name="itemurl">
                        <label class="custom-file-label" for="itemurl">Choose file</label>
                    </div>
                </div>
            </div>            
            
            <button style="margin-top: 40px;margin-bottom: 4%;" type="submit" class="btn btn-info btn-lg btn-block" name="additem">Add Item</button>
            
        </form>
        
    </div>
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>