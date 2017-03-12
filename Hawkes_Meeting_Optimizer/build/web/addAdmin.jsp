
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
            <div class="pad_header">
                <h1>Add New Administrator</h1>
            </div>>
       
            <form action="signInServlet" method="post">


                 <label>Email:</label>
                 <input type="text" name="email" value="${newAdmin.email}" >
                 <br>
                 <label>First Name: </label>
                 <input type="text" name="firstName" value="${newAdmin.firstName}">
        <br>
                 <label>Last Name:</label>
                 <input type="text" name="lastName" required value="${newAdmin.lastName}">
        <br>
                 <input type="submit" value="Add Administrator">
                 <input type="hidden" name="action" value="addNewAdmin">
            </form>
                 <form>

                 <input type="submit" value="View Admins">
                 <input type="hidden" name="action" value="display">

             </form>
        </div>
    </body>
</html>
