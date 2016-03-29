<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add New Item</title>
    <style>
        body {
            background: url(/images/appleStoreOutside.png) no-repeat;
            -moz-background-size: cover; /* Firefox 3.6+ */
            -webkit-background-size: cover; /* Safari 3.1+ ? Chrome 4.0+ */
            -o-background-size: cover; /* Opera 9.6+ */
            background-size: cover; /* ??????????? ???????? */
        }
    </style>
</head>
<body>
<div align="center">
    <h1>Add/Edit Item</h1>

    <form action="ItemServlet" method="POST">
        <table>
            <tr>
                <td>Model:</td>
                <td>
                    <%--<c:choose>--%>
                        <%--<c:when test="${not empty item.itemId}">--%>
                            <%--<option value="">--Select model</option>--%>
                            <%--<option value="iPod">iPod</option>--%>
                            <%--<option value="iWatch">iWatch</option>--%>
                            <%--<option value="iPhone">iPhone</option>--%>
                            <%--<option value="iPad">iPad</option>--%>
                            <%--<option value="iMac">iMac</option>--%>
                            <%--<c:if test="${item.model eq 'iPod'}"><option selected value="iPod">iPod</option></c:if>--%>
                            <%--<c:if test="${item.model eq 'iWatch'}"><option selected value="iWatch">iWatch</option></c:if>--%>
                            <%--<c:if test="${item.model eq 'iPhone'}"><option selected value="iPhone">iPhone</option></c:if>--%>
                            <%--<c:if test="${item.model eq 'iPad'}"><option selected value="iPad">iPad</option></c:if>--%>
                            <%--<c:if test="${item.model eq 'iMac'}"><option selected value="iMac">iMac</option></c:if>--%>
                        <%--</c:when>--%>
                        <%--<c:otherwise>--%>
                            <select name="model">
                                <option value="">--Select model</option>
                                <option value="iPod">iPod</option>
                                <option value="iWatch">iWatch</option>
                                <option value="iPhone">iPhone</option>
                                <option value="iPad">iPad</option>
                                <option value="iMac">iMac</option>
                            </select>
                        <%--</c:otherwise>--%>
                    <%--</c:choose>--%>

                </td>
                <td colspan="2" style="color: red; font-size: small;">
                    <form:errors name="model"/>
                </td>
            </tr>
            <tr>
                <td>Memory:</td>
                <td>
                    <select name="memory">
                        <option selected value="">--Select memory</option>
                        <option value="16GB">16GB</option>
                        <option value="32GB">32GB</option>
                        <option value="64GB">64GB</option>
                        <option value="128GB">128GB</option>
                    </select>
                </td>
                <td colspan="2" style="color: red; font-size: small;">
                    <form:errors path="memory"/>
                </td>
            </tr>
            <tr>
                <td>Color:</td>
                <td>
                    <select name="color">
                        <option selected value="">--Select color</option>
                        <option value="Black">Black</option>
                        <option value="White">White</option>
                        <option value="Gold">Gold</option>
                    </select>
                </td>
                <td colspan="2" style="color: red; font-size: small;">
                    <form:errors path="color"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Add to bucket"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

