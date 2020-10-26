<%-- 
    Document   : shoppingList
    Created on : Oct 25, 2020, 5:42:05 PM
    Author     : 815138
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        
        <form method="post" action="ShoppingList?action=add">
            Add Item: <input type="text" name="item">
            <input type="submit" value="Add">
        </form><br>
        
        <form method="post" action="ShoppingList?action=delete">
            <c:if test="${sessionScope.shoppingList.size() > 0}">  
                <c:forEach var="item" items="${sessionScope.shoppingList}">
                     <input type="radio" name="itemDelete" value="${item}">${item} <br>
                </c:forEach>
                <input type="submit" value="Delete">   
            </c:if>  
        </form>
        
        ${test}
        
    </body>
</html>
