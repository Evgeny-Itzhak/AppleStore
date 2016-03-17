<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Show All Items</title>
</head>
<body>
<center>
    <table border="2">
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
    <p>
        <a href="ItemServlet?action=insert">Add Item</a>
    </p>
</center>
</body>
</html>