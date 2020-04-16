<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="template-imports.jsp" />
</head>

<style>

    .product-image { float: left; width: 30%; }
    .product-details { float: left; width: 27%; }
    .product-price { float: left; width: 12%; }
    .product-quantity { float: left; width: 10%; }
    .product-removal { float: left; width: 9%; }
    .product-line-price { float: left; width: 12%; text-align: right; }

    /* Apply dollar signs */
    .product .product-price:before, .product .product-line-price:before, .totals-value:before {
        content: '$';
    }

    .product {
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 1px solid #eee;
    }
    .product .product-image {
        text-align: left;
    }
    .product .product-image img {
        width: 100px;
    }

    .product .product-details .product-description {
        margin: 5px 20px 5px 0;
        line-height: 1.4em;
    }
    .product .product-quantity input {
        width: 40px;
    }
    .product .remove-product {
        border: 0;
        padding: 4px 8px;
        background-color: #c66;
        color: #fff;
        font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
        font-size: 12px;
        border-radius: 3px;
    }
    .product .remove-product:hover {
        background-color: #a44;
    }

    .totals .totals-item {
        float: right;
        clear: both;
        width: 100%;
        margin-bottom: 5px;
    }
    .totals .totals-item label {
        float: left;
        clear: both;
        width: 79%;
        text-align: right;
    }
    .totals .totals-item .totals-value {
        float: right;
        width: 21%;
        text-align: right;
    }
    .totals .totals-item-total {
        font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
    }

    .checkout {
        float: right;
        border: 0;
        margin-top: 20px;
        padding: 6px 25px;
        background-color: #6b6;
        color: #fff;
        font-size: 25px;
        border-radius: 3px;
    }

    .checkout:hover {
        background-color: #494;
    }


</style>
<body>

<jsp:include page="menu-template.jsp" />

<br><br>
<br>
<div class="container">
    <h1> Shopping Cart</h1>
    <div class="column-labels">

        <label class="product-image"><b>Image</label>
        <label class="product-details">Description</label>
        <label class="product-price">Price</label>
        <label class="product-quantity">Quantity</label>
        <label class="product-removal">Remove</label>
        <label class="product-line-price">Total</label></b>
    </div>


    <form action="/cart/order-placed" method="post">
        <div id="productContainer" >
            <c:forEach var="cartItem" items="${cartItemList}">
            <div class="cartItem" data-id="${cartItem.id}">
                <div class="shopping-cart">

                    <div class="product">

                        <div class="product-image">
                            <img src="${cartItem.product.imageUrl}" class="img-thumbnail trailer-image">
                        </div>
                        <div class="product-details">
                            <div class="product-title"></div>
                            <p class="product-description">${cartItem.product.description}</p>
                        </div>
                        <div class="product-price">${cartItem.product.price}</div>
                        <div class="product-quantity">
                            <input type="number" value="2" min="1">
                        </div>
                        <div class="product-removal">
                            <button class="btn btn-danger">
                                Remove
                            </button>
                        </div>
                        <div class="product-line-price">${cartItem.totalPrice} </div>
                    </div>

                    <br><br><br><br><br><br><br>
                    </c:forEach>


                    <div class="totals">
                        <div class="totals-item"><b>
                            <label>Subtotal</label>
                            <div class="totals-value" id="cart-subtotal">${cartItem.totalPrice}</div>
                        </div>
                        <div class="totals-item">
                            <label>Tax (5%)</label>
                            <div class="totals-value" id="cart-tax">3.60</div>
                        </div>
                        <div class="totals-item">
                            <label>Shipping</label>
                            <div class="totals-value" id="cart-shipping">15.00</div>
                        </div>
                        <div class="totals-item totals-item-total">
                            <label>Grand Total</label>
                            <div class="totals-value" id="cart-total"></div>
                        </div></b>

                    </div>

                    <button class="checkout">Checkout</button>

                </div>
            </div>
        </div>
    </form>

</div>
</body>

<script>

    /* Set rates + misc */
    var taxRate = 0.05;
    var shippingRate = 15.00;
    var fadeTime = 300;


    /* Assign actions */
    $('.product-quantity input').change( function() {
        updateQuantity(this);
    });

    $('.product-removal button').click( function() {
        removeItem(this);
    });


    /* Recalculate cart */
    function recalculateCart()
    {
        var subtotal = 0;

        /* Sum up row totals */
        $('.product').each(function () {
            subtotal += parseFloat($(this).children('.product-line-price').text());
        });

        /* Calculate totals */
        var tax = subtotal * taxRate;
        var shipping = (subtotal > 0 ? shippingRate : 0);
        var total = subtotal + tax + shipping;

        /* Update totals display */
        $('.totals-value').fadeOut(fadeTime, function() {
            $('#cart-subtotal').html(subtotal.toFixed(2));
            $('#cart-tax').html(tax.toFixed(2));
            $('#cart-shipping').html(shipping.toFixed(2));
            $('#cart-total').html(total.toFixed(2));
            if(total == 0){
                $('.checkout').fadeOut(fadeTime);
            }else{
                $('.checkout').fadeIn(fadeTime);
            }
            $('.totals-value').fadeIn(fadeTime);
        });
    }


    /* Update quantity */
    function updateQuantity(quantityInput)
    {
        /* Calculate line price */
        var productRow = $(quantityInput).parent().parent();
        var price = parseFloat(productRow.children('.product-price').text());
        var quantity = $(quantityInput).val();
        var linePrice = price * quantity;
        /* Update line price display and recalc cart totals */
        productRow.children('.product-line-price').each(function () {
            $(this).fadeOut(fadeTime, function() {
                $(this).text(linePrice.toFixed(2));
                recalculateCart();
                $(this).fadeIn(fadeTime);
            });
        });
    }


    /* Remove item from cart */
    function removeItem(removeButton)
    {
        /* Remove row from DOM and recalc cart total */
        var productRow = $(removeButton).parent().parent();
        productRow.slideUp(fadeTime, function() {
            productRow.remove();
            recalculateCart();
        });
    }

</script>
</html>
