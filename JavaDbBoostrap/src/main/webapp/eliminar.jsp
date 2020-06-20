<%-- 
    Document   : eliminar
    Created on : 19 jun. 2020, 14:33:15
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
            <p>¿Estás seguro de eliminar el usuario:<%=rs.getString("usuario")%>?</p>
            <a class="btn btn-danger" href="borrar.jsp?id_usuarios=<%= rs.getInt("id_usuarios")%>">Eliminar</a>  
            <%
                }
            %>  
            <a href="index.jsp" class="btn btn-primary" >Cancelar</a> <br></br>
        </div>

    </body>
</html>
