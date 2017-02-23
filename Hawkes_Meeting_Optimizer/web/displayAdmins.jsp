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
        <title>Hawkes Meeting Optomizer</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="Hawkes_CSS.css">
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Administrators:</h1>
            </div>
            <table class="table table-hover">
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

            <form action="signInServlet" method="post">
                <input type="hidden" name="action" value="addNewAdmin">
                <label>&nbsp;</label>
                <input type="submit" value="Add Admin" id="submit">
            </form>
        </div>
    </body>
</html>
