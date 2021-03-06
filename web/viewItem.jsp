<%-- 
    Document   : viewItem
    Created on : Jan 5, 2019, 12:43:28 PM
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

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>AR Furniture Shop | View Items</title>
</head>
<body>
    
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="dashboard.jsp">AR Furniture Shop</a>
        <a style="text-decoration: none;" href="addItem.jsp">
            <button class="btn btn-success">Add Item</button>
        </a>
    </nav>
    
    <div class="container" style="margin-bottom: 70px;">
        
        <h1 style="margin-top: 2%; margin-bottom: 2%;" class="text-center">View Items</h1>
        
        
        <!--        Table-->
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Sl No.</th>
                    <th scope="col">Item Name</th>
                    <th scope="col">Item Description</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">Item Image</th>
                    <th scope="col">Delete</th>
                </tr>
            </thead>
           
            <tbody>
                
                <%
                    dbquery db=new dbquery();
                    int i=1;
                    ResultSet res=db.view_item();
                    while(res.next())
                    {   
                %>
                
                <tr>
                    <th><%= i++ %></th>
                    <td><%= res.getString("itemname") %></td>
                    <td><%= res.getString("itemdescription") %></td>
                    <td><%= res.getString("categoryname") %></td>
                    <td><%= res.getString("itemprice") %></td>
                    <td>
                        <a href="#" class="pop">
                            <img src="Items/<%= res.getString("itemurl") %>" alt="<%= res.getString("itemurl") %>" height="40px;" width="40px;">
                        </a>
                        
                        <div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">              
                                <div class="modal-body">
                                  <button type="button" class="close" data-dismiss="modal">
                                      <span aria-hidden="true">&times;</span>
                                      <span class="sr-only">Close</span>
                                  </button>
                                  <img src="" class="imagepreview" style="width: 465px; height: 500px;" >
                                </div>
                              </div>
                            </div>
                          </div>
                    </td>
                    <td>
                        <div class="input-group">
                            <a style="text-decoration: none;" href="delete_item.jsp?id=<%= res.getString("itemid") %>">
                                <button type="button" class="btn btn-danger">Delete Item</button>
                            </a>
                        </div>
                    </td>
                </tr>
                
                <% } %>
                
            </tbody>
        </table>
        
    </div>

                                
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

<script>
    $(function() {
		$('.pop').on('click', function() {
			$('.imagepreview').attr('src', $(this).find('img').attr('src'));
			$('#imagemodal').modal('show');   
		});		
                });
</script>

</body>
</html>