<%-- 
    Document   : editarUsuario
    Created on : 19 jun. 2020, 14:26:18
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
        <div class="container" >
            <h1>Modificar usuario</h1>
            <form  action="" method="POST" class="form-control" style="width: 500px; height:400px; ">
                    <label>ID:</label>
                    <input type="text" readonly="" class="form-control" value="<%=rs.getInt("id_usuarios")%>" />
                    <label>Nombre de usuario:</label>
                    <input type="text" name="usuario" class="form-control" value="<%=rs.getString("usuario")%>" required/>
                    <input type="submit" value="Guardar" class="btn bg-primary btn-lg"/>
                    <a href="index.jsp">Regresar</a>
                    <br></br>
                    <a href="index.jsp" >Volver al inicio<a/>
            </form>
         </div>
        <%}%>
    </body>
</html>
<%
    String nombre;
    nombre=request.getParameter("usuario");
    if(nombre!=null){
        ps=conexion.prepareStatement("UPDATE usuarios SET usuario='"+nombre+"' WHERE id_usuarios="+id);
        %>
        <div class="alert alert-success">¡Usuario modificado con exito! vaya al inicio</div>
        <%ps.executeUpdate();
    }
%>
