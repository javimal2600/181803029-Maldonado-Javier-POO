<%-- 
    Document   : editarContraseña
    Created on : 19 jun. 2020, 14:29:01
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
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            PreparedStatement ps;
            int id = Integer.parseInt(request.getParameter("id_usuarios"));
            ps=conexion.prepareStatement("Select * from usuarios where id_usuarios=" + id);
            rs=ps.executeQuery();
            while (rs.next()) {
        %>
        <div class="container">
            <form action="" method="POST" class="form-control" style="width: 500px; height:400px;">
                <label>Introduzca Contraseña actual:</label>
                <input type="text" name="password" class="form-control" required/>
                <label>Introduzca Contraseña nueva:</label>
                <input type="text" name="password1" class="form-control" required/>
                <label>Confirme contraseña nueva:</label>
                <input type="text" name="password2" class="form-control" required/>
            </form>
        </div>
        <%}
        
        %>
        
    </body>
</html>
