<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Home</title>
<%@include file="allCss.jsp" %>
<style type="text/css">
a{
text-decoration:none;
color:black;
}

a:hover {
     text-decoration:none;
     color:black;
}




</style>

</head>
<body>
<%@include file="navbar.jsp" %>

          <div class="container">
          <div class="row p-5">
          <div class="col-md-3">
          <a href="add_product.jsp">
          <div class="card">
          <div class="card-body text-center">
          <i class="fa-brands fa-shopify fa-3x text-primary""></i><br>
          <h4>Add Product</h4>
          -------------
          </div>
          </div>
          </a>
          </div>
          
          
          <div class="col-md-3">
          <a href="all_product.jsp">
          <div class="card">
          <div class="card-body text-center">
          <i class="fa-solid fa-bag-shopping fa-3x text-success"></i><br>
          <h4>All Product</h4>
          -------------
          </div>
          </div>
          </a>
          </div>
        
          <div class="col-md-3">
          <a href="all_orders.jsp">
          <div class="card">
          <div class="card-body text-center">
          <i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
          <h4>Orders</h4>
          -------------
          </div>
          </div>
          </a>
          </div>
           
          <div class="col-md-3">
          <div class="card">
          <div class="card-body text-center">
          <i class="fa-solid fa-right-from-bracket fa-3x text-danger"></i><br>
          <h4>Log Out</h4>
          -------------
          </div>
          </div>
          </div>
          
          </div>   
                 
          </div>
<div style="margin-top: 360px;">
<%@include file="footer.jsp" %>
</div>



</body>
</html> 