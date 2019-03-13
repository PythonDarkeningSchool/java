<!DOCTYPE html>
<html lang="en">
<head>
  <title>Hardware</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Hardware Table</h2>
  <p>Type something in the input field to search</p>  
  <input class="form-control" id="studentTable" type="text" placeholder="Search..">
  <br>
  <table class="table table-bordered table-striped">
    <thead>
      <!-- Table headers -->
      <tr>
        <th>Item</th>
        <th>Part ID</th>
        <th>Status</th>
        <th>Assigned</th>
      </tr>
    </thead>
    <tbody id="studentTableBody">
      <tr>
        <td>Laptop</td>
        <td>1111111</td>
        <td>Good</td>
        <td>Warehouse</td>
      </tr>
      <tr>
        <td>PC Desktop</td>
        <td>3445343</td>
        <td>Bad</td>
        <td>Scrap</td>
      </tr>
      <tr>
        <td>49886978</td>
        <td>Mouse</td>
        <td>Good</td>
        <td>In use</td>
      </tr>
      <tr>
        <td>4332445</td>
        <td>Keyboard</td>
        <td>Bad</td>
        <td>Scrap</td>
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
