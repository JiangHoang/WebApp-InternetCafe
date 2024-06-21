<%-- 
    Document   : Verify
    Created on : Jun 21, 2024, 12:38:09 AM
    Author     : Jiang
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Verify Code</title>
    </head>
    <body class="verify">
    <div class="contain">
        <div class="container">
            <div class="title1">
                <label>Verify Code</label>
                <p>Code is sent to your email!</p>
            </div>
            <div class="contain-email">
                <form method="post">
                    <input type="text" name="code" required class="code" placeholder="Code">
                    <div>
                        <button type="submit" name="repass" id="repass">Submit</button>
                        <button type="button" onclick="window.location.href='Login.jsp'">Cancel</button>
                    </div>
                    <% 
                        String error = null;
                        if (error != null) {
                    %>
                    <script>
                        alert("<%= error %>");
                    </script>
                    <% } %>
                </form>
            </div>
        </div>
    </div>
    <%
        if (request.getMethod().equalsIgnoreCase("post")) {
            try {
                int value = Integer.parseInt(request.getParameter("code"));
                HttpSession mysession = request.getSession();
                Integer otp = (Integer) mysession.getAttribute("otp");
                String email = (String) mysession.getAttribute("email");
                String name = (String) mysession.getAttribute("name");
                if (otp != null && value == otp) {
                    request.setAttribute("email", email);
                    request.setAttribute("name", name);
                    response.sendRedirect("ResetPassword.jsp");
                } else {
                    error = "Invalid Code";
                    response.sendRedirect("Verify.jsp?error=invalid");
                }
            } catch (NumberFormatException e) {
                error = "Code must be a number!";
                response.sendRedirect("Verify.jsp?error=format");
            }
        }
    %>
    </body>
</html>
