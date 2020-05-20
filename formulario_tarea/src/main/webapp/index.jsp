<%-- 
    Document   : index
    Created on : 20/05/2020, 11:10:18 AM
    Author     : Javier García
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarea</title>
        
        <script>
            function numerosucesion(){
            num1 = document.getElementById("num1").value;
            for(var numero=0;numero<=num1;numero++){
                document.write("numero: "+numero+"\n");
            }
        }
        </script>
    </head>
    <body>
        <h1>Mi formulario</h1>
        <p>Introduce un numero</p>
        <form method="get">
            <input id="num1" type="number">
            <input type="submit" value="enviar" onclick="numerosucesion()"> 
        </form>
    </body>
</html>
