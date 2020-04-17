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

<style>
    .quantityInput {
        padding: 5px;
        width: 3em;
        height: 1.5em;
        border: 2px solid rgba(49,200,100,0.7);
        border-radius: 4px;
    }
    .orderSummary {
        padding: 10px;
        border: 2px solid grey;
        margin-bottom: 10px;
    }
</style>
<body>
<jsp:include page="menu-template.jsp" />

<br><br>
<br><br>
<div class="row">
    <div class="offset-3 col-md-6 text-center">

        <h1>${orderMessage}</h1>
        <br><br>
        <div class="orderSummary">
            Order Summary

            <h5>
                Grand Total: ${orderCart.grandTotal}
            </h5>
            <br><br><br>
            <h4>Items:</h4>
            <c:forEach var="cartItem" items="${orderCart.cartItemList}">
                <p>${cartItem.quantity} x ${cartItem.product.productBrand.brandName} ${cartItem.product.productCategory.name} @ ${cartItem.product.price} + TAX per each</p>
            </c:forEach>
        </div>

<!--        <h2>-->
<!--            Please rate the products you purchased!-->
<!--        </h2>-->
    </div>
</div>


</body>

</html>