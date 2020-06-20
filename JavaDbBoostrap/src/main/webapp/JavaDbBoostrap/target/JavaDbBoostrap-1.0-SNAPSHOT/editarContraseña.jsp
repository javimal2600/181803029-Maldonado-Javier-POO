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
            
        %>
        <div class="container">
            <form action="cambiarPassword.jsp" method="POST" class="form-control" style="width: 500px; height:400px;">
                <label for="c1">Introduzca Contraseña actual:</label>
                <input id="c1" type="password" name="password" class="form-control" required/>
                <label for="c2">Introduzca Contraseña nueva:</label>
                <input id="c2" type="password" name="password1" class="form-control" required/>
                <label for="c3">Confirme contraseña nueva:</label>
                <input id="c3" type="password" name="password2" class="form-control" required/>
                <input class="form-control" type="hidden" placeholder="Id" name="id" value="<%out.println(id);%>" required />
                <br></br>
                <input class="btn btn-success btn-block" type="submit" value="Modificar" />
            </form>
        </div>
        
        
    </body>
</html>
