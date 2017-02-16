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
         <style>
            body{ font-family: Calibri; background-color: #393E41; margin-left: 20px; margin-right: 30px; color: #F6F7EB; }
 h1{ text-align: center; background-color: #A1A499; margin-right: 0px; } 
 h3{ border-bottom-style: solid; border-color: #FFFC31; border-width: 1px; margin-right: 300px; }
 li{ padding-bottom: 5px; } 
 p{ }
 form{ margin-left: 30px; }         
        </style>
    </head>
    <body>
        <h1>Administrators:</h1>
        <table cellpadding="5" border="1">
            <tr>
                <th>Email</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>&nbsp;</th>
                <th></th>
            <c:forEach var="admin" items="${admins}">
            </tr>
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
        </table>
        
        <form action="signInServlet" method="post">
            <input type="hidden" name="action" value="addNewAdmin">
            <label>&nbsp;</label>
            <input type="submit" value="Add Admin" id="submit">
        </form>
    </body>
</html>
