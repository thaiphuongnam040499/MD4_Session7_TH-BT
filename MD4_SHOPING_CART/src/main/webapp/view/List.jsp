<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/2/2023
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Project 04 - Shopping Cart</title>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/assets/css/style.css">

    <!--
        Notice the use of %PUBLIC_URL% in the tags above.
        It will be replaced with the URL of the `public` folder during the build.
        Only files inside the `public` folder can be referenced from the HTML.

        Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
        work correctly both with client-side routing and a non-root public URL.
        Learn how to configure a non-root public URL by running `npm run build`.
    -->
</head>

<body>
<div class="container">
    <!-- TITLE : START -->
    <div class="page-header">
        <h1>Project 04 - Shopping Cart</h1>
    </div>
    <!-- TITLE : END -->

    <div class="row">
        <!-- LIST PRODUCT : START -->
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h1 class="panel-title">List Products</h1>
                </div>
                <div class="panel-body" id="list-product">
                    <c:forEach items="${ListProduct}" var="product">
                        <!-- PRODUCT : START -->
                        <form action="cart-servlet" method="post">
                            <div class="media product">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object" src=${product.pImage} >
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">${product.pName}</h4>
                                    <p>${product.pDes}</p>
                                    <input name="quantity" type="number" value="1" min="1">
                                    <input style="margin-top: 50px" type="submit" class="price" value=" ${product.pPrice}">
                                    <input type="hidden" name="pId" value="${product.pId}">
                                    <input type="hidden" name="action" value="create">
                                </div>
                            </div>
                        </form>

                        <!-- PRODUCT : END -->
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- LIST PRODUCT : END -->

        <!-- CART : START -->
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h1 class="panel-title">Your Cart</h1>
                </div>
                <div class="panel-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th width="4%">#</th>
                            <th>Pokemon</th>
                            <th width="15%">Price</th>
                            <th width="4%">Quantity</th>
                            <th width="20%">Subtotal</th>
                            <th width="25%">Action</th>
                        </tr>
                        </thead>
                        <tbody id="my-cart-body">
                        <!-- CART BODY -->
                        <c:forEach items="${listCart}" var="cart">
                            <tr>
                                <th scope="row">${cart.id}</th>
                                <td>${cart.getProduct().getpName()}</td>
                                <td>${cart.getProduct().getpPrice()}</td>
                                <td><input name="cart-item-quantity-1" type="number" value="1" min="1"></td>
                                <td><strong>12 USD</strong></td>
                                <td>
                                    <a class="label label-info update-cart-item" href="#" data-product="">Update</a>
                                    <a class="label label-danger delete-cart-item" href="#"
                                       data-product="">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot id="my-cart-footer">
                        <!-- CART FOOTER -->
                        <tr>
                            <th colspan="6">Empty product in your cart</th>
                        </tr>
                        <tr>
                            <td colspan="4">There are <b>1</b> items in your shopping cart.</td>
                            <td colspan="2" class="total-price text-left">12 USD</td>
                        </tr>
                        </tfoot>
                    </table>

                </div>
            </div>
            <div class="alert alert-success" role="alert" id="mnotification">Updated <b>successfull</b></div>
        </div>
        <!-- CART : END -->
    </div>
</div>


<!--
    This HTML file is a template.
    If you open it directly in the browser, you will see an empty page.

    You can add webfonts, meta tags, or analytics to this file.
    The build step will place the bundled scripts into the <body> tag.

    To begin the development, run `npm start` or `yarn start`.
    To create a production bundle, use `npm run build` or `yarn build`.
-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../assets/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../assets/js/bootstrap.js"></script>
</body>

</html>