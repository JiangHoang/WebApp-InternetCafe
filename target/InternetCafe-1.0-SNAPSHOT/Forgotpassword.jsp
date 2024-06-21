<%-- 
    Document   : Forgotpassword
    Created on : Jun 20, 2024, 12:35:39 PM
    Author     : Jiang
--%>

<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Forgot Password Page</title>
    </head>
    <body class="forgotpassword">
        <div class="contain">
            <div class="container">
                <div class="title1">
                    <label>Forgot Password</label>
                    <p>Enter your email, phone, or username and we'll send you a link to change a new password</p>
                </div>
                <div class="contain-email">
                    <form action="Forgotpassword.jsp" method="post">
                        <input type="text" name="name" placeholder="Your account" required>
                        <input type="email" name="email" placeholder="Your Email" required>
                        <div>
                            <button type="submit" class="conti" name="conti">Continue</button>
                            <button onclick="window.location.href='Login.jsp'">Cancel</button>
                        </div>
                        <%
                            String name = request.getParameter("name");
                            String email = request.getParameter("email");
                            String message = null;
                            boolean validUser = false;

                            if (request.getParameter("conti") != null && name != null && email != null) {
                                ResultSet res = dataExecute.accountData.SelectAccount();
                                while (res.next()) {
                                    String acc = res.getString("Account");
                                    String ema = res.getString("Email");
                                    if (name.equals(acc) && email.equals(ema)) {
                                        validUser = true;
                                        break;
                                    }
                                }

                                if (validUser) {
                                    HttpSession mySession = request.getSession();
                                    int otpvalue = new Random().nextInt(999999);

                                    Properties props = new Properties();
                                    props.put("mail.smtp.host", "smtp.gmail.com");
                                    props.put("mail.smtp.socketFactory.port", "465");
                                    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                                    props.put("mail.smtp.auth", "true");
                                    props.put("mail.smtp.port", "465");
                                    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
                                        protected PasswordAuthentication getPasswordAuthentication() {
                                            return new PasswordAuthentication("Httgiang102@gmail.com", "funezkzrkwodeasy");
                                        }
                                    });

                                    try {
                                        MimeMessage mailMessage = new MimeMessage(mailSession);
                                        mailMessage.setFrom(new InternetAddress("Httgiang102@gmail.com"));
                                        mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
                                        mailMessage.setSubject("Password Reset Code");
                                        mailMessage.setText("Your code is: " + otpvalue);
                                        Transport.send(mailMessage);
                                        
                                        mySession.setAttribute("name", name);
                                        mySession.setAttribute("otp", otpvalue);
                                        mySession.setAttribute("email", email);
                                        response.sendRedirect("Verify.jsp");
                                    } catch (MessagingException e) {
                                    }
                                } else {
                                    message = "Invalid account or email!";
                                }
                            }
                        %>
                    <%
                        if (message != null) {
                    %>
                        <script>
                            alert("<%= message %>");
                        </script>
                    <%
                        }
                    %>
                    </form>
                </div>    
            </div>
        </div>
    </body>
</html>
