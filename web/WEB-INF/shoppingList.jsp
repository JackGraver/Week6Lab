<%-- 
    Document   : shoppingList
    Created on : Oct 25, 2020, 5:42:05 PM
    Author     : 815138
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <p>Hello, ${sessionScope.username}
        <a href="ShoppingList?action=logout">Logout</a>
        </p>
        
        
        <h1>List</h1>
        
        <form>
            Add Item: <input type="text">
            <input type="submit" value="Add">
        </form>
    </body>
</html>
