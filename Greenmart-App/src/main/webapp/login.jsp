<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GREENS:login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color:#dedad9";>
<%@include file="all_component/navbar.jsp" %>

<div class="container p-4">
<div class="row p-5">
<div class="col-md-4 offset-md-4">
<div class="card p-5">
<div class="card-body">
<h3 class="text-center">Log In</h3>
 <c:if test="${not empty failedMsg }">
 <h5 class="text-center text-danger">${failedMsg}</h5>
 <c:remove var="failedMsg" scope="session"/>
 </c:if>

<form action="Login" method="post" >
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
    required="required" name="email">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"    required="required" name="password">
  </div>
  <div class="text-center"><br>
   <button type="submit" class="btn btn-primary">Log in</button><br><br>
   <a href="registration.jsp">Create Account</a>
  </div>
 
</form>
</div>
</div>
</div>
</div>
</div>

<div style="margin-top:40px;">
<%@include file="all_component/footer.jsp" %>
</div>


</body>
</html>