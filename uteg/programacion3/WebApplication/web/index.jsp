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
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        
        <title>index</title>
    </head>

  <body>
    <!-- Navigation menu -->
    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="pills-employee-tab" data-toggle="pill" href="#pills-employee" role="tab" aria-controls="pills-employee" aria-selected="false">Employee form</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</a>
        </li>
    </ul>

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
        <!-- Form tab -->
        <div class="tab-pane fade" id="pills-employee" role="tabpanel" aria-labelledby="pills-employee-tab">
            <!-- Button trigger modal -->
            <div class="card" style="width: 14rem;">
                <img src="img/employeeIcon.png" class="card-img-top" alt="Employee icon"  height="100" width="50">
                <div class="card-body">
                    <h5 class="card-title">Employee</h5>
                    <p class="card-text">Click on the button to see the employee form</p>
                    <a href="#" class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">Launch form</a>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                    <!--Modal content -->
                    <div class="modal-content">
                        <!--Modal headers -->
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Employee form</h5>
                            <button type="button" class="close closefirstmodal" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <!--Modal body -->
                        <div class="modal-body">
                            <!--Employee form -->                            
                            <form class="was-validated" action="bootstrap/employee_validation.jsp" method="GET" target="_blank">
                                <!-- Employee number -->
                                <div class="form-group">
                                    <label for="inputNumber">Employee number</label>
                                    <input type="text" class="form-control" id="inputNumber" name="employee_number" placeholder="Enter number" required>
                                    <div class="invalid-feedback">Please type the employee number.</div>
                                </div>
                                <!-- Employee password -->
                                <div class="form-group">
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" name="employee_password" aria-describedby="inputPasswordHelp" placeholder="Enter password" required>
                                    <small id="inputPasswordHelp" class="form-text text-muted">We'll never share your password with anyone else.</small>
                                    <div class="invalid-feedback">Please type the employee password.</div>
                                </div>
                                <!-- Employee turn -->
                                <div class="form-group">
                                    <select class="custom-select" name="employee_turn" required>
                                        <option value="">Click to see the options</option>
                                        <option value="morning">Morning</option>
                                        <option value="evening">Evening</option>
                                        <option value="night">Night</option>
                                    </select>
                                    <div class="invalid-feedback">Please choose an option</div>
                                </div>
                                <!-- Employee salary -->
                                <div class="form-group">
                                    <label for="inputSalary">Employee salary</label>
                                    <input type="text" class="form-control" id="inputSalary" name="employee_salary" placeholder="Enter salary" required>
                                    <div class="invalid-feedback">Please type the employee salary.</div>
                                </div>
                                <!-- Radio button -->
                                <div class="form-group">
                                    <label for="inputTransport">Employee transport</label>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="inputTransport" name="employee_transport" value="yes" required>
                                        <label class="custom-control-label" for="inputTransport">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio mb-3">
                                        <input type="radio" class="custom-control-input" id="customControlValidation2" name="employee_transport" value="no" required>
                                        <label class="custom-control-label" for="customControlValidation2">No</label>
                                        <div class="invalid-feedback">Please select one option</div>
                                    </div> 
                                </div>
                                <!-- Submit button -->
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                        <!--Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact tab -->
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
            TBD Contact
        </div>
            
        <br>
        <button type="button" class="btn btn-light" onclick="location.reload()">Reload this window</button>

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