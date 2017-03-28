<%-- 
    Document   : addEmployee
    Created on : Feb 23, 2017, 4:51:38 PM
    Author     : brettperrine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Add New Employee</title>
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
                <h1>Add New Employee</h1>
            </div>

           <form class="form-horizontal" action="employeeServlet" method="post">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-3">
                        <input type="text" name="email" value="${newEmployee.email}" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="firstName">First Name:</label>
                    <div class="col-sm-3">
                        <input type="text" name="firstName" value="${newEmployee.firstName}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="lastName">Last Name:</label>
                    <div class="col-sm-3">
                        <input type="text" name="lastName" required value="${newEmployee.lastName}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="position">Position:</label>
                    <div class="col-sm-3">
                        <input type="text" name="position" required value="${newEmployee.position}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2"></label>
                    <div class="col-sm-3">
                        <input type="submit" class="btn btn-info" value="Add Employee">
                        <input type="hidden" name="action" value="addNewEmployee">
                    </div>
                </div>
                
            </form>
            <form class="form-horizontal" action="employeeServlet" method="post">
                <div class="form-group">
                    <label class="control-label col-sm-2"></label>
                    <div class="col-sm-3">
                        <input type="submit" class="btn btn-info" value="View Employees">
                        <input type="hidden" name="action" value="display">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
