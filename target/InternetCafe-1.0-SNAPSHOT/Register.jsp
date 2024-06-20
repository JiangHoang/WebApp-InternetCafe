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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
                <form action="Register.jsp" method="post" id="formm">
                    <div><input type="text" id="username" name="username" required class="check" placeholder="Account" value="<%= request.getParameter("username") != null ? request.getParameter("username") : "" %>"/></div>
                    <div><input type="email" id="email" name="email" required class="email" placeholder="Email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>"/></div>
                    <div><input type="tel" id="phone" name="phone" required class="phone" placeholder="Phone Number" value="<%= request.getParameter("phone") != null ? request.getParameter("phone") : "" %>"/></div>
                    <div><input type="password" id="pass" name="pass" required class="pass" placeholder="Password" /></div>
                    <div><input type="password" name="cfpass" required class="check" placeholder="Confirm Password"/></div>
                    <div class="checkbox"><input type="checkbox" style="width: 14px; height: 14px">Remember me</div>
                    <div class="policy">By clicking register button you agree to our terms and conditions and privacy and policy.</div>
                    <div><button name="regist" value="register">Register</button></div>

                    <%
                        int status = 0;
                        boolean invalidUser = false;                   
                        if (request.getParameter("regist") != null) {
                            String acc = request.getParameter("username");
                            String email = request.getParameter("email");
                            String phone = request.getParameter("phone");
                            String pass = request.getParameter("pass");
                            String cfpass = request.getParameter("cfpass");

                            if (request.getParameter("username") != null) {
                                ResultSet res = dataExecute.loginData.Select();
                                while (res.next()) {
                                    String account = res.getString("Account");
                                    if (acc.equals(account)) {
                                        invalidUser = true;
                                        status = 3;
                                        break;
                                    }
                                }
                            }
                            if (acc == null || acc.trim().isEmpty() || email == null || email.trim().isEmpty() || phone == null || phone.trim().isEmpty() || pass == null || pass.trim().isEmpty()) {
                                invalidUser = true;
                                status = 1;
                            } else if (!pass.equals(cfpass)) {
                                invalidUser = true;
                                status = 2;
                            } else if (!invalidUser) {
                                dataExecute.loginData.InsertUser(acc, pass, email, phone);
                                response.sendRedirect("Login.jsp");
                            }
                        }
                        if (invalidUser) {
                    %>
                            <script>
                                $(document).ready(function() {
                                    $('#errorModal').modal('show');
                                });
                            </script>
                            <style>
                                .check {
                                    border: 2px solid red;
                                    border-radius: 4px;
                                    opacity: 0.5;
                                }
                            </style>
                    <% 
                        } 
                    %>
                    <div class="reg">
                        <div class="accScript">Already have an account?</div>
                        <div><a href="Login.jsp" class="accAct">Login</a></div>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <label class="modal-title" id="errorModalLabel" style="font-weight: bold">Registration Error</label>
                    </div>
                    <div class="modal-body">
                        <% if (status == 1) { %>
                            Please do not use whitespace!
                        <% } else if (status == 2) { %>
                            Passwords do not match!
                        <% } else if (status == 3) { %>
                            Account already exists!
                        <% } %>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
