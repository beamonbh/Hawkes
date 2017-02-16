<%-- 
    Document   : Edit Admin
    Author     : Brett Perrine
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="project1css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Administrator</title>
        <style>body{ font-family: Calibri; background-color: #393E41; margin-left: 20px; margin-right: 30px; color: #F6F7EB; }
 h1{ text-align: center; background-color: #A1A499; margin-right: 0px; } 
 h3{ border-bottom-style: solid; border-color: #FFFC31; border-width: 1px; margin-right: 300px; }
 li{ padding-bottom: 5px; } 
 p{ }
 form{ margin-left: 30px; }         </style>
    </head>
    <body>
        <h1>Edit Administrator Information</h1>
        <form action="signInServlet" method="post">
            <label>Email:</label>
            <input type="hidden" name="emailEdit" value="${email}">
            <input placeholder="${email}" type="email"><br>        
            <label>First Name:</label>
            <input placeholder="${firstName}}" type="text"
                   name="firstNameEdit" value="${firstName}"><br>
            
            <label>Last Name:</label>
            <input placeholder="${lastName}" type="text"
                   name="lastNameEdit" value="${lastName}"><br>
       
            <input type="hidden" name="action" value="editConfirm">
            <label>&nbsp;</label>
            <input type="hidden" name="emailToEdit" value="${email}">
            <input type="submit" value="Update Admin" id="submit">   
        </form>
    </body>
</html>
