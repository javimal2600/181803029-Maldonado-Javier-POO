<%-- 
    Document   : formularioUsuario.jsp
    Created on : 12/06/2020, 08:50:30 AM
    Author     : Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Crear un usuario</title>
    </head>
    <body>
        <div class="container" >
            <h1>Agregar un nuevo usuario</h1>
            <form  action="agregarUsuario.jsp" method="POST" class="form-control" style="width: 500px; height:400px; ">
                <div class="container">
                    <label>Nombre de usuario:</label>
                    <input type="text" name="usuario" id="usuario" class="form-control" required/>
                </div >
                <div class="container">
                    <label>Contraseña:</label>
                    <input type="password" name="password" id="password" class="form-control" required/>
                </div>
                <input type="submit" value="enviar" class="btn bg-primary btn-lg"/>
                <a href="index.jsp">Regresar</a>
            </form>
        </div>
    </body>
</html>


