<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="template-imports.jsp" />
    <title>Showing Products</title>
</head>
<body>
<jsp:include page="menu-template.jsp" />

<br><br>
<div class="container">
    <br>
    <h2 text="center">
        Search Results
    </h2>

    <div class="container-fluid">
        <div class="row">
            <c:forEach var="product" items="${products}" >
                <div class="col-4 col-md-3 col-xs-6">
                    <div class="card">
                        <img class="card-img-top img-fluid" src="${product.imageUrl}">
                        <div class="card-body">
                            <div class="product_description">
                                <h4 class="card-title"><a href="/products/${product.id}/details">${product.name}</a></h4>
                                <p class="card-text">Brand: ${product.productBrand.brandName}</p>
                                <div class="row">
                                    <div class="col">
                                        <p class="btn btn-danger btn-sm">$${product.price}</p>
                                    </div>
                                    <div class="col">
                                        <div><a class="btn btn-outline-success btn-sm" href="/products/${product.id}/details">Details</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>