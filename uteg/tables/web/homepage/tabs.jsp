<%-- 
    Document   : home_tabs
    Created on : Mar 12, 2019, 11:41:42 PM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- w3 include (for imports) -->
        <script src="https://www.w3schools.com/lib/w3data.js"></script>
  </head>
  <body>
    <div class="container">
        <h2>Dynamic Tabs</h2>
        <p>To make the tabs toggleable, add the data-toggle="tab" attribute to each link. Then add a .tab-pane class with a unique ID for every tab and wrap them inside a div element with class .tab-content.</p>
        
        <!-- Unordered list for the menus -->
        <ul class="nav nav-tabs">
          <li class="active"><a data-toggle="tab" href="#tablesExamples">Home</a></li>
          <li><a data-toggle="tab" href="#insertData">Insert data</a></li>
          <li><a data-toggle="tab" href="#deleteData">Delete data</a></li>
          <li><a data-toggle="tab" href="#updateData">Update data</a></li>
          <li><a data-toggle="tab" href="#replaceData">Replace data</a></li>
        </ul>

        <div class="tab-content">
            <!-- Tables examples -->
            <div id="tablesExamples" class="tab-pane fade in active">
                <!-- Tab1 (need the absolute path ) -->
                <div w3-include-html="homepage/tabs/tab1.jsp"></div>
            </div>
            <!-- Insert date in the database -->
            <div id="insertData" class="tab-pane fade">
                <!-- Tab2 (need the absolute path ) -->
                <div w3-include-html="homepage/tabs/tab2.jsp"></div>
            </div>
            <!-- Delete date in the database -->
            <div id="deleteData" class="tab-pane fade">
                <h3>Menu 2</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
            <!-- Update date in the database -->
            <div id="updateData" class="tab-pane fade">
                <h3>Menu 3</h3>
                <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
            <!-- Replace date in the database -->
            <div id="replaceData" class="tab-pane fade">
                <h3>Menu 3</h3>
                <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
        </div>
    </div>
      
        <!-- Scripts for imports HTMLs -->
        <script>
            w3IncludeHTML();
        </script>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
