

<%@page import="control.GoodsManager, java.util.*, entity.Goods" %>
<%@page contentType="text/html"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GOODS&'PRICES</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Welcome to the shop!</h1>



        <table border="1" width="1" cellspacing="1">
            <thead>
                <tr>
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
                    <td><%= product.getGoodId()%></td>
                    <td><%= product.getName()%> </td>
                    <td><%= product.getPrice()%> </td>
                </tr>
                <%
                    }
                %>
            </tbody> 
        </table>
        <table border="0">
            <tbody>
                <tr>
                    <td><form action="add.jsp">
                            <input type="submit" value="Add product" name="add" />
                        </form>
                    </td>
                    <td><form action="select.jsp">
                            <input type="submit" value="Update/Delete" name="updateDelete" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>


