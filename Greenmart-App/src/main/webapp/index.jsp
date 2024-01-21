<html>
<body>
 <div class="cotainer">
 <h3 class="text-center">New Product</h3>
 <div class="row"></div> </div>
 
 <%
 ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());
 List<ProductDtls> list = dao.getNewProduct();
 for (ProductDtls p : list)
 %>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <%User u=(User)session.getAttribute("userobj");
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  <div class="row">
  
  <% if (u==null) 
  {%>
	   <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add cart</a>
  <%}
  %>else{}%>
   <a href="cartservlet" class="btn btn-danger btn-sm ml-2">Add cart</a>
  <%} %>
  
  
 
  <a href="view_products.jsp?pid=<%=p.getProductId()%>"
  class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
  class="btn btn-danger btn-sm ml-1"><%=p.getprice()%> <i>
  class="fas fa-rupee-sign</i></a>
  </div>
  </div>
  </div>
  <%
  }%>
 
 
 
 
 
 
 
 
 
 
 %>
</body>
</html>
