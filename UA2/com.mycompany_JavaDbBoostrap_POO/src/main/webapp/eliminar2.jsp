<%-- 
    Document   : eliminar2
    Created on : 24 jun. 2020, 18:06:54
    Author     : Javier
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Connection conexion;
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            PreparedStatement ps;
            int id = Integer.parseInt(request.getParameter("id_usuarios"));
            ps=conexion.prepareStatement("DELETE from usuarios where id_usuarios=" + id);
            ps.executeUpdate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
