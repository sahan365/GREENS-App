<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.ProductDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="java.util.*" %>
<%@ page import="com.entity.ProductDtls" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : All Products</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>

<c:if test="${not emptySuccMsg }">
 <h5 class="text-center  text-success">${succMSg }</h5>
 <c:remove var="SuccMsg" scope="session"/>
 </c:if>
 
  <c:if test="${not empty failedMsg }">
 <h5 class="text-center  text-danger">${failedMsg }</h5>
 <c:remove var="failedMsg" scope="session"/>
 </c:if>

<table class="table table-striped ">
  <thead class="bg-primary text-white">
    <tr>
    <th scope="col">ID</th>
      <th scope="col">Image</th>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Categories</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
   <%
 ProductDAOImpl dao= new ProductDAOImpl (DBConnect.getConn());
 List<ProductDtls> list = dao.getAllProduct();
 for(ProductDtls b:list)
  {%>
  
    <tr>
      <td><%=b.getProductId() %></td>
      <td><img src="../product/<%=b.getPhotoName() %>
      "style="width:50px; height:50px;"></td>
      <td><%=b.getProductName() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getProductCategory() %></td>
      <td><%=b.getStatus() %></td>
      <td>
       <a href="edit_product.jsp?id=<%=b.getProductId()%>>" class="btn btn-sm btn-primary">Edit</a>
       <a href="../delete?id=<%=b.getProductId() %>>" class="btn btn-sm btn-danger">Delete</a>
      </td>
      
    </tr>
	 <% 
 }
   %>
  
  
   
  </tbody>
</table>

<div style="margin-top: 350px;">
<%@include file="footer.jsp" %>
</div>


</body>
</html>
