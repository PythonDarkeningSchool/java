<%-- 
    Document   : employee_form
    Created on : Mar 7, 2019, 12:58:56 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
  </head>
  <body>
    <!-- Employee form -->
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
  </body>
</html>