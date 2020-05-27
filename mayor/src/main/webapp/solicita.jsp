<%-- 
    Document   : solicita
    Created on : 27/05/2020, 08:27:18 AM
    Author     : Javier García
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int numero=Integer.parseInt(request.getParameter("numero"));
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresa los numeros</title>
    </head>
    <body>
        <h1>Ingresa un total de: <%out.println(numero);%> numeros </h1>
        <form>
            <% for(int i=0;i<numero;i++){%>
            <input type="number" name="numero<%=i%>" required/> <br></br>
            <% 
             }
            %>
            <input type="hidden" value="<% out.print(numero);%>" name="numero"/>
            <input type="submit" value="envianding dato"/>
        </form>
            <%
                
            %>
            
    </body>
</html>
