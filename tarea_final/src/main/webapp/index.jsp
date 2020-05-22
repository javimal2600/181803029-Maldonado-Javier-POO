<%-- 
    Document   : index
    Created on : 22/05/2020, 08:33:52 AM
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
        <h1>programa que debio ser, (SIN TRY, SIN JAVASCRIPT,SIN  PROBLEMAS DE GLASFISH )</h1>
        
            <%
                if(request.getParameter("numero")!=null && request.getParameter("numero")!=""){%>
                   <h1>El ciclo del valor ingresado es:<h1/> 
                       <% int numero=Integer.parseInt(request.getParameter("numero"));
                    for(int i=0;i<=numero;i++){
                        out.println(i+"-");
                    }%>
                    <form>
                    <input type="hidden" name="numero" value="" />
                    <input type="submit" value="regresar"/>
                    <form/>    
                <%}else{%>
                <form>
                    <input type="number" name="numero" required/>
                    <input type="submit" value="enviar"/>
                <form/>    
                    <h3>no haz ingresado un numero</h3>    
                     <%
                }
            %>
    </body>
</html>
