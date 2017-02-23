<%-- 
    Document   : Edit Admin
    Author     : Brett Perrine
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="project1css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Administrator</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="Hawkes_CSS.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Edit Administrator Information</h1>
            </div>
            <form class="form-horizontal" action="signInServlet" method="post" >
                <input type="hidden" name="action" value="addNewAdmin">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="email">Email:</label>
                  <div class="col-sm-3">          
                    <input type="email" name="emailEdit" value="${email}" class="form-control" id="email" placeholder="${email}">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2" for="lastName">First Name:</label>
                  <div class="col-sm-3">          
                    <input type="text" name="firstNameEdit" value="${firstName}" class="form-control" id="firstName" placeholder="${firstName}">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2" for="lastName">Last Name:</label>
                  <div class="col-sm-3">          
                    <input type="text" name="lastNameEdit" value="${lastName}" class="form-control" id="lastName" placeholder="${lastName}">
                  </div>
                </div>
                <div class="form-group">        
                  <div class="col-sm-offset-2 col-sm-10">
                        <input type="hidden" name="action" value="editConfirm">
                        <label>&nbsp;</label>
                        <input type="hidden" name="emailToEdit" value="${email}">
                        <input type="submit" value="Update Admin" id="submit">   
                  </div>
                </div>
            </form>
            
    </body>
</html>
