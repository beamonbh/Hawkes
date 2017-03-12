<%-- 
    Document   : displayEmployees
    Created on : Feb 23, 2017, 2:39:34 PM
    Author     : brettperrine
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="project1css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hawkes Meeting Optimizer</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/jquery.tablesorter.min.js"></script>
        <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
        <link rel="stylesheet" type="text/css" href="Hawkes_CSS.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Employees:</h1>
            </div>
            <ul class="nav nav-pills nav-justified">
                <li class="active">
                    <a href="http://localhost:8084/Hawkes_Meeting_Optimizer/signInServlet">
                        Administrators
                    </a>
                </li>
                <li class="active">
                    <a href="http://localhost:8084/Hawkes_Meeting_Optimizer/employeeServlet">
                        Employees
                    </a>
                </li>
            </ul>
            <table id="employeeTable" class="table table-hover">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Position</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="employee" items="${employees}">
                    <tr> 
                        <td>${employee.email}</td>
                        <td>${employee.firstName}</td>
                        <td>${employee.lastName} </td>
                        <td>${employee.position}</td>
                        <td>
                            <form action="employeeServlet" method="post">
                                <input type="hidden" name="action" value="edit">
                                <label>&nbsp;</label>
                                <input type="hidden" name="email" value="${employee.email}">
                                <input type="submit" value="Edit" id="submit">
                            </form>
                        </td>         
                        <td>
                            <form action="employeeServlet" method="post">
                                <input type="hidden" name="action" value="delete">
                                <label>&nbsp;</label>
                                <input type="hidden" name="email" value="${employee.email}">
                                <input type="submit" value="Delete" id="submit">           
                            </form>
                        </td>       
                    </tr>
                    </c:forEach> 
                </tbody>
            </table>
            <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
            <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
            <script>
                $(function(){
                  $("#employeeTable").dataTable();
                });
            </script>

            <form action="employeeServlet" method="post">
                <input type="hidden" name="action" value="addNew">
                <label>&nbsp;</label>
                <input type="submit" value="Add Employee" id="submit">
            </form>
        </div>
    </body>
</html>