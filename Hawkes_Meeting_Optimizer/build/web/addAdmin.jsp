
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Add New Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/jquery.tablesorter.min.js"></script>
        <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
        <link rel="stylesheet" type="text/css" href="Hawkes_CSS.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Add New Administrator</h1>
            </div>
       
            <form class="form-horizontal" action="signInServlet" method="post">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-3">          
                      <input type="text" name="email" class="form-control" value="${newAdmin.email}" placeholder="Enter Email" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="firstName">Email:</label>
                    <div class="col-sm-3">          
                      <input type="text" name="firstName" class="form-control" value="${newAdmin.firstName}" placeholder="First Name" required>
                    </div>
                </div>    
                <div class="form-group">
                    <label class="control-label col-sm-2" for="lastName">Email:</label>
                    <div class="col-sm-3">          
                      <input type="text" name="lastName" class="form-control" value="${newAdmin.lastName}" placeholder="Last Name" required>
                    </div>
                </div>
                <button class="btn btn-primary" type="submit" name="action" value="addNewAddmin">
                    Add Administrator
                </button>
            </form>
                    
            <form>

               <input type="submit" value="View Admins">
               <input type="hidden" name="action" value="display">

           </form>
        </div>
    </body>
</html>
