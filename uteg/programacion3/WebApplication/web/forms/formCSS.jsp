<%-- 
    Document   : formCSS
    Created on : Mar 6, 2019, 10:17:01 AM
    Author     : hiperezr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forms</title>
        <link rel="stylesheet" href="../css/forms.css">
    </head>
    <body>
        <h1>Example Form with CSS</h1>
        
        
    <div id="studentsForm">
      <form action=formCSS.jsp">
        <label for="fname">First Name</label><br>
            <input type="text" id="fname" name="firstname" placeholder="Your name.."><br>
            <label for="lname">Last Name</label><br>
            <input type="text" id="lname" name="lastname" placeholder="Your last name.."><br>
        <label for="country">Country</label><br>
            <select id="country" name="country">
              <option value="australia">Australia</option>
              <option value="canada">Canada</option>
              <option value="usa">USA</option>
            </select>
        <input type="submit" value="Submit">
      </form>
       
    </div>
        
    </body>
</html>
