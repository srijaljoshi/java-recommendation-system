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

<h1 class="text-center">Products belonging to ${productCategory}</h1>
<div class="container container-fluid">
    <div class="row">

        <c:forEach var="product" items="${productsModel}" >
            <div class="col-md-3 col-xs-6">
                <img src="${product.imageUrl}" class="img-thumbnail trailer-image">
                <div class="product_description">
                    <p>${product.description}</p>
                    <p class="btn btn-block">${product.price}</p>
                    <p><a href="/products/${product.id}/details" class="btn btn-default btn-sm">See Product Details</a></p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>