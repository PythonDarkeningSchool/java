<%-- 
    Document   : tab1
    Created on : Mar 13, 2019, 12:16:39 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        
        <!-- Fix the margin top for bootstrap dropdown -->
        <style>
          .dropdown{
            margin-left: 5px;
            margin-top: 10px;
            margin-right: 10px;
          }
        </style>

    </head>
    <body>
        <!-- Dropdown -->
        <div class="dropdown">
          <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Tables examples
          <span class="caret"></span></button>
          <ul class="dropdown-menu">
            <input class="form-control" id="menuDropdown" type="text" placeholder="Search..">
            <!-- Dropdown values -->
            <li><a href="bootstrap/tables/student.jsp" target="_blank">Students</a></li>
            <li><a href="bootstrap/tables/hardware.jsp" target="_blank">Hardware</a></li>
            <li><a href="bootstrap/tables/software.jsp" target="_blank">Software</a></li>
            <li><a href="#"target="_blank">Food</a></li>
            <li><a href="#" target="_blank">Jobs</a></li>
          </ul>
        </div>

        <!-- Script for dropdown menu -->
        <script src="js/home_page/home_page.js"></script>

        
    </body>
</html>
