<%-- 
    Document   : index
    Created on : Mar 13, 2019, 1:15:57 AM
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

    <title>Database</title>
    
    <!-- w3 include (for imports) -->
    <script src="https://www.w3schools.com/lib/w3data.js"></script>
  </head>
  <body>
    <div class="container">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-insert" role="tab" aria-controls="nav-profile" aria-selected="false">Insert</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-delete" role="tab" aria-controls="nav-contact" aria-selected="false">Delete</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-update" role="tab" aria-controls="nav-contact" aria-selected="false">Update</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-replace" role="tab" aria-controls="nav-contact" aria-selected="false">Replace</a>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <!-- Home -->
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">...</div>
            <!-- Insert -->
            <div class="tab-pane fade" id="nav-insert" role="tabpanel" aria-labelledby="nav-profile-tab">
                <div w3-include-html="insert/insert_modal.jsp"></div>
            </div>
            <!-- Delete -->
            <div class="tab-pane fade" id="nav-delete" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
            <!-- Update -->
            <div class="tab-pane fade" id="nav-update" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
            <!-- Replace -->
            <div class="tab-pane fade" id="nav-replace" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
        </div>
    </div>
    
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Scripts for imports HTMLs -->
    <script>
        w3IncludeHTML();
    </script>
  </body>
</html>