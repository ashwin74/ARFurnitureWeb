<%-- 
    Document   : addItemForm
    Created on : Feb 14, 2019, 10:22:21 AM
    Author     : Ashwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>Add Products</title>
</head>
<body>
    
    <!--    navbar-->
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand mx-auto" style="width: 200px;" href="#">AR Furniture Shop</a>
    </nav>
    
    <div class="container">
        <h1 class="text-center" style="margin-top: 10px;">Add Product</h1>
        <form>
            
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="itemname">Product Name</label>
                    <input type="text" class="form-control" id="itemname" placeholder="Product Name" name="itemname">
                </div>
                <div class="form-group col-md-12">
                    <label for="itemdescription">Description</label>
                    <textarea class="form-control" aria-label="With textarea" placeholder="Product Description" name="itemdescription"></textarea>
                </div>
            </div>
            
            <div class="row">
                <div class="form-group col-sm-6">
                    <label>Category</label>
                    <select class="custom-select" name="category">
                        <option selected disabled>Select Category</option>
                        <option value="1">Sofa</option>
                        <option value="2">Bed</option>
                        <option value="3">Chair</option>
                        <option value="4">Table</option>
                    </select>
                </div>
                <div class="form-group col-sm-6">
                    <label for="price">Price</label>
                    <input type="text" class="form-control" id="price" placeholder="Price" name="price">
                </div>
            </div>
            
            <div>
                <label>Select Image</label>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="inputFile">
                        <label class="custom-file-label" for="inputFile" aria-describedby="inputGroupFileAddon">Choose file</label>
                    </div>
                </div>
            </div>
            
            <button type="button" class="btn btn-primary btn-lg btn-block" name="additem">Add Product</button>
            
        </form>
    </div>
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>

<%
if(request.getParameter("additem")!=null)
{
    String itemName=request.getParameter("itemname");
    String description=request.getParameter("description");
    String price=request.getParameter("price");
    String category=request.getParameter("category");
    out.print(itemName);
    out.print(description);
    out.print(price);
    out.print(category);    
}

%>