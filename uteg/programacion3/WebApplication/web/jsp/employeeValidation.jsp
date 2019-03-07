<%-- 
    Document   : employeeValidation
    Created on : Mar 6, 2019, 8:52:25 PM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Validation</title>
    </head>
    <body>

        

         <table width = "100%" border = "1" align = "center">
            <tr bgcolor = "#949494">
               <th>Parameter Name</th>
               <th>Parameter Value</th>
            </tr>
            <%

               Enumeration paramNames = request.getParameterNames();
               while(paramNames.hasMoreElements()) {
                  String paramName = (String)paramNames.nextElement();
                  out.print("<tr><td>" + paramName + "</td>\n");
                  String paramValue = request.getParameter(paramName);
                  out.println("<td> " + paramValue + "</td></tr>\n");
               }
            %>
         </table>

    </body>
</html>
