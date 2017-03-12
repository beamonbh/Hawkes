<%-- 
    Document   : Delete Employee Page
    Author     : Brett Perrine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="project1css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Employee Confirmation</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/jquery.tablesorter.min.js"></script>
        <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
        <link rel="stylesheet" type="text/css" href="Hawkes_CSS.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Are you sure you want to delete this employee?</h1>
            </div>

            <form action="employeeServlet" method="post">
                <input type="hidden" name="action" value="delete">
                <label>Email: ${employee.email}</label><br>
                <label>First Name: ${employee.firstName}</label><br>
                <label>Last Name: ${employee.lastName}</label><br>
                <label>Position: ${employee.position}</label><br>
            </form>
            <form action="employeeServlet" method="post">  
                <input type="hidden" name="action" value="confirmDelete">
                <input type="hidden" name="emailToDelete" value="${employee.email}">

                <label>&nbsp;</label>
                <input type="submit" value="Yes" id="submit">
            </form>
            <form action="employeeServlet" method="post">  
                <input type="hidden" name="action" value="display">

                <label>&nbsp;</label>
                <input type="submit" value="No" id="submit">
            </form>
        </div>
    </body>
</html>
