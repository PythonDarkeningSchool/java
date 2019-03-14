<%-- 
    Document   : index
    Created on : Mar 13, 2019, 1:15:57 AM
    Author     : hiperezr
--%>

<%@page import="java.sql.*"%>
<%@ page import = "java.io.*, java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    <title>Database</title>

    <!-- w3 include (for imports) -->
    <script src="https://www.w3schools.com/lib/w3data.js"></script>
   
  </head>
  <body>
    <div class="container">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <a class="nav-item nav-link " id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="false">Home</a>
            <a class="nav-item nav-link" id="nav-insert-tab" data-toggle="tab" href="#nav-insert" role="tab" aria-controls="nav-insert" aria-selected="false">Insert</a>
            <a class="nav-item nav-link" id="nav-delete-tab" data-toggle="tab" href="#nav-delete" role="tab" aria-controls="nav-delete" aria-selected="false">Delete</a>
            <a class="nav-item nav-link" id="nav-update-tab" data-toggle="tab" href="#nav-update" role="tab" aria-controls="nav-update" aria-selected="false">Update</a>
            <a class="nav-item nav-link" id="nav-replace-tab" data-toggle="tab" href="#nav-replace" role="tab" aria-controls="nav-replacet" aria-selected="false">Replace</a>
            <a class="nav-item nav-link" id="nav-admin-tab" data-toggle="tab" href="#nav-admin" role="tab" aria-controls="nav-admin" aria-selected="false">Admin</a>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <!-- Home tab -->
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="container">
                  <h2>University database</h2>
                  <p>Handled the database from here</p>            
                  <img src="img/database_icon.png" class="rounded" alt="Cinque Terre" width="304" height="236"> 
                </div>
            </div>
            <!-- Insert tab -->
            <div class="tab-pane fade" id="nav-insert" role="tabpanel" aria-labelledby="nav-profile-tab">
                <div w3-include-html="insert/insert_modal.jsp"></div>
                  <!-- Submit button validation for insert tab  form -->
                    <%
                        if ( request.getParameter("buttonInsertStudent") != null  ) {
                            // Define variables
                            String database = "university";
                            
                            // Get values from the form
                            String student_firstname = request.getParameter("student_firstname");
                            String student_lastname = request.getParameter("student_lastname");
                            String student_email = request.getParameter("student_email");
                            String student_career = request.getParameter("student_career");
                            String student_class = request.getParameter("student_class");
                            String student_id = request.getParameter("student_id");
                            
                            // Determine values to insert in the database according the form
                            String targetTable = "student";
                            String rows = "StudentID, StudentName, StudentLastName, StudentEmail, StudentCareer, StudentClass";
                            String values = (
                                    String.format("\"%s\", \"%s\", \"%s\", \"%s\", \"%s\", \"%s\" ", 
                                            student_id, student_firstname, student_lastname, student_email, student_career, student_class));

                            // Define SQL variables
                            Connection connection=null;
                            Statement statement=null;
                            ResultSet resultSet=null;

                            try {
                                // Declare the driver
                                Class.forName("com.mysql.jdbc.Driver");
                                // Make a conection with the database
                                connection=DriverManager.getConnection(
                                        String.format("jdbc:mysql://localhost:3307/%s?user=root&password=usbw", database));
                                statement=connection.createStatement();
                                // Execute the command in SQL
                                statement.executeUpdate(
                                        String.format("INSERT INTO %s(%s) VALUES (%s)", targetTable, rows, values));
                             %>
                                <!-- Show an alert -->
                                <div class="alert alert-success alert-dismissible">
                                  <button type="button" class="close" data-dismiss="alert">&times;</button>
                                  <strong>Success!</strong> The <%=targetTable%> "<%=String.format("%s %s", student_firstname, student_lastname)%>" was inserted correctly in the database
                                </div>
                            <%} catch(Exception e) { %>
                                <!-- Show an alert -->
                                <div class="alert alert-danger alert-dismissible">
                                  <button type="button" class="close" data-dismiss="alert">&times;</button>
                                  <strong>Error!</strong> The <%=targetTable%> "<%=String.format("%s %s", student_firstname, student_lastname)%>" could not be inserted correctly in the database due to: <%=e%>
                                </div>
                           <% }     
                        }
                    %>
            </div>
            <!-- Delete tab -->
            <div class="tab-pane fade" id="nav-delete" role="tabpanel" aria-labelledby="nav-profile-tab">
                <!-- Building code (to be removed) -->
                <div class="container">
                    <h2>Building code</h2>
                    <p>Try again later ..</p>            
                    <img src="img/building_code.png" class="rounded" alt="Cinque Terre" width="304" height="236"> 
                </div>
            </div>
            <!-- Update tab -->
            <div class="tab-pane fade" id="nav-update" role="tabpanel" aria-labelledby="nav-profile-tab">
                <!-- Building code (to be removed) -->
                <div class="container">
                    <h2>Building code</h2>
                    <p>Try again later ..</p>            
                    <img src="img/building_code.png" class="rounded" alt="Cinque Terre" width="304" height="236"> 
                </div>
            </div>
            <!-- Replace tab -->
            <div class="tab-pane fade" id="nav-replace" role="tabpanel" aria-labelledby="nav-contact-tab">
                <!-- Building code (to be removed) -->
                <div class="container">
                    <h2>Building code</h2>
                    <p>Try again later ..</p>            
                    <img src="img/building_code.png" class="rounded" alt="Cinque Terre" width="304" height="236"> 
                </div>
            </div>
            <!--Admin tab -->
            <div class="tab-pane fade" id="nav-admin" role="tabpanel" aria-labelledby="nav-admin-tab">
                <div w3-include-html="admin/admin_cards.jsp"></div>
                    <!-- Submit button validation for insertClass/insertCareers forms -->
                    <%
                        if ( request.getParameter("buttonInsertClass") != null ||  request.getParameter("buttonInsertCareers") != null ) {
                            // Define variables
                            String database = "university";
                            
                            // Determine values to insert in the database according the form
                            String target = (request.getParameter("buttonInsertClass") != null) ? "class" : "career";
                            String targetTable = (request.getParameter("buttonInsertClass") != null) ? "class" : "careers";
                            String targeRows = (request.getParameter("buttonInsertClass") != null) ? "ClassID, ClassName" : "CareerID, CareerName";
                            String ID = (
                                    request.getParameter("buttonInsertClass") != null) ?  request.getParameter("class_id") : request.getParameter("career_id");
                            String value = (
                                    request.getParameter("buttonInsertClass") != null) ?  request.getParameter("class_name") : request.getParameter("career_name");

                            // Define variables
                            Connection connection=null;
                            Statement statement=null;
                            ResultSet resultSet=null;

                            try {
                                // Declare the driver
                                Class.forName("com.mysql.jdbc.Driver");
                                // Make a conection with the database
                                connection=DriverManager.getConnection(
                                        String.format("jdbc:mysql://localhost:3307/%s?user=root&password=usbw", database));
                                statement=connection.createStatement();
                                // st.executeUpdate("INSERT INTO usuarios(id,password,nombre) VALUES (3,'12345','Federico')");
                                statement.executeUpdate(
                                        String.format("INSERT INTO %s(%s) VALUES (\"%s\",\"%s\")", targetTable, targeRows, ID,  value));
                                //request.getRequestDispatcher("inicio").forward(request, response);
                             %>
                                <!-- Show an alert -->
                                <div class="alert alert-success alert-dismissible">
                                  <button type="button" class="close" data-dismiss="alert">&times;</button>
                                  <strong>Success!</strong> The <%=target%> "<%=value%>" was inserted correctly in the database
                                </div>
                            <%} catch(Exception e) { %>
                                <!-- Show an alert -->
                                <div class="alert alert-danger alert-dismissible">
                                  <button type="button" class="close" data-dismiss="alert">&times;</button>
                                  <strong>Error!</strong> The <%=target%> "<%=value%>" could  not be inserted correctly in the database due to: <%=e%>
                                </div>
                           <% }     
                        }
                    %>
            </div>
        </div>
        </div>
    </div>
   
    <!-- Scripts for remain in the same nav tab after an event like POST, GET, REFRESH ...etc 
    Tip: delete the element "active" and set aria-selected to false 
    -->
    <script>
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            var hash = $(e.target).attr('href');
            if (history.pushState) {
                history.pushState(null, null, hash);
            } else {
                location.hash = hash;
            }
        });

            var hash = window.location.hash;
            if (hash) {
                $('.nav-link[href="' + hash + '"]').tab('show');
            }
    </script>
    <!-- Scripts for imports HTMLs -->
    <script>
        w3IncludeHTML();
    </script>
  </body>
</html>