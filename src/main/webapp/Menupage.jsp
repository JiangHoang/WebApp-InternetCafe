<%-- 
    Document   : Menupage
    Created on : Jun 4, 2024, 12:54:20 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="menu.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Menu Page</title>
    </head>
    <body class="Menupage">
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
        <div class="contain-menu">
            <label class="title">Menu</label>
            <div class="contain-option">
                <label>Type</label>
                <button>Food</button>
                <button>Drink</button>
            </div>
            <div class="contain-drink">
                <div class="w3-row-padding" id="myGrid" style="margin-bottom:128px">
                    <div class="w3-third">
                        <img src="./image/Menu/2.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;" >
                        <img src="./image/Menu/6.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        
                    </div>
                    <div class="w3-third">
                        
                        <img src="./image/Menu/4.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        <img src="./image/Menu/5.jpg"style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                    </div>
                    <div class="w3-third">
                        <img src="./image/Menu/3.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        <img src="./image/Menu/1.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                    </div>
                </div>
            </div>
            <div class="contain-food">
                <div class="w3-row-padding" id="myGrid" style="margin-bottom:128px">
                    <div class="w3-third">
                        <img src="./image/Menu/2.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        <img src="./image/Menu/2.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        <img src="./image/Menu/2.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                    </div>
                    <div class="w3-third">
                        <img src="./image/Menu/2.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;" >
                        <img src="./image/Menu/6.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        <img src="./image/Menu/1.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                    </div>
                    <div class="w3-third">
                        <img src="./image/Menu/3.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        <img src="./image/Menu/4.jpg" style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                        <img src="./image/Menu/5.jpg"style="width:100%; margin-bottom: 10px; border: 1px solid gray;">
                    </div>
                </div>
            </div>
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
        <script>
        window.addEventListener('scroll', function() {
            const header = document.getElementsByClassName("headerbox");
            if (window.scrollY > 0) {
                document.body.classList.add('scrolled');
            } else {
                document.body.classList.remove('scrolled');
            }
        });
        </script>
    </body>
</html>
