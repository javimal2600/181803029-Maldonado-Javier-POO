<%-- 
    Document   : index
    Created on : 22 may. 2020, 17:04:18
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Javier</title>
    </head>
    <body>
        <h1>HTLM</h1>
        <p>Parrafo de ejemplo:3</p>
        <h1>Estilos y formatos para texto<h1/>
        <h1>Título del escrito</h1>
        <p style="color:red">Esto es un párrafo de color rojo.</p> 
        <h2>Subtítulo del escrito</h2>
        <p>otro <b>ejemplo</b> de texto</p>
        <h3>Tercer nivel del escrito</h3>
        <p><em>texto en cursiva</em> </p>
        <p><big>un texto mas grande</big></p>
        <p><small>un texto mas pequeño</small></p>
        <center>
            texto centrado
        </center>
        <h1>Ejemplo de imagen</h1>
        <img src="algo_anda_mal.jpg">
        
        <p>Ejemplo de hipervinculo</p>
        <a href="https://www.youtube.com/watch?v=nHYSIMbo1yQ">meme</a> 
        
        <p><b>Ejemplo de una tabla</b></p>
        <table border="1">
        <tr>
            <td>atributo1</td>
            <td>atributo2</td>
            <td>atributo3</td>
        </tr>
        <tr>
            <td>dato1</td>
            <td>dato2</td>
            <td>dato3</td>
        </tr>   
        </table>  
        
        <p><b>Ejemplo de una lista</b></p>
        <ul>
            <li>Elemento de la lista padre</li>
            <li>
                <ul>
                    <li>Elemento de la lista hija</li>
                    <li>Elemento de la lista hija</li>
                    <ul>
                        </li>
                        <li>Elemento de la lista padre</li>
                        <li>Elemento de la lista padre</li>
                    </ul>
                    <h1> EJEMPLOS BLOQUES</h1>
                    <p>Quien tiene un amigo tiene un tesoro.</p>
                    <p>Amigo en la adversidad, es amigo de verdad.</p>
                    <hr>
                    <p>Cuando marzo mayea, mayo marcea.</p>
                    <p>La primavera la sangre altera.</p>
                    <p><b>/PRE</b></p>
                    <pre>País    Continente  Población (2013)
                         España    Europa         47 millones
                         India      Asia        1250 millones</pre>
                    <p>País    Continente  Población (2013)
                        España    Europa         47 millones
                        India      Asia        1250 millones</p>
                    <p>País    Continente  Población (2013)</p>
                    <p>España    Europa         47 millones</p>
                    <p>India      Asia        1250 millones</p>
                    <p><b>blockquote</b></p>
                    <p>Plan de Instrucción Pública de J. Pidal, año 1845. Exposición de motivos</p>
                    <blockquote>
                        <p>Antiguamente eran las universidades independientes entre sí, y hasta del Gobierno mismo: cada cual tenía su régimen, sus estudios, sus métodos y aun sus pretensiones distintas: no sólo disponían arbitrariamente de sus fondos, sino que hasta era también arbitraria en ellas la enseñanza. Ya desde fines del siglo pasado trató el Gobierno de poner diques a semejante anarquía, que, tras del desconcierto general de todas las ciencias, mantenia a éstas en atraso lastimoso, perpetuando rancias ideas, doctrinas desacreditadas y perjudiciales preocupaciones.</p>
                    </blockquote>
                    
                    <h1>FORMULARIO</h1>
                    <form method="post">
                        <input type="number" name="dato1"/> <br></br>
                         <input type="text" name="dato2"/> <br></br>
                         <input type="search" name="dato3"/> <br></br> 
                         <input type="tel" name="dato4"/> <br></br>
                         <input type="url" name="dato5"/> <br></br>
                         <input type="email"   name="dato6"/> <br></br>
                         <input type="password" name="dato7"/> <br></br>
                         <input type="date" name="dato8"/> <br></br>
                         <input type="color" name="dato9"/> <br></br>
                         <input type="submit" name="dato10"/> <br></br>
                         <input type="reset" name="dato11"/> <br></br>
                         <input type="button" name="dato12"/> <br></br>
                         
                         <p><b>SELECT</b></p>
                         <p>

                             Deporte favorito:

                             <select name="deporte">
                                 <option>Fútbol</option>
                                 <option>Críquet</option>
                                 <option>Básquetbol</option>
                                 <option>Hockey</option>
                                 <option>Tenis</option>
                             </select>
                             <input type="submit" value="Enviar">
                         </p>
                         <p><b>TEXTAREA</b></p>
                         <p>Mensaje para el autor:</p>
                         <p><textarea name="mensaje" placeholder="Comparte tu opinión con el autor!"></textarea></p>
                         <p><input type="submit" value="Enviar mensaje"></p>
                    </form>
    </body>
</html>
