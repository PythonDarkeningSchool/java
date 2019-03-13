<%-- 
    Document   : tab2
    Created on : Mar 13, 2019, 12:37:18 AM
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
    </head>
    <body>
    
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#insertUser">
      Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="insertUser" tabindex="-1" role="dialog" aria-labelledby="insertUserCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <!-- Header title -->
            <h6>Insert student <span class="badge badge-secondary">database</span></h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <!-- Modal body -->
          <div class="modal-body">
            <form >
              <!-- Email input -->
              <div class="input-group input-group-sm mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="emailAddressInput">Email</span>
                </div>
                <input type="text" class="form-control" aria-label="Small" aria-describedby="emailAddressInput">
              </div>
              <!-- Turn input -->              
              <div class="input-group input-group-sm mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="turnInput">Turn</label>
                </div>
                <select class="custom-select" id="turnInput">
                  <option selected>Choose...</option>
                  <option value="1">Morning</option>
                  <option value="2">Evening</option>
                  <option value="3">Night</option>
                </select>
              </div>
               <!-- Turn class name -->
              <div class="form-group">
                <label for="inputClassName">Class Name</label>
                <select multiple class="form-control" id="inputClassName">
                  <option>English</option>
                  <option>Maths</option>
                  <option>Spanish</option>
                  <option>Biology</option>
                  <option>Science</option>
                  <option>Programming</option>
                  <option>Law</option>
                  <option>Commerce</option>
                </select>
              </div>
              <!-- Comments -->
              <div class="input-group input-group-sm mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text">Comments</span>
                </div>
                <textarea class="form-control" aria-label="With textarea"></textarea>
              </div>
            </form>
          </div>
          <!-- Modal footer -->
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Insert</button>
          </div>
        </div>
      </div>
    </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
    </body>
</html>
