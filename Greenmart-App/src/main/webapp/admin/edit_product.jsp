<%@page import="com.entity.ProductDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Add Product</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#dedad9">
<%@include file="navbar.jsp" %>
<div class="container">
 <div class="row p-3">
 <div class="col-md-4 offset-md-4">
 <div class="card">
 <div class="card-body">
 <h4 class="text-center">Edit Products</h4>
 
 
 
 <%
 int id=Integer.parseInt(request.getParameter("id"));
 ProductDAOImpl dao= new ProductDAOImpl(DBConnect.getConn());
 ProductDtls b=dao.getProductById(id);
 %>>
 
<form action="../editproduct" method="post">

<input type="hidden" name="id" value="<%=b.getProductId()%>">

 <div class="form-group">
    <label for="inputState">Product Categories</label><select id="inputState" name="btype" class="form-control">
    <option selected>--select--</option>
    <option value="New">Vegetables</option>
    <option value="New">Fruits</option>
  </select>
  </div>
  <br>
  <div class="form-group">
    <label for="exampleInputEmail1">Prodcut Name</label>
    <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  value="<%=b.getProductName()%>">
  </div>
  <br>
   <div class="form-group">
    <label for="exampleInputEmail1">Price</label>
    <input name="price" type="number" class="form-control" id="exampleInputEmail1"  value="<%=b.getPrice()%>" >
  </div>
  <br>
  <div class="form-group">
    <label for="exampleInputPassword1">Product Status</label><select id="inputState" name="bstatus" 
   class="form-control" >
    <% if("Active".equals(b.getStatus())){%>
    <option value="active">Active</option>
    <option value="Inactive">Inactive</option>
    <%
    }else{%>
    <option value="Inactive">Inactive</option>
	<option value="active">Active</option>
    <%
    }
    %>  
   </select>
  </div>
  <br>
  
  <button type="submit" class="btn btn-primary">Update</button>
</form>
 
 
 </div>
 </div>
 </div>
 </div>
</div>

<div style="margin-top: 40px;">
<%@include file="footer.jsp" %>
</div>


</body>
</html>
