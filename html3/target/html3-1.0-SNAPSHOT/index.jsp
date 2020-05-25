<%-- 
    Document   : index
    Created on : 23 may. 2020, 18:02:28
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
        <h1>Horoscopos "El Javi"</h1>
        <%
            if(request.getParameter("dia")!=null && request.getParameter("mes")!=null){
                int dia=Integer.parseInt(request.getParameter("dia"));
                int mes=Integer.parseInt(request.getParameter("mes"));
                switch(mes){
                     case 1:
                //enero
                        if(dia>=21){
                            out.println("Acuario");
                        }else{
                            out.println("Capricornio");
                        }
                break;
                case 2:
                //febrero
                        if(dia>=20){
                            out.println("Piscis");
                        }else{
                            out.println("Acuario");
                        }
                break;
            case 3:
                //marzo
                        if(dia>=21){
                            out.println("Aries");
                        }else{
                            out.println("Piscis");    
                        }
                break;
            case 4:
                //abril
                        if(dia>=21){
                            out.println("Tauro");
                        }else{
                            out.println("Aries");
                        }
                break;
            case 5:
                //mayo
                        if(dia>=22){
                            out.println("Geminis");
                        }else{
                            out.println("Tauro");
                        }
                break;
            case 6:
                //junio
                       if(dia>=22){
                           out.println("Cancer");
                        }else{
                           out.println("Geminis");
                       }
                break;
            case 7:
                //julio
                        if(dia>=24){
                            out.println("Leo");
                        }else {
                            out.println("Cancer");
                        }
                break;
            case 8:
                //agosto
                        if(dia>=24){
                            out.println("Virgo");
                        }else {
                            out.println("Leo");    
                        }
                break;
            case 9:
                //septiembre
                 if(dia>=24){
                     out.println("Libra");
                 }else{
                     out.println("Virgo");
                 }
                break;
            case 10:
                //octubre
                    if(dia>=24){
                        out.println("Escorpio");
                    }else {
                        out.println("Libra");
                    }
                break;
            case 11:
                //noviembre
                if(dia>=23){
                    out.println("Sagitario");
                }else {
                    out.println("Escorpio");
                }
                break;
            case 12:
                //diciembre
                if(dia>=22){
                    out.println("Capricornio");
                }else {
                    out.println("Sagitario");
                }
                break;
                }
            }else{ %>
            <form>
                <p>Introduce los siguientes datos:</p>
                <p>dia:</p><input type="number" name="dia" required> <br></br>
                <p>mes:</p><input type="number" name="mes" required> <br></br>
                <input type="submit" value="enviar">
            </form>
            <%}
        %>
    </body>
</html>
