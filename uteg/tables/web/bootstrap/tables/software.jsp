<!DOCTYPE html>
<html lang="en">
<head>
  <title>Software</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Software Table</h2>
  <p>Type something in the input field to search</p>  
  <input class="form-control" id="studentTable" type="text" placeholder="Search..">
  <br>
  <table class="table table-bordered table-striped">
    <thead>
      <!-- Table headers -->
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody id="studentTableBody">
      <tr>
        <td>123</td>
        <td>Microsft Windows</td>
        <td>No</td>
        <td>$1234.00</td>
      </tr>
      <tr>
        <td>2234</td>
        <td>Office 2017</td>
        <td>Yes</td>
        <td>$1982.02</td>
      </tr>
      <tr>
        <td>33333</td>
        <td>CCleaner</td>
        <td>No</td>
        <td>N/A</td>
      </tr>
      <tr>
        <td>44444</td>
        <td>Winrar</td>
        <td>Yes</td>
        <td>$256</td>
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
