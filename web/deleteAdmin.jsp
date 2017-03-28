<%-- 
    Document   : Delete Admin Page
    Author     : Brett Perrine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="project1css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Confirmation</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/jquery.tablesorter.min.js"></script>
        <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
        <link rel="stylesheet" type="text/css" href="Hawkes_CSS.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Are you sure you want to delete this administrator?</h1>
            </div>
        
            <form class="form-horizontal" action="signInServlet" method="post">
                <div class="form-group">
                    <label>Email: ${admin.email}</label>
                </div>
                <div class="form-group">
                    <label>First Name: ${admin.firstName}</label>
                </div>
                <div class="form-group">
                    <label>Last Name: ${admin.lastName}</label>
                </div>
            </form>
            <div class="col-sm-3">
                <form action="signInServlet" method="post">  
                    <input type="hidden" name="action" value="confirmDelete">
                    <input type="hidden" name="emailToDelete" value="${admin.email}">

                    <label>&nbsp;</label>
                    <input type="submit" class="btn btn-danger" value="Yes" id="submit">
                </form>
            </div>
            <div class="col-sm-3">    
                <form action="signInServlet" method="post">  
                    <input type="hidden" name="action" value="display">

                    <label>&nbsp;</label>
                    <input type="submit" class="btn btn-info" value="No" id="submit">
                </form>
            </div>
        </div>
    </body>
</html>
