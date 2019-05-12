<%-- 
    Document   : detailsClient
    Created on : 11/05/2019, 17:25:12
    Author     : Mulero
--%>

<%@page import="br.com.fatecpg.model.PurchaseOrder"%>
<%@page import="br.com.fatecpg.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - Customers Details</title>
    </head>
    <body>
        <h1>Java DB</h1>
        <h2>Customers Details</h2>
        <% try {
                int id = Integer.parseInt(request.getParameter("id"));
                Customer c = Customer.getCustomerById(id);
                if (c != null) {%>

        <h3>Id: <%=c.getId()%></h3>
        <h3>Name: <%=c.getName()%></h3>
        <hr/>

        <table border="1">
            <tr>
                <th>ORDER NUMBER</th>
                <th>SALES DATE</th>
                <th>SHIPPING COST</th>
                <th>QUANTITY</th>
            </tr>

            <% for (PurchaseOrder order : PurchaseOrder.getOrderByCustomerID(id)) {%>
            <tr>
                <td><%=order.getId()%></td>
                <td><%=order.getSalesDate()%></td>
                <td><%=order.getShippingCost()%></td>
                <td><%=order.getQuantity()%></td>
            </tr>
            <%} %>
        </table>

        <% } else {%>
        <h3 style="color: red"> Customer (<%=id%>) not found</h3>
        <% } %>

        <%} catch (Exception e) {%>
        <h3 style="color: red"><%=e.getMessage()%></h3>
        <h3 style="color: red"><%=e.toString()%></h3>
        <% }%>
    </body>
</html>
