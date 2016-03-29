<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Show All Items</title>
    <style>
        body {
            background: url(/images/appleStoreInside.jpg) no-repeat;
            -moz-background-size: cover; /* Firefox 3.6+ */
            -webkit-background-size: cover; /* Safari 3.1+ и Chrome 4.0+ */
            -o-background-size: cover; /* Opera 9.6+ */
            background-size: cover; /* Современные браузеры */
        }
    </style>
</head>
<body>
<div align="center">
    <p>
        <a href="ItemServlet"><img src="/images/appleStoreLogo.png"/></a>
    </p>
    <a></a>
    <a style="text-decoration-color: lightcyan"><h1>Your bucket</h1></a>
    <table border="2" style="background-color: lightskyblue">
        <thead>
        <tr>
            <th>Item ID</th>
            <th>Model</th>
            <th>Memory</th>
            <th>Color</th>
            <th colspan="2">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${items}" var="item">
            <tr>
                <td><c:out value="${item.itemId}"/></td>
                <td><c:out value="${item.model}"/></td>
                <td><c:out value="${item.memory}"/></td>
                <td><c:out value="${item.color}"/></td>
                <td><a href="ItemServlet?action=edit&itemId=<c:out value="${item.itemId}"/>">Update</a></td>
                <td><a href="ItemServlet?action=delete&itemId=<c:out value="${item.itemId}"/>">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <table>
        <tr>
            <td>
                <p>
                    <a href="ItemServlet?action=insert"><img src="/images/bucket.png"/></a>
                </p>
            </td>

            <td>
                <p>
                    <a style="color: lightskyblue" href="ItemServlet?action=insert"><h1>Add Item</h1></a>
                </p>
            </td>
        </tr>
    </table>
</div>
</body>
</html>