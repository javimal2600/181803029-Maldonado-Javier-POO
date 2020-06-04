<%-- 
    Document   : index
    Created on : 3/06/2020, 01:58:26 PM
    Author     : Javier García
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center" style="color:greenyellow;">VIDEOJUEGOS</h1>
        
        <%
            Connection conexion = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/videojuegos ", "root", "");
                stmt = conexion.createStatement();
                rs = stmt.executeQuery("Select * from juegos ");
            } catch (Exception e) {
                out.println("Error: " + e);
            }
        %>
    <div class="container">
        <table  class="table table-bordered" >
            <caption>Tabla de videojuegos Registrados en la base de datos</caption>
            <tr>
                <th class="text-center">Id</th>
                <th class="text-center">Nombre</th>
                <th class="text-center">Descripcion</th>
                <th class="text-center">Categoria(Id)</th>
                <th class="text-center">Fecha Lanzamiento</th>
                <th class="text-center">Precio</th>
            </tr>
                <% while(rs.next()){ %>
            <tr>
                <td class="text-center"><%out.println(rs.getInt("id_juego")); %></td>
                <td class="text-center"><%out.println(rs.getString("nombre")); %></td>
                <td class="text-center"><%out.println(rs.getString("descripcion")); %></td>
                <td class="text-center"><%out.println(rs.getInt("id_categoria")); %></td>
                <td class="text-center"><%out.println(rs.getDate("fecha_lanzamiento")); %></td>
                <td class="text-center"><%out.println("$"+rs.getDouble("precio")); %></td>
            </tr>
            <%}%>
        </table>
        
        <br></br>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/videojuegos ", "root", "");
                stmt = conexion.createStatement();
                rs = stmt.executeQuery("Select * from cat_categorias ");
            } catch (Exception e) {
                out.println("Error: " + e);
            }
        %>
        <table align="center" class="table table-bordered" >
                <caption>Tabla de categorias</caption>
            <tr>
                <th class="text-center">Id</th>
                <th class="text-center">Categorias</th>
            </tr>
                <% while(rs.next()){%>
            <tr>
                <td class="text-center"><%out.println(rs.getInt("id_categoria")); %></td>
                <td class="text-center"><%out.println(rs.getString("nombre")); %></td>
            </tr>
            <%}%>
        </table>
    </div>
    </body>
</html>
