<%-- 
    Document   : Bookingpage
    Created on : May 28, 2024, 1:20:03 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="booking.css">
        <title>JSP Page</title>
    </head>
    <body class="Bookingpage">
        <img class="Bgr" src="image/Booking-bgr.png"/>
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
        <div class="contain-book">
            <div class="book">
                <p class="BookingIntro">Your Cyber Seat Awaits – Book a Computer!</p>
                <a class="BookHere" href="#title1"><u>Book here</u></a>
            </div>
        </div>
        <div id="title1"></div>
        <div class="Title" >
            <label>Computer Rental</label>
        </div>
        <div class="SelectType">
            <select>
                <option selected>Choose area</option>
                <option>VIP</option>
                <option>Gaming</option>
                <option>Normal</option>
            </select>
        </div>
        <div class="Rectangle">
            <div class="contain-rect">
                <div class="Rect">
                    <div class="content">
                        <label>viet mo ta cai may tinh</label>
                    </div>
                    <div class="group">
                        <form action="search" method="post">
                            <table>
                                <tr class="date">
                                    <td class="label">Date:</td>
                                    <td><input type="date" name="booking-day"></td>
                                </tr>
                                <tr class="starttime">
                                    <td class="label">Start Time:</td>
                                    <td><input type="time" name="start-time"</td>
                                </tr>
                                <tr class="endtime">
                                    <td class="label">End Time:</td>
                                    <td><input type="time" name="end-time" ></td>
                                </tr>
                                <tr class="quantities">
                                    <td class="label">Quantity:</td>
                                    <td><input type="number" name="quantity"></td>
                                </tr>
                            </table>
                            <div class="contain-button">
                                <button type="submit">Check</button>  
                            </div>                      
                        </form>
                        <div class="annouce" >
                            <label >Having Computer</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="title2"></div>
        <div class="Title">
            <label>Order Food & Drink</label>
        </div>
        <div class="Rectangle">
            <div class="contain-rect">
                <div class="Rect">
                    <div class="contain-food">
                        <div class="contain">
                            <table class="food-table">
                                <tr>
                                    <th>ID</th>
                                    <th>Food</th>
                                    <th>Status</th>
                                    <th>Quantity</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                            </table>                        
                        </div>
                    </div>
                    <div class="contain-drink">
                        <div class="contain">
                            <table class="drink-table">
                                <tr>
                                    <th>ID</th>
                                    <th>Drink</th>
                                    <th>Status</th>
                                    <th>Quantity</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Hamburger</td>
                                    <td><input type="checkbox"></td>
                                    <td><input type="number" style="width: 70%"></td>
                                </tr>
                            </table>
                        </div> 
                    </div>
                </div>
                <div class="contain-button">
                    <div>
                        <button>Order</button>
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
