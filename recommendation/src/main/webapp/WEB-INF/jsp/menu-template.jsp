<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<c:if test="${sessionScope.user != null && sessionScope.user.userCategory.userType == 'customer'}" >
    <div class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <div class="container-fluid">
              <div class="navbar-header">
                    <a class="navbar-brand" href="/">Recommendation System E commerce</a>
              </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="nav navbar-nav ml-auto">

                <li class="nav-item"><a class="nav-link" href="/products">Browse Products</a></li>

                <li class="nav-item"><a class="nav-link" href="/search">Search</a></li>

                    <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">${sessionScope.user.firstname}</a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="/u/edit-profile">Edit Profile</a>
                        <a class="dropdown-item" href="/u/order-history">View Order History</a>
                        <a class="dropdown-item" href="/logout">Logout</a>
                    </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</c:if>


<c:if test="${sessionScope.user.userCategory.userType == 'admin'}" >
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Recommendation System E commerce</a>
        </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
          </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="nav navbar-nav ml-auto">
        <li class="active">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/manage_customers">Manage Customers</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/manage_sellers">Manager Sellers</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/manage_products">Manager Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/logout">Log Out</a>
        </li>
          </ul>
      </div>
      </div>
    </nav>
</c:if>


<c:if test="${sessionScope.user == null}" >

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <div class="navbar-header">
          <a class="navbar-brand" href="/">Recommendation System E commerce</a>
        </div>
      <!-- Links -->

    <div class="collapse navbar-collapse" id="collapsibleNavbar">

        <ul class="nav navbar-nav ml-auto">
        <li class="active">
          <a class="nav-link" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/login">Log In</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/signup">Sign Up</a>
        </li>
      </ul>
    </div>
    </nav>
</c:if>