  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>

<div class="container-fluid" style="height:10px; background-color:#43a047"></div>

<div class="container-fluid p-3">
<div class="row">
      <div class="col-md-3 text-dark">
         <h3><i class="fa-brands fa-canadian-maple-leaf"></i> GREENS</h3>
</div>

<div class="col-md-6">
 <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-secondary" type="submit">Search</button>
      </form>
</div>
 <div class="col-md-3">
 <c:if test="${not empty userobj }">
  <a href="login.jsp" class= "btn btn-success"><i class="fas fa-user"></i> ${userobj.name}</a>
  <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Log Out</a>
 </c:if>
 <c:if test="${empty userobj }">
  <a href="../login.jsp" class= "btn btn-success"><i class="fas fa-sign-in-alt"></i> Login</a>
  <a href="../registration.jsp" class="btn btn-success"><i class="fas fa-user-plus"></i> Register</a>
</c:if>
</div>
</div>


<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<nav class="navbar navbar-expand-lg navbar-light bg-custom">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item active">
          <a class="nav-link " aria-current="page" href="home.jsp"><i class="fa-solid fa-house"></i> Home</a>
        </li>
        </ul>
       </div>

    </div>
    </nav>
  </div>
