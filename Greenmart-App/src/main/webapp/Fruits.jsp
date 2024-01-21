<%@page import="com.entity.ProductDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruits</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">

.crd-ho:hover{
background-color:#fcf7f7;
}



</style>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<div class="container-fluid">
<div class="row">
      <%
      ProductDAOImpl dao2= new ProductDAOImpl(DBConnect.getConn());
      List<ProductDtls> list2=dao2.getAllFruits();
      for(ProductDtls b:list2)
      {%>
    	  <div class="col-md-3">
      <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/<%=b.getPhotoName() %>" 
      style="width: 150px; height: 200px" class="img-thumblin">
      <p><%=b.getProductName() %></p>
      <p><%=b.getPrice() %></p>
      <p><%=b.getProductCategory() %></p>
      <div class="row">
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      <%
      }
      %>
</div>
</div>
</body>
</html>
