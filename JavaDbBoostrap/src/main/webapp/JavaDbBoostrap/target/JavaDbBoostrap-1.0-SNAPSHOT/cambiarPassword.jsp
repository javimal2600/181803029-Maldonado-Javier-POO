<%-- 
    Document   : cambiarPassword
    Created on : 19 jun. 2020, 23:09:19
    Author     : Javier
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int id;
    id=Integer.parseInt(request.getParameter("id_usuarios"));
    Connection conexion=null;  
    PreparedStatement stmt=null;
    ResultSet rs = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt=conexion.prepareStatement("UPDATE usuarios Set password=md5(?) WHERE id_usuarios="+id);
        stmt.setString(1,request.getParameter("password"));
        switch(stmt.executeUpdate()){
            case 0:%>
            <p style="background-color: red;">No puede ser editada la contraseña</p>
            <%break;
            case 1:%>
            <p style="background-color: greenyellow;">Contraseña editada con exito </p>
            <%break;
        }
        
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <a class="btn btn-success btn-block">Volver al inicio</a>
    </body>
</html>
<%}
    catch (SQLException e){
    out.print(e.getMessage());
}
%>
