<%-- 
    Document   : detailsClient
    Created on : 11/05/2019, 17:25:12
    Author     : Mulero
--%>

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
                if (c != null) { %>
        <h3>Id: </h3>
        <h3>Name: </h3>
        <hr/>
        <% } else {%>
        <h3 style="color: red"> Customer (<%=id%>) not found</h3>

        <% }        %>

        <%} catch (Exception e) {%>
        <h3 style="color: red"> <%=e.getMessage()%></h3>
        <% }%>


        <table>
            <tr>
                <th></th>
            </tr>
        </table>
    </body>
</html>
