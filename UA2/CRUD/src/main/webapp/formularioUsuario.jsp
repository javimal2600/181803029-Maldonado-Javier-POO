<%-- 
    Document   : formularioUsuario
    Created on : 18 jun 2020, 20:57:27
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Registro usuario</title>
    </head>
    <body>
        <div class="form-group">
            <h1>Agregar un nuevo usuario</h1>
            <form  action="agregarUsuario.jsp" method="POST" class="form-control">
                <div class="form-group">
                    <label>Nombre de usuario:</label>
                    <input type="text" placeholder="usuario" name="usuario" id="usuario" class="form-control" required/>
                </div >
                <div class="form-group">
                    <label>Contraseña:</label>
                    <input type="password" placeholder="password" name="password" id="password" class="form-control" required/>
                </div>
                <div class="form-group">
                    <label>Edad:</label>
                    <input type="text" placeholder="edad" name="edad" id="edad" class="form-control" required/>
                </div >
                <input type="submit" value="enviar" class="btn bg-primary btn-lg" />
                <a class="btn btn-primary" href="index.jsp" role="button">Cancelar</a>
            </form>
        </div>
    </body>
</html>