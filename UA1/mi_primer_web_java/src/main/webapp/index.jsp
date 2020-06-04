<%-- 
    Document   : index
    Created on : 20/05/2020, 08:51:02 AM
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
        <h1> numeracion     </h1><br>
        <%
            for(int i=0; i<10;i++){
                System.out.println("numero:"+i);
                out.println(i+"\n");
            }
        %>
    </body>
</html>
