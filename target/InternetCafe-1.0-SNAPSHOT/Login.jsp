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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body class="Login">
        <div class="contain">
            <div class="title">
                <label class="hi">Hi!<br/>Welcome</label>
                <p class="introd">I'm waiting for you, please enter your detail</p>
            </div>
            <div class="contain-form">
                <form>
                    <input type="text" name="username" required class="username" placeholder="Account">
                    <br>
                    <input type="password" name="password" required class="password" placeholder="Password">
                    <div class="select">
                        <label class="checkbox"><input type="checkbox"> Remember me</label>
                        <label class="ForgotPassword"><a href="Forgotpassword.jsp">Forgot Password?</a></label>
                    </div>
                    <button type="submit" name="login" value="Login" id="login">Log In</button>
                    <%
                        int valid = 0;
                        if(request.getParameter("login") != null){ 
                            ResultSet res = dataExecute.loginData.Select();
                            while(res.next()){
                                String cid = res.getString("Customer_ID");
                                String acc = res.getString("Account");
                                String pass = res.getString("Password");
                                String email = res.getString("Email");
                                String phone = res.getString("Phone_Number");
                                
                                System.out.print("\n"+request.getParameter("password"));
                                System.out.print("\n"+request.getParameter("username"));
                                
                                if(request.getParameter("username").equals(acc) && request.getParameter("password").equals(pass)){
                                    Cookie Account = new Cookie("acc",acc);
                                    Cookie Password = new Cookie("pass",pass);
                                    Cookie Email = new Cookie("email",email);
                                    Cookie Phone = new Cookie("phone",phone);
                                    Cookie Cid = new Cookie("cid",cid);
                                    
                                    response.addCookie(Account);
                                    response.addCookie(Password);
                                    response.addCookie(Email);
                                    response.addCookie(Phone);
                                    response.addCookie(Cid);
                                    
                                    valid = 1;
                                    break;
                                }else{
                                    valid = 2;
                                }
                            }
                        }
                        if(valid == 1)
                            response.sendRedirect("Homepage.jsp");
                        else if(valid == 2){
                    %>
                            <script>
                                $(document).ready(function(){
                                    $('#errorModal').modal('show');
                                });
                            </script>
                    <%
                        }
                    %>
                    <div class ="reg">
                        <label>Don’t have an account?</label>
                        <div><a href="Register.jsp" class="accAct">Register Now</a></div>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <label class="modal-title" id="errorModalLabel" style="font-weight: bold">Announce</label>
                    </div>
                    <div class="modal-body">
                        Invalid Account or Password. Please enter again!
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
