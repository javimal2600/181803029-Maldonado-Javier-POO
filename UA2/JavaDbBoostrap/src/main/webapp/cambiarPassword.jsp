<%-- 
    Document   : cambiarPassword
    Created on : 19 jun. 2020, 23:09:19
    Author     : Javier
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if ((request.getParameter("passdb").equals(request.getParameter("passworda"))) && (request.getParameter("password").equals(request.getParameter("passwordc")))) {
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("UPDATE usuario SET password=MD5(?) WHERE id_usuario=?");
            stmt.setString(1, request.getParameter("password"));
            stmt.setInt(2, Integer.parseInt(request.getParameter("id_usuarios")));
            stmt.executeUpdate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Actualizar usuario</title>
    </head>
    <body>
        <div class="alert alert-success">¡Contraseña modificada con exito! vaya al inicio</div>
        <br></br>
        <a class="btn btn-primary" href="index.jsp" role="button">Volver al inicio</a>
        <%
                } catch (SQLException e) {
                    out.print(e.getMessage());
                }
            }%><%else {%>
            <div class="alert alert-danger">Ocurrio un error al modificar la contraseña</div> <br></br>
        <a class="btn btn-primary" href="index.jsp" >Volver al inicio</a> <br></br>
        <a class="btn btn-primary" href="editarContraseña.jsp">Intentar de nuevo</a> <br></br>
    </body>
</html
<%}%>