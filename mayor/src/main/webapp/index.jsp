<%-- 
    Document   : index
    Created on : 27/05/2020, 08:12:30 AM
    Author     : Javier García
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Numero mayor</h1>
        <form action="solicita.jsp">
            <p>Ingrese el numero de numeros que desee ingresar:</p>
            <input type="number" name="numero" required />
            <input type="submit" value="enviar" />
        </form>
        
        
    </body>
</html>
