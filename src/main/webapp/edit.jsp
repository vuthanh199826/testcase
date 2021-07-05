<%--
  Created by IntelliJ IDEA.
  User: THANH
  Date: 7/4/2021
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Product
                </h2>
            </caption>
            <c:if test="${product != null}">
                <input type="hidden" name="id" value="<c:out value='${product.id}' />"/>
            </c:if>
            <tr>
                <th>Model:</th>
                <td>
                    <input type="text" name="model" size="45"
                           value="<c:out value='${product.model}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${product.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Price:</th>
                <td>
                    <input type="text" name="price" size="15"
                           value="<c:out value='${product.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>IMG:</th>
                <td>
                    <input type="text" name="img" size="15"
                           value="<c:out value='${product.img}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Describe:</th>
                <td>
                    <input type="text" name="describe" size="15"
                           value="<c:out value='${product.describe}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
