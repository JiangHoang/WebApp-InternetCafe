<%-- 
    Document   : Account
    Created on : Jun 1, 2024, 10:53:46 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="account.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <title>Account Page</title>
    </head>
    <body class="Accountpage">
        <div class="headerbox">
            <a href="Homepage.jsp"><img class ="Logo" src="image/logo.png"></a>
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
        <div class="contain-myaccount">
            <div class="title">
                <label>My Account</label>
            </div>
            <div class="myaccount">
                <div class="Rectangle">
                    
                </div>
                <div class="info">
                    <div class="circle">
                        
                    </div>
                    <label>account name</label>
                </div>
                <div class="contain-editinfo">
                    <div class="edit-infor">
                        <ul>
                            <li id="id1">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Display name</label>
                                        <label class="label2">Name</label>
                                    </div>
                                    <button onclick="showbox(event, 'change-account', 'id1')">Edit</button>
                                </div>
                                <div class="change-account">
                                    <div class="annouce">
                                        <label class="label1">Change your account</label>
                                        <label class="label2">Enter your new account and existing password</label>
                                    </div>
                                    <form>
                                        <div class="edit">
                                            <label>New account</label>
                                            <input type="text">
                                        </div>
                                        <div class="edit">
                                            <label>Current password</label>
                                            <input type="password">
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" value="Cancel" onclick="hiddenbox(event, 'change-account', 'id1')">
                                            <input type="button" value="Update" onclick="hiddenbox(event, 'change-account', 'id1')">
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li id="id2">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Password</label>
                                        <label class="label2">pass</label>
                                    </div>
                                    <button onclick="showbox(event, 'change-password', 'id2')">Edit</button>
                                </div>
                                <div class="change-password">
                                    <div class="annouce">
                                        <label class="label1">Change your password</label>
                                        <label class="label2">Enter your current password and a new password</label>
                                    </div>
                                    <form>
                                        <div class="edit">
                                            <label>Current password</label>
                                            <input type="password" >
                                        </div>
                                        <div class="edit">
                                            <label>New password</label>
                                            <input type="password" >
                                        </div>
                                        <div class="edit">
                                            <label>Confirm new password</label>
                                            <input type="password" >
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" value="Cancel" onclick="hiddenbox(event, 'change-password', 'id2')">
                                            <input type="button" value="Update" onclick="hiddenbox(event, 'change-password', 'id2')">
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li id="id3">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Email</label>
                                        <label class="label2">email@aaa.com</label>
                                    </div>
                                    <button onclick="showbox(event, 'change-email', 'id3')">Edit</button>
                                </div>
                                <div class="change-email">
                                    <div class="annouce">
                                        <label class="label1">Change your email</label>
                                        <label class="label2">Enter your new email and existing password</label>
                                    </div>
                                    <form>
                                        <div class="edit">
                                            <label>New email</label>
                                            <input type="email" >
                                        </div>
                                        <div class="edit">
                                            <label>Current password</label>
                                            <input type="password" >
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" value="Cancel" onclick="hiddenbox(event, 'change-email', 'id3')">
                                            <input type="button" value="Update" onclick="hiddenbox(event, 'change-email', 'id3')">
                                        </div>
                                    </form>
                                </div>
                            </li> 
                            <li id="id4">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Phone</label>
                                        <label class="label2">099999999</label>
                                    </div>
                                    <button onclick="showbox(event, 'change-phone', 'id4')">Edit</button>
                                </div>
                                <div class="change-phone">
                                    <div class="annouce">
                                        <label class="label1">Change your phone number</label>
                                        <label class="label2">Enter your new phone number and existing password</label>
                                    </div>
                                    <form>
                                        <div class="edit">
                                            <label>New phone number</label>
                                            <input type="tel" >
                                        </div>
                                        <div class="edit">
                                            <label>Current password</label>
                                            <input type="password" >
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" value="Cancel" onclick="hiddenbox(event, 'change-phone', 'id4')">
                                            <input type="button" value="Update" onclick="hiddenbox(event, 'change-phone', 'id4')">
                                        </div>
                                    </form>
                                </div>
                            </li>  
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="contain-ordered">
            <div class="title">
                <label>Ordered Recording</label>
            </div>
            <div class="myorder">
                <div class="order">
                    
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

        function showbox(event, classname, id){
            event.preventDefault();
            var elements = document.getElementsByClassName(classname);
            for (var i = 0; i < elements.length; i++) {
                elements[i].style.visibility = 'visible';
            }
            document.getElementById(id).style.height = 'fit-content';
        }

        function hiddenbox(event, classname, id){
            event.preventDefault();
            var elements = document.getElementsByClassName(classname);
            for (var i = 0; i < elements.length; i++) {
                elements[i].style.visibility = 'hidden';
            }
            document.getElementById(id).style.height = '10vh';
        }
        </script>
    </body>
</html>
