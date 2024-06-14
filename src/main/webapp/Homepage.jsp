<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
=<%-- 
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
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Home</title>
    </head>
    <body class="Homepage">         
        <img class="Bgr" src="image/homepage-bgr.png"/>
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
        <div>
            <div class="Welcome">
                <span class="id1" >Welcome to<br/></span>
                <span class="id2">Internet Café</span>
            </div>
            <div class="slogan">
                <p class="Brief">Internet Café offers a serene retreat in the heart of the city, where state-of-the-art technology meets tranquil ambiance. Enjoy high-speed internet, gourmet refreshments, and a peacefdiv atmosphere for work, study, or play</p>
                <p><a href="AboutUspage.jsp" class="SeeMore">See more</a></p>
            </div>
        </div>
        <div class="feedback-summary">
            <div class="feedback">
                <div class='title'>
                    <label>Customer Think About Us</label>
                </div>
                
                <div class="contain-slide">
                    <%
                        ResultSet feedback = dataExecute.feedbackData.selectFeedback();
                        while (feedback.next()){
                            String des = feedback.getString("Description");
                            String name = feedback.getString("Name");
                            int rate = feedback.getInt("Rate");
                    %>
                    <div class="contain-personal-feedback ">
                        <div class="personal-feedback">
                            <div class="info">
                                <img class="avatar" src="image/kyobigames.png"/>
                                <label class="acc"><%=name%></label>
                            </div>
                            <div class="rate">
                                <%
                                    for (int i = 0; i < 5 ; i++){
                                        if (rate > 0){
                                %>
                                <span class='fa fa-star clicked' id='id'></span>
                                <%
                                        } else {
                                %>
                                <span class='fa fa-star' id='id'></span>
                                <%
                                        }
                                        rate--;
                                    }
                                %>
                            </div>
                            <div class="description">
                                <p><%=des%></p>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <div class="contain-feedback">
            <div class="title">
                <label>Feedback</label>
            </div>
            <div class="Rectangle">
                <div class="feedback">
                    <div class="rate">
                        <div class="contain-star" onclick="showstar()">
                            <div class="star" id="id">
                                <%
                                    int R = 90;
                                    for(int i=4; i>=0; i--){
                                        double x = Math.cos(i*(Math.PI)/6 + Math.PI/6)*R + R/1.1;
                                        double y = Math.sin( i*(Math.PI)/6 + Math.PI/6)*R - Math.sqrt(3)*R/4;
                                        String s = "style = \"bottom:" + y + "px; left: " + x +"px; position: absolute\"";
                                        out.print("<span class='fa fa-star' id='id" + i + "'" + s +"></span>");
                                    }
                                %>
                            </div>
                        </div>
                        <label class="label1">HELP US TO IMPROVE</label>
                        <label class="label2">Tell us what you think!</label>
                    </div>
                    <div style="width: 1px; height: 30vh; background-color: gray; margin: 5% auto;"></div>        
                    <div class="contain-form">
                        <form>
                            <div>
                                <label>Name:</label>
                                <input type="text">
                            </div>
                            <div>
                                <label>Feedback:</label>
                                <textarea class="fb" cols="50" rows="5"></textarea>
                            </div>
                            <button type="submit">Submit</button>
                        </form>
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
        document.addEventListener('DOMContentLoaded', function() {
            const stars = document.querySelectorAll('.fa-star');

            stars.forEach((star, index) => {
                star.addEventListener('click', function() {
                    stars.forEach(s => s.classList.remove('clicked'));

                    for (let i = 0; i <= index; i++) {
                        stars[i].classList.add('clicked');
                    }
                });
            });
        });
        </script>
    </body>
</html>
