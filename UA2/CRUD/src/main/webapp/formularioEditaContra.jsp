<%-- 
    Document   : formularioEditaContra
    Created on : 19 jun 2020, 19:30:44
    Author     : izelo
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
            stmt = conexion.prepareStatement("SELECT * FROM usuarios WHERE id_usuarios=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            usuario = rs.getString("usuario");
            passAtual = rs.getString("password");
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Actualizacion de contraseña</title>
    </head>
    <body>
        <form  action="editaContraseña.jsp" method="POST" class="form-group">
            <div class="form-group">
                <h1>Actualiza la contraseña</h1>
                <input type="hidden" name="id_usuario" value="<%=id%>"/>
                <input type="hidden" name="passdb" value="<%=passAtual%>"/>
            </div>
            <div class="form-group">
                <label>Teclee su antigua contraseña:</label>
                <input type="password" placeholder="contraseña actual" name="passworda" required/>
                <label>Nueva contraseña:</label>
                <input type="password" placeholder="Nueva contraseña" name="password" required/>
                <label>Teclee una vez mas su nueva contraseña:</label>
                <input type="password" placeholder="Confirma contraseña" name="passwordc" required/>
            </div >
            <input type="submit" value="Actualizar" Class="btn btn-sm"/>
            <a class="btn " href="index.jsp" role="button">Cancelar</a>
        </form>
    </div>
</body>
</html>
