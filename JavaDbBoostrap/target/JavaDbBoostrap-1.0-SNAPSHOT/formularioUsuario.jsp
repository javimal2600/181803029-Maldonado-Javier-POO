<%-- 
    Document   : formularioUsuario.jsp
    Created on : 12/06/2020, 08:50:30 AM
    Author     : Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Crear un usuario</title>
    </head>
    <body>
        <div class="form-group">
            <h1>Agregar un nuevo usuario</h1>
            <form  action="agregarUsuario.jsp" method="POST">
                <div class="form-group">
                    <label>Nombre de usuario:</label>
                    <input type="text" name="usuario" id="usuario" required/>
                </div >
                <div class="form-group">
                    <label>Contraseña:</label>
                    <input type="password" name="password" id="password" required/>
                </div>
                <input type="submit" value="enviar"/>
            </form>
        </div>
    </body>
</html>


