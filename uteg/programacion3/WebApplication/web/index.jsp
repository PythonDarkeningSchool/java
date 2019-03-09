<%-- 
    Document   : index
    Created on : Mar 7, 2019, 12:11:37 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- Bootstrap JavaScript files -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!-- w3 include (for imports) -->
        <script src="https://www.w3schools.com/lib/w3data.js"></script>
        <!-- Page title -->
        <title>index</title>
    </head>

  <body>
    <!-- Presentation -->
    <div class="jumbotron jumbotron-fluid text-center">
            <h1 class="display-4">Programming III</h1>
            <p class="lead">Class Programs</p>
        <div class="container-fluid">
        </div>
    </div>
    
     
    <!-- Navigation menu -->
    <div w3-include-html="bootstrap/menu/navigation_menu.jsp"></div>

    <div class="tab-content" id="pills-tabContent">
        <!-- Home tab -->
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <!-- Buttons -->
            <p>
                <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#class" aria-expanded="false" aria-controls="class">Class
                </button>
                <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#student" aria-expanded="false" aria-controls="student">Student
                </button>
            </p>
            <!-- Text -->
            <div class="collapse" id="class">
                <div class="card card-body">
                    Programacion III
                </div>
            </div>
            <div class="collapse" id="student">
                <div class="card card-body">
                    Humberto Israel Perez Rodriguez<br>
                    UTEG
                </div>
            </div>
        </div>
        <!-- Employee tab -->
        <div class="tab-pane fade" id="pills-employee" role="tabpanel" aria-labelledby="pills-employee-tab">
            <!-- Button card trigger modal -->
            <div w3-include-html="bootstrap/employee/cards/employee_card.jsp"></div>
            
            <!-- Employee modal -->
            <div w3-include-html="bootstrap/employee/modals/employee_modal.jsp"></div>
        </div>
        <!-- Contact tab -->
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
            TBD Contact
        </div>
        <!-- Exam tab -->
        <div class="tab-pane fade" id="pills-exam" role="tabpanel" aria-labelledby="pills-exam-tab">
            <!-- Button trigger modal -->
            <div class="card" style="width: 14rem;">
                <img src="img/examIcon.png" class="card-img-top" alt="Exam icon"  height="100" width="50">
                <div class="card-body">
                    <h5 class="card-title">Exam</h5>
                    <p class="card-text">Click on the button to start the exam</p>
                    <a href="#" class="btn btn-outline-secondary" data-toggle="modal" data-target="#examModal">Launch exam</a>
                </div>
            </div>
            <!-- Exam modal -->
            <div w3-include-html="bootstrap/exam/modals/exam_modal.jsp"></div>
        </div>
            
        <br>
        <button type="button" class="btn btn-light" onclick="location.reload()">Reload this window</button>

    <!-- Scripts for imports HTMLs -->
    <script>
        w3IncludeHTML();
    </script>
        
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" 
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" 
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" 
        crossorigin="anonymous"></script>
  </body>
</html>