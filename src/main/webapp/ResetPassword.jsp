<%-- 
    Document   : ResetPassword
    Created on : Jun 21, 2024, 3:01:12 AM
    Author     : Jiang
--%>
<%@page import="dataExecute.accountData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Reset Password</title>
    </head>
    <body class="resetpass">
    <div class="contain">
        <div class="container">
            <div class="title1">
                <label>Reset Password!</label>
                <p>Create new password and confirm new!</p>
            </div>
            <div class="contain-email">
                <form action="ResetPassword.jsp" method="post">
                    <input type="password" name="newpass" required class="newpass" placeholder="New Password">
                    <input type="password" name="cfpass" required class="cfpass" placeholder="Confirm New Password">
                    <button type="submit" name="repass" id="repass">Submit</button>
                </form>
            </div>
        </div>
    </div>

    <%
        HttpSession mysession = request.getSession();
        String name = (String) mysession.getAttribute("name");
        String newPassword = "";
        String confPassword = "";
        newPassword = (String) request.getParameter("newpass");
        confPassword = (String) request.getParameter("cfpass");
        
        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
            System.out.println("\nhahahaha" + name + "\t" + newPassword);
            dataExecute.accountData.RePass(name, newPassword);
    %>
                <script>
                    alert("Reset Password Successfully!");
                    window.location.href = 'Login.jsp'; // Redirect to login page
                </script>
    <%
        } else if (newPassword != null && confPassword != null && !newPassword.equals(confPassword)){
    %>
                <script>
                    alert("Error: Your passwords do not match. Please check and re-enter.");
                </script>
    <%
        }
    %>
    </body>
</html>

