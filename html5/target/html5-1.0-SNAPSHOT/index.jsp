<%-- 
    Document   : index
    Created on : 25 may. 2020, 16:27:33
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
        <h1>Numeros ascendentes</h1>
        <% if(request.getParameter("total")!=null){
            int arreglo[]=new int[30];
            int i,j,aux;
            int total=Integer.parseInt(request.getParameter("total"));
            for( i=0;i<total;i++){%>
            <form>
                <input type="number" name="<%=i%>" required>
            <% 
            }
        }else{%>
            
        <%}%>
            <input type="number" name="total" required>
            <input type="submit" value="enviar">
             </form>
    </body>
</html>
