<%@page import="com.entity.ProductDtls"%>
<%@page import="java.util.List"%>
<%@ page import="com.DAO.ProductDAOImpl"%>
<%@ page import="com.DAO.ProductDAO" %>
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
      
      
      <%
      ProductDAOImpl dao=new ProductDAOImpl(DBConnect.getConn());
      List<ProductDtls> list= dao.getVegitables();
      for(ProductDtls b:list)
      {%>
      <div class="col-md-3">
    	    <div class="card crd-ho">
         <div class="card-body text-center">
      <img alt="" src="product/<%=b.getPhotoName() %>"  
      style="width: 150px; height: 200px" class="img-thumblin">
      <p><%=b.getProductName() %></p>
      <p><%=b.getPrice() %></p>
      <p>
      
      <%
      if (b.getProductCategory().equals("Vegitable"))
      {%>
      Categories:<%=b.getProductCategory() %></p>
    	  <div class="row">  
      <a href="" class="btn btn-danger btn-sm ml-6">View</a>
      </div>
      <%
      }else{%>
    	  <div class="row">
    	  Categories:<%=b.getProductCategory() %></p>
      <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-cart-shopping"></i></a>
      <a href="Vegitables.jsp" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      <%
      }
      %>
      
      
      
      
      </div>
      
      </div>
      </div>
      <%
      }
      %>      
      
      
      
      
      </div>
      
      <div class="text-center mt-1 p-3">
      <a href="Vegitables.jsp" class="btn btn-danger btn-sm text-white">View all</a>
      </div>
      
      
      </div>
 
  
      <div class="container p-3">
      <h3 class="text-center">Fruits</h3>
      <div class="row p-2">
      
      <%
      ProductDAOImpl dao2= new ProductDAOImpl(DBConnect.getConn());
      List<ProductDtls> list2=dao2.getFruits();
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
      <a href="Fruits.jsp" class="btn btn-danger btn-sm">View</a>
         
      
      </div>
      
      </div>
      
      </div>
      
      </div>
      <%
      }
      %>
    
      
      </div>
      
      <div class="text-center mt-1 p-3">
      <a href="Fruits.jsp" class="btn btn-danger btn-sm text-white">View all</a>
      </div>
      
      
      </div>
 
       <%@include file="all_component/footer.jsp" %>
 
</body>
</html>
