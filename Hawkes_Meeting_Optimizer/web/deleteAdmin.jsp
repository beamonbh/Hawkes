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
        <style>body{ font-family: Calibri; background-color: #393E41; margin-left: 20px; margin-right: 30px; color: #F6F7EB; }
 h1{ text-align: center; background-color: #A1A499; margin-right: 0px; } 
 h3{ border-bottom-style: solid; border-color: #FFFC31; border-width: 1px; margin-right: 300px; }
 li{ padding-bottom: 5px; } 
 p{ }
 form{ margin-left: 30px; }         </style>
    </head>
    <body>
        <h1>Are you sure you want to delete this administrator?</h1>
        
        <form action="signInServlet" method="post">
            <input type="hidden" name="action" value="delete">
            <label>Email: ${admin.email}</label><br>
            <label>First Name: ${admin.firstName}</label><br>
            <label>Last Name: ${admin.lastName}</label><br>
        </form>
        <form action="signInServlet" method="post">  
            <input type="hidden" name="action" value="confirmDelete">
            <input type="hidden" name="emailToDelete" value="${admin.email}">
            
            <label>&nbsp;</label>
            <input type="submit" value="Yes" id="submit">
        </form>
        <form action="signInServlet" method="post">  
            <input type="hidden" name="action" value="display">
            
            <label>&nbsp;</label>
            <input type="submit" value="No" id="submit">
        </form>
        
    </body>
</html>
