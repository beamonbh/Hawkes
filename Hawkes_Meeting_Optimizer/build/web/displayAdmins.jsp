<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 
    Created on : Feb 6, 2017, 9:54:12 PM
    Author     : Brett Perrine
--%>

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
                <h1>Administrators:</h1>
            </div>
            <ul class="nav nav-pills nav-justified">
                <li class="active">
                    <form action="signInServlet" method="post">
                        <button type="submit" class="btn btn-primary" name="action" value="join" >
                            Administrators
                        </button>
                    </form>
                </li>
                <li >
                    <form action="employeeServlet" method="post">
                        <button type="submit" class="btn btn-primary" name="action" value="display">
                            Employees
                        </button>
                    </form>
                </li>
            </ul>
            <table id="adminTable" class="table table-hover">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="admin" items="${admins}">
                <tr> 
                    <td>${admin.email}</td>
                    <td>${admin.firstName}</td>
                    <td>${admin.lastName} </td>
                    <td>
                        <form action="signInServlet" method="post">
                            <input type="hidden" name="action" value="edit">
                            <label>&nbsp;</label>
                            <input type="hidden" name="email" value="${admin.email}">
                            <input type="submit" value="Edit" id="submit">
                        </form>
                    </td>         
                    <td>
                        <form action="signInServlet" method="post">
                            <input type="hidden" name="action" value="delete">
                            <label>&nbsp;</label>
                            <input type="hidden" name="email" value="${admin.email}">
                            <input type="submit" value="Delete" id="submit">           
                        </form>
                    </td>       
                </tr>
                </c:forEach> 
                </tbody>
            </table>
            <script type="text/javascript" charset="utf-8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
            <script type="text/javascript" charset="utf-8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
            <script>
                $(function(){
                  $("#adminTable").dataTable();
                })
            </script>

            <form action="signInServlet" method="post">
                    <input type="hidden" name="action" value="addNew">
                    <label>&nbsp;</label>
                    <input type="submit" value="Add Admin" id="submit">
            </form>
            
        </div>
    </body>
</html>