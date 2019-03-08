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
        <li class="nav-item">
            <a class="nav-link" id="pills-exam-tab" data-toggle="pill" href="#pills-exam" role="tab" aria-controls="pills-exam" aria-selected="false">Exam</a>
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
            <!-- Modal -->
            <div class="modal fade" id="examModal" tabindex="-1" role="dialog" aria-labelledby="examModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                    <!--Modal content -->
                    <div class="modal-content">
                        <!--Modal headers -->
                        <div class="modal-header">
                            <h5 class="modal-title" id="examModalCenterTitle">Exam form</h5>
                            <button type="button" class="close closefirstmodal" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <!--Modal body -->
                        <div class="modal-body">
                            <!--Employee form -->                            
                            <form class="was-validated" action="bootstrap/exam_validation.jsp" method="GET" target="_blank">
                                <!-- Question 1 textbox-->
                                <div class="form-group">
                                    <!-- Question 1 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_1_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 1
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_1_collapse">
                                      <div class="card card-body">
                                        What is a programming lenguague?
                                      </div>
                                    </div>
                                    <!-- Textbox -->
                                    <label for="form_question_1"Question 1</label>
                                    <input type="text" class="form-control" id="form_question_1" name="question_1" placeholder="Enter your answer here.." required>
                                    <div class="invalid-feedback">Please type an asnwer.</div>
                                </div>
                                <!-- Question 2 Listbox-->
                                <div class="form-group">
                                    <!-- Question 2 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_2_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 2
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_2_collapse">
                                      <div class="card card-body">
                                        C# is a compiled language?
                                      </div>
                                    </div>
                                    <select class="custom-select" name="question_2" required>
                                        <option value="">Click to see the options</option>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                    <div class="invalid-feedback">Please choose an option</div>
                                </div>
                                <!-- Question 3 radio button -->
                                <div class="form-group">
                                    <!-- Question 3 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_3_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 3
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_3_collapse">
                                      <div class="card card-body">
                                        With Java you can deploy web services?
                                      </div>
                                    </div>
                                    <!-- Radio button-->
                                    <label for="inputQuestion3">Select an answer</label>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="inputQuestion3" name="question_3" value="yes" required>
                                        <label class="custom-control-label" for="inputQuestion3">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="inputQuestion3.1" name="question_3" value="no" required>
                                        <label class="custom-control-label" for="inputQuestion3.1">No</label>
                                        <div class="invalid-feedback">Please select one option</div>
                                    </div>
                                </div>
                                <!-- Question 4 checkbox-->
                                <div class="form-group">
                                    <!-- Question 4 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_4_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 4
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_4_collapse">
                                      <div class="card card-body">
                                        What type of data is: 12.34 in Java?
                                      </div>
                                    </div>
                                    <!-- Checkbox-->
                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                        <label class="btn btn-light active">
                                            <input type="radio" value="int" name="question_4" id="option1" autocomplete="off" checked> Int
                                        </label>
                                        <label class="btn btn-light">
                                            <input type="radio" value="char" name="question_4" id="option2" autocomplete="off"> Char
                                        </label>
                                        <label class="btn btn-light">
                                            <input type="radio" value="float" name="question_4" id="option3" autocomplete="off"> Float
                                        </label>
                                    </div>
                                </div>
                                <!-- Question 5 checkbox-->
                                <div class="form-group">
                                    <!-- Question 5 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_5_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 5
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_5_collapse">
                                      <div class="card card-body">
                                        The following sentence belongs to which lenguage programming?
                                        String.format("someText");
                                      </div>
                                    </div>
                                    <!-- Checkbox-->
                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                        <label class="btn btn-light active">
                                            <input type="radio" value="python" name="question_5" id="option1" autocomplete="off" checked> Python
                                        </label>
                                        <label class="btn btn-light">
                                            <input type="radio" value="javascript" name="question_5" id="option2" autocomplete="off"> JavaScript
                                        </label>
                                        <label class="btn btn-light">
                                            <input type="radio" value="java" name="question_5" id="option3" autocomplete="off"> Java
                                        </label>
                                    </div>
                                </div>
                               <!-- Question 6 radio button -->
                                <div class="form-group">
                                    <!-- Question 6 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_6_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 6
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_6_collapse">
                                      <div class="card card-body">
                                        Java is used to deploy cellphones applications?
                                      </div>
                                    </div>
                                    <!-- Radio button-->
                                    <label for="inputQuestion6">Select an answer</label>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="inputQuestion6" name="question_6" value="yes" required>
                                        <label class="custom-control-label" for="inputQuestion6">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="inputQuestion6.1" name="question_6" value="no" required>
                                        <label class="custom-control-label" for="inputQuestion6.1">No</label>
                                        <div class="invalid-feedback">Please select one option</div>
                                    </div>
                                </div>
                                <!-- Question 7 Listbox-->
                                <div class="form-group">
                                    <!-- Question 7 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_7_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 7
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_7_collapse">
                                      <div class="card card-body">
                                        Java has a garbage collector?
                                      </div>
                                    </div>
                                    <select class="custom-select" name="question_7" required>
                                        <option value="">Click to see the options</option>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                    <div class="invalid-feedback">Please choose an option</div>
                                </div>
                                <!-- Question 8 checkbox-->
                                <div class="form-group">
                                    <!-- Question 8 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_8_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 8
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_8_collapse">
                                      <div class="card card-body">
                                        Which Java library is used for math operations?
                                      </div>
                                    </div>
                                    <!-- Checkbox-->
                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                        <label class="btn btn-light active">
                                            <input type="radio" value="math" name="question_8" id="option1" autocomplete="off" checked> Math
                                        </label>
                                        <label class="btn btn-light">
                                            <input type="radio" value="mat" name="question_8" id="option2" autocomplete="off"> Mat
                                        </label>
                                        <label class="btn btn-light">
                                            <input type="radio" value="ma" name="question_8" id="option3" autocomplete="off"> ma
                                        </label>
                                    </div>
                                </div>
                               <!-- Question 9 radio button -->
                                <div class="form-group">
                                    <!-- Question 9 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_9_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 9
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_9_collapse">
                                      <div class="card card-body">
                                        You can use framework with Java?
                                      </div>
                                    </div>
                                    <!-- Radio button-->
                                    <label for="inputQuestion9">Select an answer</label>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="inputQuestion9" name="question_9" value="yes" required>
                                        <label class="custom-control-label" for="inputQuestion9">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="inputQuestion9.1" name="question_9" value="no" required>
                                        <label class="custom-control-label" for="inputQuestion9.1">No</label>
                                        <div class="invalid-feedback">Please select one option</div>
                                    </div>
                                </div>
                               <!-- Question 10 Listbox-->
                                <div class="form-group">
                                    <!-- Question 10 button -->
                                    <p>
                                      <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_10_collapse" aria-expanded="false" aria-controls="collapseExample">
                                        Question 10
                                      </button>
                                    </p>
                                    <div class="collapse" id="question_10_collapse">
                                      <div class="card card-body">
                                        Python is a typed language?
                                      </div>
                                    </div>
                                    <select class="custom-select" name="question_10" required>
                                        <option value="">Click to see the options</option>
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                    <div class="invalid-feedback">Please choose an option</div>
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