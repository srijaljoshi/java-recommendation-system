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

    .product {
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
    <div class="offset-3 col-md-6 text-center" id="addProductContainer"></div>
</div>

<div class="container container-fluid">
    <h2>${product.description}</h2>
    <div class="row">
        <div id="productContainer" class="offset-3 col-md-4 col-xs-6">
            <c:forEach var="cartItem" items="${cartItemList}">
                <div class="cartItem" data-id="${cartItem.id}">
                    <img src="${cartItem.product.imageUrl}" class="img-thumbnail trailer-image">
                    <div>
                        <p>Price: ${cartItem.product.price}</p>
                        <div>
                            Quantity: <input id="btnQuantity" type="number" min="1" max="10" class="quantityInput" value="${cartItem.quantity}" data-price="${product.price}">
                        </div>
                        <p>Total Price: ${cartItem.totalPrice}</p>
                        <br>
                        <button class="btn btn-outline-danger btn-sm btnRemoveProduct">Remove from cart</button>
                        <div data-productid="${product.id}" data-userid="${sessionScope.user.id}"  data-cartid="${sessionScope.cart.id}" id="paramsDiv" ></div>
                    </div>
                </div>
            </c:forEach>

            <p id="grandTotal" class="align-content-center text-center" data-grandTotal="${cart.grandTotal}">Grand total = ${cart.grandTotal}</p>
            <br>
            <br>
            <c:if test="${cartItemList.size() > 0}">
                <button id="placeOrder" class="btn btn-outline-success">Place Order</button>
            </c:if>
        </div>
    </div>
</div>
</body>

<script>

    window.grandTotal = $("#grandTotal").data('grandTotal');

    var msgdiv = $("#addProductContainer");
    var newdiv = '<div  class="alert alert-info" role="alert">Removed from Cart</div>';

    var paramsdiv = $("#paramsDiv");
    var product_id = paramsdiv.data('productid');


    let user_id = paramsdiv.data('userid');
    let cart_id = paramsdiv.data('cartid');
    let total, quantity;

    $("#btnQuantity").click(function () {
        let totalPrice = document.getElementById('totalPrice');
        quantity = $(this).val();
        total = parseFloat($(this).data('price')) * parseInt(quantity);
        totalPrice.innerHTML = 'Total price: ' + total.toFixed(2);
    });

    let cartItemId = $("cartItem").data('id');

    $(".btnRemoveProduct").click(function () {
        let conf = confirm("Sure?");
        if (conf) {
            $.ajax({
                'url': '/cart/remove/'+cartItemId,
                'type': 'DELETE',
                success: function () {
                    alert('Deleted successfully');
                    location.href = "/cart";
                }
            });
        }

    });



</script>
</html>