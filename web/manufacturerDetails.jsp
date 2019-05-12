<%-- 
    Document   : manufacturerDetails
    Created on : 11/05/2019, 23:48:15
    Author     : Mulero
--%>

<%@page import="br.com.fatecpg.model.Product"%>
<%@page import="br.com.fatecpg.model.Manufacturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - Customers Details</title>
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
            h3{
               text-align: center;
               font-family: sans-serif;
               
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
        <%@include file="WEB-INF/header.jsp"%>
        <h2>Manufacturer Details</h2>

        <% try {
                int id = Integer.parseInt(request.getParameter("id"));
                Manufacturer m = Manufacturer.getManufacturerById(id);
                if (m != null) {%>

        <h3>Id: <%=m.getId()%></h3>
        <h3>Name: <%=m.getName()%></h3>
        <hr/>  <br>

        <table id="customer" border="1">
            <tr>
                <th>id</th>
                <th>preço</th>
                <th>descrição</th>
                <th>disponivel</th>
            </tr>

            <% for (Product product : Product.getProductByManufacturerID(id)) {%>
            <tr>
                <td><%=product.getId()%></td>
                <td>R$ <%=product.getPurchaseCost()%></td>
                <td><%=product.getDescription()%></td>
                <%if (product.getAvailable().equals("TRUE")) {%>
                <td>sim</td>
                <%} else {%>
                <td>não</td>
                <%}%>
            </tr>
            <%} %>
        </table>

        <% } else {%>
        <h3 style="color: red"> Manufacturer (<%=id%>) not found</h3>
        <% } %>

        <%} catch (Exception e) {%>
        <h3 style="color: red"><%=e.getMessage()%></h3>
        <h3 style="color: red"><%=e.toString()%></h3>
        <% }%>
    </body>
</html>
