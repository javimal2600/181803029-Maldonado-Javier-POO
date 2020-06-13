<%-- 
    Document   : index
    Created on : 30/05/2020, 05:13:09 PM
    Author     : Pc
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
            table, th, td {
            border: 1px solid black;
            }
            tr{
                font-size: 18px;
                font-family: Arial;
            }
            h1, h3{
                font-size: 25px;
                font-family: Arial;
            }
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JavaDB</title>
    </head>
    <body>
    </body>
    <%
        Connection conexion = null;
        Statement stmt = null;
        ResultSet rs = null;
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.createStatement();
            rs = stmt.executeQuery("Select * from usuarios");
            %><br><br> <div style="text-align:center">
            <table>
                <h3 style="text-align:center;color:black">TABLA: Usuarios</h3>
                                    <tr>
                        <td colspan="3"><h2>usuarios:</h2></td>
                        <td><a class="btn btn-primary" href="formularioUsuario.jsp" role="button">Agregar un nuevo usuario</a></td>
                    </tr>
                <table style="margin: 0 auto;" class="table">
                    <thead  class="thead-dark">
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Contraseña</th>
                    </thead>
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td scope="row"><%= rs.getInt("id_usuarios")%></td>
                        <td scope="row"><%= rs.getString("usuario")%></td>
                        <td scope="row"><%= rs.getString("password")%></td>
                    </tr>
                    <%}%>
                </table>
        </div>  <br><br>
</html>



