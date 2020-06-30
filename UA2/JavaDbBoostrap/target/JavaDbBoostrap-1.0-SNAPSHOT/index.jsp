<%-- 
    Document   : index
    Created on : 30/05/2020, 05:13:09 PM
    Author     : Pc
--%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.Usuario"%>
<%@page import="conexion.*"%>
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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JavaDB</title>
    </head>
    <body>
    </body>
    <%
        List<Usuario> usuario=new UsuarioBD().listadoUsuarios();
     %>
            <br><br> <div style="text-align:center">
            <table>
                <h3 style="text-align:center;color:black">TABLA: Usuarios</h3>
                                            
                    <a class="btn btn-primary btn-lg" href="formularioUsuario.jsp" role="button" >Agregar un nuevo usuario</a>
                    
                <table style="margin: 0 auto;" class="table">
                    <thead  class="thead-dark">
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Contraseña</th>
                        <th scope="col">Edad</th>
                        <th scope="col">Acciones</th>
                    </thead>
                    <%
                        for(Usuario usuario:usuarios){
                    %>
                    <tr>
                        <td scope="row"><%=Usuario.getId_Usuarios()%></td>
                        <td scope="row"><%=Usuario.getUsuario()%></td>
                        <td scope="row"><%=Usuario.getPassword()%></td>
                        
                        <td>
                            <a class="btn btn-warning btn-block" href="editarUsuario.jsp?id_usuarios=<%= rs.getInt("id_usuarios")%>"> Editar usuario</a>                   
                            <a class="btn btn-primary btn-block" href="editarContraseña.jsp?id_usuarios=<%= rs.getInt("id_usuarios")%>">Editar contraseña</a>
                            <a class="btn btn-danger btn-block" href="eliminar.jsp?id_usuarios=<%= rs.getInt("id_usuarios")%>"> Eliminar Usuario</a>
                            <a class="btn btn-danger btn-block" href="eliminar2.jsp?id_usuarios=<%= rs.getInt("id_usuarios")%>"> Eliminar Usuario(2)</a>
                        </td>  
                    </tr>
                    <%}%>
                </table>
        </div>  <br><br>
</html>



