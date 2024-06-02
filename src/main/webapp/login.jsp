<%-- 
    Document   : login
    Created on : May 26, 2024, 11:18:07 PM
    Author     : Jiang
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        
    </head>
    <body class="Login">
        <div class="Rect">
            <div class="Group1">
                <form action="login.jsp" method="post">
                    <div><input type="text" id="username" name="username" required class="account" placeholder="Account"><br></div>
                    <div><input type="password" id="password" name="password" required class="pass" placeholder="Password"><br></div>
                    <div class="select">
                        <label class="checkbox"><input type="checkbox" style="width: 14px; height: 14px">Remember me</label>
                        <label class="ForgotPassword">Forgot Password?</label>
                    </div>
                    <div><button type="submit" name="login" value="Login">Log In</button></div>

                    <%  
                        String title = "Invalid Account or Password. Please enter again!";
                        if ("wrong".equalsIgnoreCase(request.getParameter("act"))) {
                            out.print("<font color = \"#FF00FF\" align=\"center\">" + title + "</font>");
                            
                        }

                        if(request.getParameter("login") != null){ 
                            ResultSet res = dataExecute.loginData.Select();
                            while(res.next()){
                                String acc = res.getString("Account");
                                String pass = res.getString("Password");

                                if(request.getParameter("username").equals(acc) && request.getParameter("password").equals(pass)){
                                    response.sendRedirect("Homepage.jsp");
                                    break;
                                }else{
                                    response.sendRedirect("login.jsp?act=wrong");
                                    break;
                                }
                            }
                        }%>
                    <div class ="reg">
                        <div class="accScript">Don’t have an account?</div>
                        <div><a href="register.jsp" class="accAct">Register Now</a></div>
                    </div>
                </form>

            </div>
            <div class="title">
                <div class="hi">Hi!<br/>Welcome</div>
                <div class="introd">I'm waiting for you, please enter your detail</div>
            </div>
        </div>
    </body>
</html>
