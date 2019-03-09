<%-- 
    Document   : employee_form
    Created on : Mar 7, 2019, 12:58:56 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

    <div class="container">
        <p>
          <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseResults" aria-expanded="false" aria-controls="collapseExample">
            Details
          </button>
        </p>
        <div class="collapse" id="collapseResults">
            <div class="card card-body">
                <!-- Show the table -->
                <p>Type something in the input field to search the table</p>  
                <input class="form-control" id="myInput" type="text" placeholder="Search..">
                <br>

                <!-- Table -->
                <table class="table table-bordered table-striped">
                <!-- Table head -->
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Param name</th>
                        <th>Param value</th>
                        <th>Status</th>
                        <th>Qualification</th>
                    </tr>
                </thead>

                <!-- Table body -->
                <tbody id="myTable">
                    <%
                        // Declaring variables
                        int count =1, qualification = 0;
                        Enumeration paramNames = request.getParameterNames();

                       // Initializing dictionary
                       Dictionary exam = new Hashtable(); 

                       List<String> questions = Arrays.asList(
                               "question_1", "question_2", "question_3", "question_4",
                               "question_5", "question_6", "question_7", "question_8",
                               "question_9", "question_10");
                       List<String> answers = Arrays.asList(
                               "yes", "yes", "yes", "float", "java", "yes", "yes", "math",
                               "yes", "yes");           

                       // Inseting values into dictionary
                       for(int i=0; i < answers.size(); i++){
                           inner:
                           for(String key: questions){
                               if(exam.get(key) == null){
                                   exam.put(key, answers.get(i));
                                   break inner;
                               }
                           }
                       }

                       // Creating the table content (table body)
                       while(paramNames.hasMoreElements()) {
                           String paramName = (String)paramNames.nextElement();
                           String paramValue = request.getParameter(paramName);
                           out.print(String.format("<tr>"
                                   + "<th scope=\"row\">%d</th>"
                                   + "<td>%s</td>"
                                   + "<td>%s</td>", count, paramName, paramValue));

                           // Comparing the current value with the expected one
                           if(exam.get(paramName).equals(paramValue)){
                                qualification ++;
                                out.print(String.format("<td>OK</td>"));
                                out.print(String.format("<td>+%d</td>", qualification));
                           }
                           else{
                                out.print(String.format("<td>BAD</td>"));
                                out.print(String.format("<td>-</td>"));
                           }
                            // Increase the counter
                            count ++;
                        }
                    %>
                </tbody>
              </table>        
            </div>
        </div>
    </div>

    <%!
        public String getAlert(String alertType, String alertMessage){
            String alert = " ";
            alert += "<div class=\"container\">";
            alert += String.format("<div class=\"alert %s alert-dismissible fade in\">", alertType);
            alert += "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>";
            alert += String.format("<strong>%s</strong>", alertMessage);
            alert += "</div>";
            alert += "</div>";
            return alert;
        }
    %>

    <!-- Badges -->
    <%
        String goodQualificationBadge = "<div class=\"container\">";
        goodQualificationBadge += "<button type=\"button\" class=\"btn btn-info\">";
        goodQualificationBadge += String.format(
                "Correctly answered questions <span class=\"badge badge-light\">%d</span>", qualification);
        goodQualificationBadge += "</div>";
        out.print(goodQualificationBadge);
        
        int badQuestions = 10 - qualification;
        String badQualificationBadge = "<div class=\"container\">";
        badQualificationBadge += "<button type=\"button\" class=\"btn btn-info\">";
        badQualificationBadge += String.format(
                "Failed questions <span class=\"badge badge-light\">%d</span>", badQuestions);
        badQualificationBadge += "</div>";
        out.print(badQualificationBadge);
    %>
    
    <!-- A variable declared into another JSP block code can be used -->
    <!-- Print an alert -->
    <%
        String showAlert = " ";
        if(qualification == 10){
            showAlert += getAlert("alert-success", "Congratulations!");
        }
        else if((qualification>5) && (qualification<10)){
            showAlert += getAlert("alert-warning", "You can do better!!");
        }
        else if(qualification<6){
            showAlert += getAlert("alert-danger", "Reprobate!!");
        }
        
        out.print(showAlert);
    %>
                
    <!-- Exit button -->
    <div class="container">
        <button type="button" class="btn btn-warning" onclick="self.close()">Close this window</button>
    </div>

    <!-- Script to filter the table -->
    <script>
        $(document).ready(function(){
            // Note that we start the search in tbody, to prevent filtering the table headers
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
        });
    </script>


</html>
