<%--
  Created by IntelliJ IDEA.
  User: THANH
  Date: 7/4/2021
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new product</title>
</head>
<body>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>ID:</th>
                <td>
                    <input type="text" name="id" id="id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>MODEL:</th>
                <td>
                    <input type="text" name="model" id="model" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="15"/>
                </td>
            </tr>
            <tr>
                <th>PRICE:</th>
                <td>
                    <input type="text" name="price" id="price" size="15"/>
                </td>
            </tr>
            <tr>
                <th>IMG:</th>
                <td>
                    <input type="text" name="img" id="img" size="15"/>
                </td>
            </tr>
            <tr>
                <th>DESCRIBE:</th>
                <td>
                    <input type="text" name="describe" id="describe" size="15"/>
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
