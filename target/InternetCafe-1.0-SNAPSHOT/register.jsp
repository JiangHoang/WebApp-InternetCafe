<%-- 
    Document   : register
    Created on : May 27, 2024, 2:52:09 PM
    Author     : Jiang
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Register Page</title>
    </head>
    <body class="Register">
        <div class="Rect">
            <div class="title">
                <div class="hi">Let’s register account</div>
                <div class="intro">To keep connected with us please login with your personal info</div>
            </div>
            <div class="Group1">
                <form action="register.jsp" method="post">
                    <div><input type="text" id="username" name="username" required class="check" placeholder="Account" value="<%= request.getParameter("username") != null ? request.getParameter("username") : "" %>"/></div>
                    <div><input type="email" id="email" name="email" required class="email" placeholder="Email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>"/></div>
                    <div><input type="tel" id="phone" name="phone" required class="phone" placeholder="Phone Number" value="<%= request.getParameter("phone") != null ? request.getParameter("phone") : "" %>"/></div>
                    <div><input type="password" id="pass" name="pass" required class="pass" placeholder="Password" /></div>
                    <div><input type="password" name="cfpass" required class="check" placeholder="Comfirm Password"/></div>
                    <div class="checkbox"><input type="checkbox" style="width: 14px; height: 14px">Remember me</div>
                    <div class="policy">By clicking register button you agree to our terms and conditions and privacy and policy.</div>
                    <div><button type="submit" name="regist" value="register">Register</button></div>

                    <%
                        boolean invalidUser=false;                   
                        if(request.getParameter("regist") != null ){
                            String acc= request.getParameter("username");
                            String email= request.getParameter("email");
                            String phone= request.getParameter("phone");
                            String pass= request.getParameter("pass");
                            String cfpass = request.getParameter("cfpass");

                            String title = "Please do not use whitespace!";
                            String error = "Password do not match!";

                            if(request.getParameter("username")!=null){
                                ResultSet res = dataExecute.loginData.Select();
                                while(res.next()){
                                    String account = res.getString("Account");
                                    if(acc.equals(account)){
                                        invalidUser = true;
                                        break;
                                    }

                                }
                            }
                            if( acc == null || acc.trim().isEmpty() || email == null || email.trim().isEmpty()
                                || phone == null || phone.trim().isEmpty() || pass == null || pass.trim().isEmpty()){
                                invalidUser = true;
                                out.print("<font color =  \"#FF00FF\" align=\"center\">" + title + "</font>");
                            }if(!pass.equals(cfpass)){
                                invalidUser = true;
                                out.print("<font color =  \"#FF00FF\" align=\"center\">" + error + "</font>");
                            }else{
                                dataExecute.loginData.InsertUser(acc, pass, email, phone);
                                response.sendRedirect("login.jsp");
                            }
                        }

                        if(invalidUser !=false){
                    %>
                            <style>
                                .check{
                                    border: 2px solid #ff33cc;
                                    border-radius: 4px;
                                    opacity: 0.5;
                                }
                            </style> 
                    <%  }%>
                    <div class="reg">
                        <div class="accScript">Already have an account?</div>
                        <div><a href="login.jsp" class="accAct">Login</a></div>
                    </div>
                </form>
                
            </div>
        </div>
    </body>
</html>
