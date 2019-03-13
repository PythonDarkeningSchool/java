<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
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
            <form>
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
    

      <% 
          if(request.getParameter("boton")!= null){            
           String codigo=request.getParameter("cod");
          String password=request.getParameter("pass");
          String nombre=request.getParameter("nom");
      Connection con=null;
      Statement st=null;
      ResultSet rs=null;

      try{
      Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost/primera?user=root&password=usbw");
      st=con.createStatement();
     // st.executeUpdate("INSERT INTO usuarios(id,password,nombre) VALUES (3,'12345','Federico')");
      st.executeUpdate("INSERT INTO usuarios(id,password,nombre) VALUES ("+codigo+",'"+password+"','"+nombre+"')");
      //request.getRequestDispatcher("inicio").forward(request, response);

      }catch(Exception e){
      out.print("error--->>> " +e);
      }            
          }//if
      %>        
        
  </body>
</html>
