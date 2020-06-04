<%-- 
    Document   : index
    Created on : 23 may. 2020, 17:36:57
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
        <h1>REGLA DE TRES</h1>
        <% 
           if(request.getParameter("referencia")!=null && request.getParameter("magnitud")!=null && request.getParameter("calcular")!=null){
           float a=Float.parseFloat(request.getParameter("referencia"));
           float b=Float.parseFloat(request.getParameter("magnitud"));
           float c=Float.parseFloat(request.getParameter("calcular"));
           float x=((b*c)/a);
           out.println("Resultado:"+x);
           }
           else{%>
               <form>
               <p>Valor de referencia:</p> <input type="number" name="referencia" required/>
               <p>Valor de magnitud:</p> <input type="number" name="magnitud" required/>
               <p>Valor que desea calcular:</p> <input type="number" name="calcular" required/><br><br>
               <input type="submit" value="enviar"/>
               </form>
           <%}
        %>
    </body>
</html>
