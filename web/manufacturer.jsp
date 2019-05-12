<%-- 
    Document   : manufacture
    Created on : 11/05/2019, 23:47:31
    Author     : Mulero
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.model.Manufacturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - Manufacturer</title>
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
            td{
              
            }
       </style>
        
    </head>
    <body>
        <%@include file="WEB-INF/header.jsp"%>
        <h2>Manufacturer</h2>

        <%
            try {
                ArrayList<Manufacturer> list = Manufacturer.getManufacturers();
        %> 
        <table id="customer" border="1">
            <tr>
                <th>id</th>
                <th>nome</th>
                <th>cidade/estado</th> 
                <th>email</th>
                <th>detalhes</th>
            </tr>
            <% for (Manufacturer m : list) {%>
            <tr>
                <td><%=m.getId()%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getCity()%> / <%=m.getState()%></td>
                <td><%=m.getEmail()%></td>
                <td><a href="manufacturerDetails.jsp?id=<%=m.getId()%>">detalhes</a></td>
            </tr>
            <%}%>
        </table>

        <% } catch (Exception e) {%>
        <h3 style="color: red"> <%=e.getMessage()%></h3>
        <h3 style="color: red"> <%=e.toString()%></h3>
        <% }%>
    </body>
</html>
