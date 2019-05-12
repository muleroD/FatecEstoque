<%-- 
    Document   : home
    Created on : 11/05/2019, 23:44:53
    Author     : Mulero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fatec - Estoque JDBC</title>
        <style type="text/css">
            h2 {
                text-align: center;
                font-family: sans-serif;
                color:green;
            }
            h3 {
                text-align: center;
                font-family: sans-serif;
            }
            table#menu{
                width:100%;
                background-color: #cccccc;
            }
        </style>
        
    </head>
    <body>
       
        <%@include file="WEB-INF/header.jsp"%>
        <h2>Home</h2>
        <br/><br/><br/>
        <h3>Bem- Vindo</h3>
        <h3>Aqui você tem a lista de seus clientes e fornecedores</h3>
        <hr/> <br>
        <table id="menu">
            <tr>
                <td><h4><a href="customer.jsp">Customer</a></h4></td>
                <td> <h4><a href="manufacturer.jsp">Manufacturer</a></h4></td>
            </tr>
        </table>
    </body>
</html>
