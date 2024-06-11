<%-- 
    Document   : Homepage
    Created on : May 26, 2024, 7:24:58 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Ordering</title>
        <link rel="stylesheet" type="text/css" href="order.css">
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
    </head>
    <body class="Orderpage">
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
        <div class="order">
            <div class="title">
                <label>Order Information</label>
            </div>
            <form>
                <div class="contain-userinfo">
                    <div class="title1">
                        <label>Your Information</label>
                    </div>
                    <div class="contain-table">
                        <table class="Userinfo">
                            <tr>
                                <td class="colum1">Account</td>
                                <td><input type="text" class="account" value="motcaihamgidodegoiaccount" disabled></td>
                            </tr>
                            <tr>
                                <td class="colum1">Email</td>
                                <td><input type="email" class="email" value="abc@gmail.com" disabled></td>
                            </tr>
                            <tr>
                                <td class="colum1">Phone</td>
                                <td><input type="tel" class="phone" value="088888888" disabled></td>
                            </tr>
                            <tr>
                                <td class="colum1">Payment method</td>
                                <td>
                                    <select name="payment-method">
                                        <option value="Credit">Credit Card</option>
                                        <option value="Credit">Debit Card</option>
                                        <option value="Online">Internet Banking</option>
                                    </select>
                                </td>
                            </tr>
                        </table>   
                    </div>
                    <div class="agree">
                        <input type="checkbox">
                        <label>I agree with Terms & Conditions</label>
                    </div>
                    <button type="submit" class="finishorder">Submit</button>
                </div>
                <div class="items-ordered">
                    <div class="title1">
                        <label>Your Cart</label>
                    </div>
                    <div class="contain-list">
                        <ul>
                            <li>
                                <div>
                                    <div class="product">VIP</div>
                                    <label class="type">Computer</label><br>
                                    <label class="quantity">x2</label>
                                </div>
                                <span class="money">5$</span>
                                
                            </li>
                            <li>
                                <div>
                                    <div class="product">Coca</div>
                                    <label class="type">Drink</label><br>
                                    <label class="quantity">x2</label>
                                </div>
                                <span class="money">5$</span>
                            </li>
                            <li>
                                <div>
                                    <div class="coupon">Coupon</div>
                                    <label class="code">Code</label><br>
                                </div>
                                <span class="money">-5$</span>
                            </li>
                            <li>
                                <div>
                                    <div class="total">Total</div>
                                </div>
                                <span class="money">5$</span>
                            </li>
                        </ul>
                    </div>
                    <div class="enter-coupon">
                        <input type="text" class="couponid" placeholder="Enter Your Coupon">
                        <button class="add-coupon" type="button">Add</button>
                    </div>
                </div>
            </form>
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
