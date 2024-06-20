<%-- 
    Document   : Forgotpassword
    Created on : Jun 20, 2024, 12:35:39 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password Page</title>
    </head>
    <body class="forgotpassword">
        <div class="container">
            <div class="title">
                <h1>Forgot Password</h1>
                <p>Enter your email, phone, or username and we'll send you a link to change a new password</p>
            </div>
            <div class="contain-email">
                <input type="email" placeholder="Your Email">
                <button onclick="sendEmail()">Continue</button>
            </div>
        </div>
    </body>
</html>
