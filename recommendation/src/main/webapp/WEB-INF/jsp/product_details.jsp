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

<div class="container container-fluid">
    <h2>${product.description}</h2>
    <div class="row">

            <div class="col-md-3 col-xs-6">
                <img src="${product.imageUrl}" class="img-thumbnail trailer-image">
                <div class="product_description">
                    <p>${product.description}</p>
                    <p>${product.price}</p>
                    <c:if test="${sessionScope.user.userCategory.userType == 'seller'}">
                        <div>
                            <a href="/products/${product.id}/edit">Edit</a>
<!--                            TODO: implement bootstrap modal here to update the product -->
                        </div>
                    </c:if>
                </div>
            </div>
    </div>
</div>
</body>
</html>