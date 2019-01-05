<%-- 
    Document   : signup
    Created on : Jan 5, 2019, 12:42:27 PM
    Author     : Ashwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>AR Furniture Shop</title>
  </head>
  <body>
    
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand" href="#">AR Furniture Shop</a>
      <a href="index.jsp"><button type="button" class="btn btn-success">Already have an Account then, Sign In</button></a>
    </nav>

    <div class="container">
        <h1 style="margin-top:2%; margin-bottom: 2%;" class="text-center">Complete the Registration</h1>
        <form>
            <div class="form-row">
            <div class="form-group col-md-6">
                <label>First Name</label>
                <input type="text" class="form-control" placeholder="First name">
            </div>
            <div class="form-group col-md-6">
                <label>Last Name</label>
                <input type="text" class="form-control" placeholder="Last name">
            </div>
            <div class="form-group col-md-6">
                <label for="inputEmail4">Email</label>
                <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
            </div>
            <div class="form-group col-md-6">
                <label for="inputPassword4">Password</label>
                <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
            </div>
            </div>
            <div class="form-group">
                <label for="inputAddress">Address</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="inputCity">Mobile Number</label>
                    <input type="tel" class="form-control" id="inputNumber">
                </div>
                <div class="form-group col-md-4">
                   <label for="inputCity">City</label>
                   <input type="text" class="form-control" id="inputCity">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputState">State</label>
                    <select id="inputState" class="form-control">
                      <option selected>Select State</option>
                      <option>Kannur</option>
                      <option>Mumbai</option>
                      <option>Delhi</option>
                    </select>
                </div>
                <div class="form-group col-md-2">
                    <label for="inputZip">Zip Code</label>
                    <input type="text" class="form-control" id="inputZip">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Sign Up</button>
        </form>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  </body>
</html>
