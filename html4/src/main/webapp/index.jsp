<%-- 
    Document   : index
    Created on : 23 may. 2020, 18:03:18
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>PIRAMIDE DE NUMEROS</h1>
        <p>Introduce la dimension del triangulo</p>
        <%
            if(request.getParameter("numero")!=null){
            int numero=Integer.parseInt(request.getParameter("numero"));
            for(int i=1;i<=numero;i++){
                for(int j=0;j!=i;j++){
                out.print(j+1+" ");%>
                <br></br>
                <%}
                out.print("\n");
                }
            }else{%>
                    <form>
                        <input type="number" name="numero" required/>
                        <input type="submit" value="enviar"/>
                     <form/>    
                    <p>no haz ingresado un numero</p> 
        <%}%>
    </body>
</html>
