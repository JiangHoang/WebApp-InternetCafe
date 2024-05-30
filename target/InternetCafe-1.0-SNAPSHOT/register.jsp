<%-- 
    Document   : register
    Created on : May 27, 2024, 2:52:09 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Register Page</title>
    </head>
    <body class="Register">
        <div class="Rect"></div>
        <div class="Intro">
            <div class="Reg">Let’s register account</div>
            <div class="Regintro">To keep connected with us please login with your personal info</div>
        </div>
        <div class="Regform">
            <form action="register" method="post">
                <input type="text" id="username" name="username" required class="account" placeholder="Account"><br>
                <input type="email" id="email" name="email" required class="email" placeholder="Email"><br>
                <input type="password" id="pass" name="pass" required class="pass" placeholder="Password" ><br>
                <input type="tel" name="cfpass" required class="cfpass" placeholder="Comfirm Password"><br>
                <!--<span class="tooltiptext">Must contain a number and least of 6 characters</span>-->
                <label class="checkbox"><input type="checkbox" required style="width: 14px; height: 14px">Remember me</label>
                <p>By clicking register button you agree to our terms and conditions and privacy and policy.</p>
                <button type="submit" value="register">Register</button>
            </form>
            <div class="HaveAcc">Already have an account?</div>
            <a href="login.jsp" class="login">Login</a>
        </div>
    </body>
</html>
