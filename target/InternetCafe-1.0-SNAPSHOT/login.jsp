<%-- 
    Document   : login
    Created on : May 26, 2024, 11:18:07 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        
    </head>
    <body>
        <div class="Login">
            <div class="Rect"></div>
            <div class="Group1">
                <form action="login" method="post">
                    <input type="text" id="username" name="username" required class="account" placeholder="Account"><br>
                    <input type="password" id="password" name="password" required class="pass" placeholder="Password"><br>
                    <label class="checkbox"><input type="checkbox" required style="width: 14px; height: 14px">Remember me</label>
                    <div class="ForgotPassword">Forgot Password?</div><br>
                    <button type="submit" value="Login">Log In</button>
                </form>
                <a href="register.jsp" class="RegisterNow">Register Now</a>
                <div class="NoAcc">Don’t have an account?</div>
            </div>
            <div class="intro">
                <div class="introd">I'm waiting for you, please enter your detail</div>
                <div class="hi">Hi!<br/>Welcome</div>
            </div>
        </div>
    </body>
</html>
