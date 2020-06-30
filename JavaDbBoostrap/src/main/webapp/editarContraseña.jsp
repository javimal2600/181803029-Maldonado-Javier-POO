<%-- 
    Document   : editarContraseña
    Created on : 19 jun. 2020, 14:29:01
    Author     : Javier
--%>

<%@page import="java.sql.*"%>
<%
    String usuario = "";
    String passAtual = "";
    int id = 0;
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuarios=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            usuario = rs.getString("usuario");
            passAtual = rs.getString("password");
            //out.println(passAtual);
        } catch (Exception e) {
            out.println(e.getMessage());
        }

    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Actualizacion de contraseña</title>
    </head>
    <body>
        <div Class="container">
        <form  action="cambiarPassword.jsp" class="form-control" method="POST" style="width: 500px; height:400px; ">
            <div class="form-group">
                <h1>Actualiza la contraseña</h1>
                <input type="hidden" name="id_usuario" value="<%=id%>"/>
                <input type="hidden" name="passdb" value="<%=passAtual%>"/>
            </div>
            <div class="form-group">
                <label>Usuario:</label>
                <h2><%out.println(usuario);%></h2>
            </div>
            <div class="form-group">
                <input type="hidden" name="id_usuario" value="<%=id%>"/>
            </div>
            <div class="form-group">
                <label>Teclee su antigua contraseña:</label>
                <input type="password" placeholder="contraseña" name="passworda" required/> <br></br>
                <label>Nueva contraseña:</label>
                <input type="password" placeholder="contraseña" name="password" required/> <br></br>
                <label>Confirme su contraseña:</label>
                <input type="password" placeholder="contraseña" name="passwordc" required/> <br></br>
            </div >
            <input class="btn bg-primary btn-lg btn-block" type="submit" value="Actualizar"/>
            <a class="btn btn-block" href="index.jsp" >Cancelar</a>
        </form>
    </div>
</body>
</html>

