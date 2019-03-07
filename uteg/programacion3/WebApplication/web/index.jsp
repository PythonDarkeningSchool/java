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
        <title>index</title>
    </head>

  <body>
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
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            TBD
        </div>
        <div class="tab-pane fade" id="pills-employee" role="tabpanel" aria-labelledby="pills-employee-tab">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">Launch employee form</button>
            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <!--MODAL HEADER -->
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Employee form</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <!--MODAL BODY -->
                        <div class="modal-body">
                            <!--EMPLOYEE FORM -->                            
                            <form class="was-validated" action="jsp/employeeValidation.jsp">
                                <div class="form-group">
                                    <label for="inputNumber">Employee number</label>
                                    <input type="text" class="form-control" id="inputNumber" placeholder="Enter number" required>
                                    <div class="invalid-feedback">Please type the employee number.</div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" aria-describedby="inputPasswordHelp" placeholder="Enter password" required>
                                    <small id="inputPasswordHelp" class="form-text text-muted">We'll never share your password with anyone else.</small>
                                    <div class="invalid-feedback">Please type the employee password.</div>
                                </div>
                                <div class="form-group">
                                    <select class="custom-select" required>
                                        <option value="">Click to see the options</option>
                                        <option value="morning">Morning</option>
                                        <option value="evening">Evening</option>
                                        <option value="night">Night</option>
                                    </select>
                                    <div class="invalid-feedback">Please choose an option</div>
                                </div>
                                <div class="form-group">
                                    <label for="inputSalary">Employee salary</label>
                                    <input type="text" class="form-control" id="inputSalary" placeholder="Enter salary" required>
                                    <div class="invalid-feedback">Please type the employee salary.</div>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="customControlValidation1" name="radio-stacked" required>
                                    <label class="custom-control-label" for="customControlValidation1">Yes</label>
                                </div>
                                <div class="custom-control custom-radio mb-3">
                                    <input type="radio" class="custom-control-input" id="customControlValidation2" name="radio-stacked" required>
                                    <label class="custom-control-label" for="customControlValidation2">No</label>
                                    <div class="invalid-feedback">Please select one option</div>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                    </div>

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