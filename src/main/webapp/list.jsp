<%--
  Created by IntelliJ IDEA.
  User: THANH
  Date: 7/4/2021
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Product</title>
    <style>
        body {
            background: #000;
            color:#fff;
            font-family: Arial;
            text-align: center;
            font-size: 62.5%;
            line-height: 150%;
            height: 100%;
            line-height: 1.5;
        }

        a { text-decoration: none;}

        #wrapper {
            width: 100%;
            overflow: hidden;
            /*position: absolute;*/
            top: 30%;
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
        }


        #btn-outline {
            margin: 30px auto 0;
            width: 210px;
            height: 40px;
            display: block;
        }

        #btn-outline .shape {
            stroke-dasharray: 100 310;
            stroke-dashoffset: -304;
            stroke-width: 5px;
            fill: transparent;
            stroke: #fff;
            -webkit-transition: stroke-width 1s, stroke-dashoffset 1s, stroke-dasharray 1s;
            -ms-transition: stroke-width 1s, stroke-dashoffset 1s, stroke-dasharray 1s;
            transition: stroke-width 1s, stroke-dashoffset 1s, stroke-dasharray 1s;
        }

        #btn-outline .text {
            top: -34px;
            position: relative;
            color: #fff;
            font-size: 1.5em;
            letter-spacing: 4px;
            margin-right: -4px;
        }

        #btn-outline:hover .shape {
            stroke-width: 2px;
            stroke-dashoffset: 0;
            stroke-dasharray: 550;
        }

        .no-svg #btn-outline {
            color: #fff;
            font-size: 1.7em;
            line-height: 40px;
            letter-spacing: 4px;
            text-indent: 4px;
            border: 2px solid #fff;
        }
    </style>
</head>
<body>


<form method="get">
<input type="hidden" name="action" value="display">
    <button>display</button>
</form>

<form method="get">
    <input type="hidden" name="action" value="create">
    <button>create</button>
</form>


<div id="wrapper">
    <a id="btn-outline" href="/products" target="_blank">
        <svg height="40" width="210" xmlns="http://www.w3.org/2000/svg">
            <rect class="shape" height="40" width="210"></rect>
        </svg>
        <div class="text">AYDEV</div>
    </a>
</div>

<%--<a href="/products">All Product</a><br/>--%>




<%--<a href="/products?action=create">create</a><br/>--%>
<a style="border-radius: 10px ;background-color: #ff6700 ; border: 3px solid chocolate ; width: 300px ;height: 300px;padding: 3px" href="/products?action=display">display</a>
<form method="get">
<input type="hidden" name="action" value="search">
    <select name="type">
        <option value="name">name</option>
        <option value="id">id</option>
        <option value="price">price</option>
    </select> <input type="text" name="input"> <button type="submit">Search</button>
</form>
<form method="get">
    <input type="hidden" name="action" value="sort">
   <button type="submit">Sort</button>
    <select name="sort">
        <option value="name">by name</option>
        <option value="id">by id</option>
        <option value="price">by price</option>
    </select>
</form>
<div align="center">
<table border="1">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Name</th>
        <th>Price</th>
        <th>IMG</th>
        <th>Describe</th>
    </tr>
<c:forEach var="product" items="${listProduct}">
<tr>
    <td><c:out value="${product.id}"></c:out></td>
    <td><c:out value="${product.model}"></c:out></td>
    <td><c:out value="${product.name}"></c:out></td>
    <td><c:out value="${product.price}"></c:out></td>
    <td>
        <img width="100px" src="  <c:out value="${product.img}"></c:out>">
    </td>
    <td><c:out value="${product.describe}"></c:out></td>
    <td><a href="/products?action=edit&id=${product.id}">edit</a></td>
    <td><a href="/products?action=delete&id=${product.id}">delete</a></td>
</tr>
</c:forEach>


</table>
</div>

</body>
</html>
