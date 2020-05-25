<%-- 
    Document   : index
    Created on : 23 may. 2020, 17:00:33
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
        <h1>TEOREMA DE PITAGORAS</h1>
        <%
            if((request.getParameter("a")!=null && request.getParameter("b")!=null)){
                float a=Float.parseFloat(request.getParameter("a"));
                float b=Float.parseFloat(request.getParameter("b"));
                float c;
                c=(float)Math.sqrt((a*a)+(b*b));
                out.println("El valor de C es:"+c);
                }else if(request.getParameter("b")!=null && request.getParameter("c")!=null){
                    float b=Float.parseFloat(request.getParameter("b"));
                    float c=Float.parseFloat(request.getParameter("c"));
                    float a1;
                    a1=(float)Math.sqrt((c*c)-(b*b));
                    out.println("El valor de A es:"+a1);
                        }else if(request.getParameter("a")!=null && request.getParameter("c")!=null){
                            float a=Float.parseFloat(request.getParameter("a"));
                            float c=Float.parseFloat(request.getParameter("c"));
                            float b1; 
                            b1=(float)Math.sqrt((c*c)-(a*a));
            }else{%>
            <form>
                        <p>a</p><input type="number" name="a"/> <br></br>
                        <p>b</p><input type="number" name="b" /> <br></br>
                        <p>c</p><input type="number" name="c"/> <br></br>
                        <input type="submit" value="calcular"/>
                     <form/>       
            <%}%>     
    </body>
</html>
