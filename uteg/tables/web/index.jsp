<!DOCTYPE html>
<html lang="en">
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
  <!-- Navbar menu -->
  <nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
        <!-- Main title -->
        <a class="navbar-brand" href="#">Database</a>
      </div>
      <ul class="nav navbar-nav">
        <!-- Elements in the navbar -->
        <li class="active"><a href="#">Home</a></li>
        <li>
          <!-- Dropdown -->
          <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Tables
            <span class="caret"></span></button>
            <ul class="dropdown-menu">
              <input class="form-control" id="menuDropdown" type="text" placeholder="Search..">
              <!-- Dropdown values -->
              <li><a href="bootstrap/tables/student.jsp" target="_blank">Students</a></li>
              <li><a href="#" target="_blank">Hardware</a></li>
              <li><a href="#" target="_blank">Software</a></li>
              <li><a href="#"target="_blank">Food</a></li>
              <li><a href="#" target="_blank">Jobs</a></li>
            </ul>
          </div>
        </li>
        <!-- Add more elements to navbar like this
        <li><a href="#">Link</a></li>
        -->
      </ul>
      <!-- More type of elements in the navbar 
      <button class="btn btn-danger navbar-btn">Button</button>
      -->
    </div>
  </nav>

  <!-- Add some content here 
  <div class="container">
    <h2>Navbar Button</h2>
    <p>Use the navbar-btn class on a button to vertically align (same padding as links) it inside the navbar.</p>
  </div>
  -->

  <!-- Script for dropdown menu -->
  <script src="js/home_page/home_page.js"></script>
    
</body>
</html>