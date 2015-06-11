<%-- 
    Document   : updateDelete
    Created on : 11.06.2015, 22:19:15
    Author     : НКулацкий
--%>
<%@page import="control.GoodsManager, java.util.*, entity.Goods" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Choose product:</h1>
        <form name="tableForChanges">
            <table>
            <thead>
                <tr>
                    <th></th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                </tr>
            </thead>

            <tbody>
                <% GoodsManager gm = new GoodsManager();
                    List list = gm.listGoods();
                    Iterator i = list.iterator();
                    while (i.hasNext()) {
                                    Goods product = (Goods) i.next();%>
                <tr>
                    <td><input type="radio" name="change" value="<%= product.getGoodId()%>" /></td>
                    <td><%= product.getGoodId()%> </td>
                    <td><%= product.getName()%> </td>
                    <td><%= product.getPrice()%> </td>
                </tr>
                <%
                    }
                %>
            </tbody> 
        </table>
    </form>
        <table border="0">
            <tbody>
                <tr>
                    <td><input type="submit" value="update" name="update" />
                    </td>
                    <td><input type="submit" value="delete" name="delete" />
                    </td>
                </tr>
            </tbody>
        </table>

        
    </body>
</html>
