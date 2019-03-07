<%-- 
    Document   : form2
    Created on : Mar 6, 2019, 7:38:28 PM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form2</title>
        <link rel="stylesheet" href="../css/employee.css">
    </head>
    <body>
        <center><h3>Employee form</h3></center>
        <div class="container">
            <form action="../jsp/employeeValidation.jsp" method="POST" target = "_blank">
                <!--Employee number-->
                <div class="row">
                    <div class="col-25">
                        <label for="eNumber">Employee number</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="eNumber" name="employee_number" placeholder="Number here..">
                    </div>
                </div>
                <!--Employee name-->
                <div class="row">
                    <div class="col-25">
                        <label for="eName">Employee name</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="eName" name="employee_name" placeholder="Name here..">
                    </div>
                </div>
               <!--Employee password-->
                <div class="row">
                    <div class="col-25">
                        <label for="ePassword">Employee password</label>
                    </div>
                    <div class="col-75">
                        <input type="password" id="ePassword" name="employee_password" minlength="8" required>
                    </div>
                </div>
                <!--Employee turn-->    
                <div class="row">
                    <div class="col-25">
                      <label for="eTurn">Employee turn</label>
                    </div>
                    <div class="col-75">
                        <select id="eTurn" name="employee_turn">
                          <option value="morning">Morning</option>
                          <option value="evening">Evening</option>
                          <option value="night">Night</option>
                        </select>
                    </div>
                </div>
                <!--Employee salary-->
                <div class="row">
                    <div class="col-25">
                        <label for="eSalary">Employee Salary</label>
                    </div>
                    <div class="col-75">
                        <input type="text" value=0 id="eSalary" name="employee_salary">
                    </div>
                </div>
                <!--Employee transport-->    
                <div class="row">
                    <div class="col-25">
                      <label for="eTransport">Employee transport</label>
                    </div>
                    <div class="col-75">
                        <select id="eTransport" name="employee_transports">
                          <option value="morning">Yes</option>
                          <option value="evening">No</option>
                        </select>
                    </div>
                </div>
                <!--Submit button--> 
                <div class="row">
                  <input type="submit" value="Submit">
                </div>
            </form>
        </div>
    </body>
</html>
