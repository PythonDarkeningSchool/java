<%-- 
    Document   : employee_form
    Created on : Mar 7, 2019, 12:58:56 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.util.*"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Get params</title>
  </head>
 
  <body>
      
    <!-- Table -->
    <table class="table table-hover">
        <!-- Table head -->
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Parameter name</th>
                <th scope="col">Parameter value</th>
                <th scope="col">Status</th>
                <th scope="col">Qualification</th>
            </tr>
        </thead>
        <!-- Table body-->
        <tbody>
            <%
                int count =1, qualification = 0;
                Enumeration paramNames = request.getParameterNames();
                while(paramNames.hasMoreElements()) {
                   String paramName = (String)paramNames.nextElement();
                   String paramValue = request.getParameter(paramName);
                   out.print(String.format("<tr>"
                           + "<th scope=\"row\">%d</th>"
                           + "<td>%s</td>"
                           + "<td>%s</td>", count, paramName, paramValue));
                    if(paramName.equals("question_1")){
                        if(paramValue.equals("yes")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_2")){
                        if(paramValue.equals("yes")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_3")){
                        if(paramValue.equals("yes")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_4")){
                        if(paramValue.equals("float")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_5")){
                        if(paramValue.equals("java")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_6")){
                        if(paramValue.equals("yes")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_7")){
                        if(paramValue.equals("yes")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_8")){
                        if(paramValue.equals("math")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_9")){
                        if(paramValue.equals("yes")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    else if(paramName.equals("question_10")){
                        if(paramValue.equals("yes")){
                            out.print(String.format("<td>OK</td>"));
                            qualification ++;
                            out.print(String.format("<td>+%d</td>", qualification));
                        }
                        else{
                            out.print(String.format("<td>BAD</td>"));
                            out.print(String.format("<td>-</td>"));
                        }
                    }
                    count ++;
                }
            %>
      </tbody>
    </table>
      
    <button type="button" class="btn btn-warning" onclick="self.close()">Close this window</button>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>