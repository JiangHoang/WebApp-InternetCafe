<%-- 
    Document   : Homepage
    Created on : May 26, 2024, 7:24:58 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="home.css">
        <title>Home Page</title>
    </head>
    <body class="Homepage">         
        <img class="Bgr" src="image/homepage-bgr.png"/>
        <div><a href="Homepage.jsp"><img class ="Logo" src="image/logo(white).png"/></a></div>

        <div class="Header">
            <nav>
                <ul>
                    <li><a href="Homepage.jsp" class="Home">HOME</a></li>
                    <li><a href="AboutUspage.jsp" class="About">ABOUT</a></li>
                    <li><a href="Specspage.jsp" class="Specs">SPECS</a></li>
                    <li><a href="Gamespage.jsp" class="Games">GAMES</a></li>
                    <li><a href="Menupage.jsp" class="Menu">MENU</a></li>
                    <li><a href="Bookingpage.jsp" class="Booking">BOOKING</a></li>
                    <li><a href="Acountpage.jsp" class="Account">ACCOUNT</a></li>
                </ul>
            </nav>
        </div>

        <div class="Welcome">
            <span class="id1" >Welcome to<br/></span>
            <span class="id2">Internet Café</span>
        </div>
        <div class="slogan">
            <p class="Brief">Internet Café offers a serene retreat in the heart of the city, where state-of-the-art technology meets tranquil ambiance. Enjoy high-speed internet, gourmet refreshments, and a peaceful atmosphere for work, study, or play</p>
            <p><a href="AboutUspage.jsp" class="SeeMore">See more</a></p>
        </div>
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
    </body>
</html>
