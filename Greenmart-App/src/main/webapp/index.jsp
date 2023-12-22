<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Green: Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">

.back-img{
      background: url("img/cover.jpeg");
      height: 46vh;
      width: 100%;
      background-size: cover;
      background-repeat: no-repeat;
}

.crd-ho:hover{
background-color:#fcf7f7;
}



</style>
</head>

<body style="background-color:#dedad9">

        <%
        User u=(User)session.getAttribute("userobj");
        %>
        
        
     <%@include file="all_component/navbar.jsp"%>
     <div class="container-fluid back-img">
     </div>
 

 
      <div class="container p-2">
      <h3 class="text-center">Vegetables</h3>
      <div class="row p-3">
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/carrot1.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Carrot</p>
      <p>Price-Rs.177.00</p>
      <p>Per 300g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/beans.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Green Beans</p>
      <p>Price-Rs.279.00</p>
      <p>Per 300g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/potato.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Potato</p>
      <p>Price-Rs.135.00</p>
      <p>Per 300g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/tomato.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Tomato</p>
      <p>Price-Rs.243.00</p>
      <p>Per 300g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      
      </div>
      
      <div class="text-center mt-1 p-3">
      <a href="" class="btn btn-danger btn-sm text-white">View all</a>
      </div>
      
      
      </div>
 
  
      <div class="container p-3">
      <h3 class="text-center">Fruits</h3>
      <div class="row p-2">
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/apple.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Apple</p>
      <p>Price-Rs.429.60</p>
      <p>Per 300g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/banana.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Banana</p>
      <p>Price-Rs 17.60</p>
      <p>Per 100g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/orange.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Orange</p>
      <p>Price-Rs.148.80</p>
      <p>Per 300g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/grapes.webp" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p>Grapes</p>
      <p>Price-Rs.480.00</p>
      <p>Per 300g(s)</p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      
      
      </div>
      
      <div class="text-center mt-1 p-3">
      <a href="" class="btn btn-danger btn-sm text-white">View all</a>
      </div>
      
      
      </div>
 
       <%@include file="all_component/footer.jsp" %>
 
</body>
</html>