<%-- 
    Document   : test
    Created on : Mar 6, 2019, 9:23:24 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.lang.Math, java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Test !</h1>
        
                  <h2>HTTP Header Request Example</h2>
         <table width = "100%" border = "1" align = "center">
            <tr bgcolor = "#949494">
               <th>Param Name</th>
               <th>Param Value(s)</th>
            </tr>
            <%
               Enumeration paramNames = request.getParameterNames();
               while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  out.print("<tr><td>" + paramName + "</td>\n");
                  String paramValue = request.getHeader(paramName);
                  out.println("<td> " + paramValue + "</td></tr>\n");
               }
            %>
         </table>
         
    </body>
</html>
