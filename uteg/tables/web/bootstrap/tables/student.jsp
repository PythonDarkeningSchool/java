<!DOCTYPE html>
<html lang="en">
<head>
  <title>Students</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Students Table</h2>
  <p>Type something in the input field to search</p>  
  <input class="form-control" id="studentTable" type="text" placeholder="Search..">
  <br>
  <table class="table table-bordered table-striped">
    <thead>
      <!-- Table headers -->
      <tr>
        <th>Enrollment</th>
        <th>Name</th>
        <th>Grade</th>
        <th>Career</th>
      </tr>
    </thead>
    <tbody id="studentTableBody">
      <tr>
        <td>11111</td>
        <td>John</td>
        <td>5</td>
        <td>Electronic engineering</td>
      </tr>
      <tr>
        <td>22222</td>
        <td>Paul</td>
        <td>2</td>
        <td>Electronic engineering</td>
      </tr>
      <tr>
        <td>33333</td>
        <td>Saul</td>
        <td>4</td>
        <td>Electronic engineering</td>
      </tr>
      <tr>
        <td>44444</td>
        <td>Peter</td>
        <td>3</td>
        <td>Electronic engineering</td>
      </tr>
    </tbody>
  </table>
</div>

  <!-- Script for filter the table-->
  <script>
    $(document).ready(function(){
     $("#studentTable").on("keyup", function() {
       var value = $(this).val().toLowerCase();
       $("#studentTableBody tr").filter(function() {
         $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
       });
     });
    });
  </script>


</body>
</html>
