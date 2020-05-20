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
            //SOLO NUMEROS
            function solonumeros(e){
                key= e.keyCode || e.which;
                teclado = String.fromCharCode(key);
                numeros="0123456789";
                especiales="8-37-38-46"; //array
                teclado_especial=false;
                for(var i in especiales){
                    if(key===especiales[i]){
                        teclado_especial=true;
                    }
                }
                if(numeros.indexOf(teclado)===-1 && !teclado_especial){
                    return false;
                }
                
            } 
        </script>
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
            <input id="num1" type="text" name="numero" onkeypress="return solonumeros(event)" onpaste="return false">
            <input type="submit" value="enviar" onclick="numerosucesion()"> 
        </form>
    </body>
</html>
