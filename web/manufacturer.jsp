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
    </head>
    <body>
        <h1><a href="home.jsp">Java DB</a></h1>
        <h2>Manufacturer</h2>

        <%
            try {
                ArrayList<Manufacturer> list = Manufacturer.getManufacturers();
        %> 
        <table border="1">
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
