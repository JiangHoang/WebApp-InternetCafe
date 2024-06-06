<%-- 
    Document   : AboutUspage
    Created on : May 26, 2024, 10:08:33 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link rel="stylesheet" type="text/css" href="aboutus.css">
    </head>
    <body class="Aboutuspage">
        <img class="image" src="/image/aboutme.png"/>
        <div class="headerbox">
            <a href="Homepage.jsp"><img class ="Logo" src="image/logo.png"/></a>
            <div class="Header">
                <nav>
                    <ul>
                        <li><a href="Homepage.jsp" class="Home">HOME</a></li>
                        <li><a href="AboutUspage.jsp" class="About">ABOUT</a></li>
                        <li><a href="Specspage.jsp" class="Specs">SPECS</a></li>
                        <li><a href="Gamespage.jsp" class="Games">GAMES</a></li>
                        <li><a href="Menupage.jsp" class="Menu">MENU</a></li>
                        <li><a href="Bookingpage.jsp" class="Booking">BOOKING</a></li>
                        <li><a href="Accountpage.jsp" class="Account">ACCOUNT</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="FooterBG">
            <div class="Footer">
                <div class="Contact">
                    <p><u>Contact</u></p>
                    <p><a class="Phone">📞 Phone: (+84) 88888888</a></p>
                    <p><a class="Email">✉️ Email: internetcafe@gmail.com</a></p>
                    <p><a class="Office">📍 Office: 123 Street 2, Direct 2, Ho Chi Minh City, VietNam</a></p>
                </div>
                <div class="Support">
                    <p><u>Support</u></p>
                    <p><a class="Feedback">Feedback</a></p>
                    <p><a class="PrivacyPolicy">Privacy Policy</a></p>
                </div>
                <div class="Acc">
                    <p><u>Account</u></p>
                    <p><a class="MyAccount">My account</a></p>
                    <p><a class="ViewAllOrders">View all orders</a></p>
                </div>
            </div>
        </div>
    </body>
</html>
