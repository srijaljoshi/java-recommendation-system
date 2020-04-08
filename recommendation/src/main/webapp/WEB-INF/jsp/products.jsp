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
    <h2 text="center">All the Product categories from which you can choose:</h2>

    <div class="container-fluid">
        <div class="row">

            <c:forEach var="category" items="${availableCategories}" >
                <div class="col-md-3 col-xs-6">
                    <div class="product_description">
                        <a class="btn btn-outline-danger product-category-btn" href="/products/${category.name}">${category.name}</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>