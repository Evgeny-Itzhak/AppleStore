<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Add New Item</title>
</head>
<body>
<form action="ItemServlet.do" method="post">
    <fieldset>
        <div>
            <label for="itemId">Item ID</label>
            <input type="text" name="itemId"
                   value="<c:out value="${item.itemId}" />"
                   readonly="readonly" placeholder="Item ID"/>
        </div>
        <div>
            <label for="model">Model</label>
            <input type="text" name="model" value="<c:out value="${item.model}" />" placeholder="Model"/>
        </div>
        <div>
            <label for="memory">Memory</label> <input type="text"
                                                      name="memory" value="<c:out value="${item.memory}" />"
                                                      placeholder="Memory"/>
        </div>
        <div>
            <label for="color">Color</label>
            <input type="text" name="color" value="<c:out value="${item.color}" />" placeholder="Color"/>
        </div>
        <div>
            <input type="submit" value="Submit"/>
        </div>
    </fieldset>
</form>
</body>
</html>