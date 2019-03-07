<%-- 
    Document   : index
    Created on : Mar 5, 2019, 7:44:33 PM
    Author     : hiperezr
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.lang.Math, java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 1</title>
    </head>
    <body>
        
      <form action = "index.jsp" method = "GET">
         First Name: <input type = "text" name = "first_name">
         <br>
         Last Name: <input type = "text" name = "last_name" />
         <input type = "submit" value = "f" />
      </form>
        
      <h1>Using POST Method to Read Form Data</h1>
      
      <ul>
         <li><p><b>First Name:</b>
            <%= request.getParameter("first_name")%>
         </p></li>
         <li><p><b>Last  Name:</b>
            <%= request.getParameter("last_name")%>
         </p></li>
      </ul>
         
      <form action = "test.jsp" method = "POST" target = "_blank">
         <input type = "checkbox" name = "maths" checked = "checked" /> Maths
         <input type = "checkbox" name = "physics"  /> Physics
         <input type = "checkbox" name = "chemistry" checked = "checked" /> Chemistry
         <input type = "submit" value = "Select Subject" />
      </form>
         
      <ul>
         <li><p><b>Maths Flag:</b>
            <%= request.getParameter("maths")%>
         </p></li>
         <li><p><b>Physics Flag:</b>
            <%= request.getParameter("physics")%>
         </p></li>
         <li><p><b>Chemistry Flag:</b>
            <%= request.getParameter("chemistry")%>
         </p></li>
      </ul>
         

        
        <h1>Practica #1</h1>

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
        
        <h2>Practica #2</h2>
        <%
            int a= -2, b=1, c= -1;
            double C = Math.pow(a, 2) + Math.pow(b, 2);
            int suma=a+b+c, resta = a-b-c, multiplicacion = a*b*c;
            double teoremaPitagoras = Math.pow(a, 2) + Math.pow(b, 2); 
            out.print(String.format("La suma de a+b+c es: %d<br>", suma));
            out.print(String.format("La resta de a-b-c es: %d<br>", resta));
            out.print(String.format("La multiplicacion de a*b*c es: %d<br>", multiplicacion));
            //out.print(String.format("El teorema de pitagoras es: %.2f", C));
            out.print(String.format("El teorema de pitagoras es: %.2f", Math.sqrt(C)));
        %>
    </body>
</html>
