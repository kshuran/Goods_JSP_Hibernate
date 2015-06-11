<%-- 
    Document   : addproduct
    Created on : 11.06.2015, 20:11:30
    Author     : НКулацкий
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add product</title>
    </head>
    <body>
        <h1>Add product</h1>
        <form name="addProduct">
            Good ID:<br>
            <input type="text" name="goodID" value="" size="10" />
            <br>
            Name:<br>
            <input type="text" name="goodName" value="" />
            <br>
            Price:<br>
            <input type="text" name="goodPrice" value="" />
        </form>
        <br>
        <form action="addNext.jsp">
            <input type="submit" value="Add product" name="AddProductButton" />
        </form>
    </body>
</html>
