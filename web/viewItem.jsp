<%-- 
    Document   : item
    Created on : Jan 5, 2019, 12:43:28 PM
    Author     : Ashwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>View Products</title>
</head>
<body>
    
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand mx-auto" style="width: 200px;" href="#">AR Furniture Shop</a>
    </nav>
    
    <div class="container">
        
        <h1 style="margin-top: 2%; margin-bottom: 2%;" class="text-center">View Products</h1>
        
        <div class="row" style="margin-bottom: 20px">
            <div class="col-6">
                <button type="button" class="btn btn-danger text-center btn-block btn-lg">Delete Item</button>
            </div>
            <div class="col-6">
                <button type="button" class="btn btn-success text-center btn-block btn-lg">Add Item</button>
            </div>
        </div>
        
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Description</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">Product Image Url</th>
                    <th scope="col">Selected</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Italian Sofa</td>
                    <td>description</td>
                    <td>Sofa</td>
                    <td>23000</td>
                    <td>url</td>
                    <th>
                        <div class="input-group">
                            <input type="checkbox" style="height:25px;width:25px;" aria-label="Checkbox for following text input">
                        </div>
                    </th>
                </tr>
            </tbody>
        </table>
        
    </div>
    
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>