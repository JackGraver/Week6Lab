<%-- 
    Document   : register
    Created on : Oct 25, 2020, 5:41:54 PM
    Author     : 815138
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <form method="post" action="ShoppingList?action=register">
            Username:<input type="text" name="username">
            <input type="submit" value="Register name">
        </form>
    </body>
</html>
