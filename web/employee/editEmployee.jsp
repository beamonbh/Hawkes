<%-- 
    Document   : editEmployee
    Created on : Feb 23, 2017, 5:03:38 PM
    Author     : brettperrine
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="project1css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee Information</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/jquery.tablesorter.min.js"></script>
        <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
        <link rel="stylesheet" type="text/css" href="Hawkes_CSS.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Edit Employee Information</h1>
            </div>
            <form action="employeeServlet" method="post">
                <label>Email:</label>
                <input type="hidden" name="emailEdit" value="${email}">
                <input placeholder="${email}" type="email"><br>        
                <label>First Name:</label>
                <input placeholder="${firstName}}" type="text"
                       name="firstNameEdit" value="${firstName}"><br>

                <label>Last Name:</label>
                <input placeholder="${lastName}" type="text"
                       name="lastNameEdit" value="${lastName}"><br>
            <label>Position:</label>
                <input placeholder="${position}" type="text"
                       name="position" value="${position}"><br>
                <input type="hidden" name="action" value="editConfirm">
                <label>&nbsp;</label>
                <input type="hidden" name="emailToEdit" value="${email}">
                <input type="submit" class="btn btn-default" value="Update Employee" id="submit">   
            </form>
        </div>
    </body>
</html>
