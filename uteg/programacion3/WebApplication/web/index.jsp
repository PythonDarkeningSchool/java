<%-- 
    Document   : index
    Created on : Mar 5, 2019, 7:44:33 PM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 1</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            String nombre = "Jose", carrera = "Ingeneria en computacion";
            double estatura = 1.82;
            out.print("Cual es tu nombre?<br>");
            out.print(nombre + "<br>");
            out.print("Cual es tu estatura?<br>");
            out.print(estatura + "<br>");
            out.print("Que carrera estudias?<br>");
            out.print(nombre);

        %>
    </body>
</html>
