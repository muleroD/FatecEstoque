<%-- 
    Document   : index
    Created on : 11/05/2019, 17:23:21
    Author     : Mulero
--%>

<%@page import="br.com.fatecpg.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - Customer</title>
        <style>
            h2 {
                text-align: center;
                font-family: sans-serif;
                color:green;
            }
            table#customer{
                border-collapse: collapse;
                align-self: center;
                margin-left: 20%;
                alignment-adjust: auto;
                width:50%;
                
            }
       </style>
    </head>
    <body>
        <%@include file="WEB-INF/header.jsp" %>
        <h2>Customers</h2>

        <%
            try {
                ArrayList<Customer> list = Customer.getCustomers();
        %> 
        <table id="customer" border="1">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>DETAILS</th>
            </tr>
            <% for (Customer c : list) {%>
            <tr>
                <td><%=c.getId()%></td>
                <td><%=c.getName()%></td>
                <td><%=c.getEmail()%></td>
                <td><a href="customerDetails.jsp?id=<%=c.getId()%>">View</a></td>
            </tr>
            <%}%>
        </table>

        <% } catch (Exception e) {%>
        <h3 style="color: red"> <%=e.getMessage()%></h3>
        <h3 style="color: red"> <%=e.toString()%></h3>
        <% }%>
    </body>
</html>
