<%-- 
    Document   : insert_form
    Created on : Mar 13, 2019, 1:37:08 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  </head>
  <body>
     <!-- Form -->
    <form>
        <!-- Form row -->
      <div class="form-row">
        <div class="col-md-4 mb-3">
          <input type="text" class="form-control" id="firstname" placeholder="First name" name="student_firstname" required>
        </div>
        <div class="col-md-4 mb-3">
          <input type="text" class="form-control" id="lastname" placeholder="Last name" name="student_lastname" required>
        </div>
      </div>
       <!-- Form row -->
       <div class="form-row">
           <div class="col-md-8 mb-3">
             <div class="input-group">
               <div class="input-group-prepend">
                 <span class="input-group-text" id="emailaddress">@</span>
               </div>
               <input type="text" class="form-control" id="emailaddress" placeholder="Email" name="student_email" aria-describedby="emailaddress" required>
             </div>
           </div>
       </div>
       <!-- Form row -->
      <div class="form-row">
        <div class="col-md-8 mb-3">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <label class="input-group-text" for="career">Career</label>
              </div>
              <select class="custom-select" id="career" name="student_career" required>
                <option selected value="">Choose...</option>
                <option value="SystemsEngineering">Systems Engineering</option>
                <option value="ElectronicEngineering">Electronic Engineering</option>
                <option value="ComputerEngineering">Computer Engineering</option>
              </select>
            </div>
        </div>
      </div>
       <!-- Form row -->
      <div class="form-row">
        <div class="col-md-8 mb-3">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <label class="input-group-text" for="class">Class</label>
              </div>
              <select class="custom-select" id="class" name="student_class" required>
                <option selected value="">Choose...</option>
                <option value="maths">Maths</option>
                <option value="english">English</option>
                <option value="spanish">Spanish</option>
                <option value="philosophy">Philosophy</option>
                <option value="biology">Biology</option>
                <option value="humanSciences">Human Sciences</option>
              </select>
            </div>
        </div>        
      </div>
       <!-- Form row -->
       <div class="form-row">
           <div class="col-md-8 mb-3">
             <div class="input-group">
               <div class="input-group-prepend">
                 <span class="input-group-text" id="id">ID</span>
               </div>
               <input type="text" class="form-control" id="id" placeholder="1111.." aria-describedby="id" name="student_id" required>
             </div>
           </div>
       </div>
        <!-- Submit button -->
      <button class="btn btn-primary" type="submit" name="buttonInsertStudent" value="InsertStudent">Submit form</button>
    </form>
      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>