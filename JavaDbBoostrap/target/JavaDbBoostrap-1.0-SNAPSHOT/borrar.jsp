<%-- 
    Document   : borrar
    Created on : 19 jun. 2020, 19:41:31
    Author     : Javier
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
        <%
            Connection conexion;
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            PreparedStatement ps;
            int id = Integer.parseInt(request.getParameter("id_usuarios"));
            ps=conexion.prepareStatement("DELETE from usuarios where id_usuarios=" + id);
            ps.executeUpdate();
            
        %>    
        <div class="alert alert-success">¡Usuario elminado con exito!</div>
        <br></br>
        <a href="index.jsp" class="btn btn-block">Volver al inicio</a>
    </body>
</html>
