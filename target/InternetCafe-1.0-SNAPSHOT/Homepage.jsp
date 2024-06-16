<%-- 
    Document   : Homepage
    Created on : May 26, 2024, 7:24:58 PM
    Author     : Jiang
--%>
<%@page import="dataExecute.feedbackData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
        <link rel="stylesheet" type="text/css" href="home.css">

        <title>Home</title>
    </head>
    <body class="Homepage">
        <%
            String cid = "";
            Cookie[] cookies = null;
            cookies = request.getCookies();
            if( cookies != null ){
               for (int i = 0; i < cookies.length; i++){
                    if(cookies[i].getName().equals("cid")){
                        cid = cookies[i].getValue();
                        break;
                    }
               }
            }
        %>
        <img class="Bgr" src="image/homepage-bgr.png"/>
        <div class="headerbox">
            <a href="Homepage.jsp"><img class="Logo" src="image/logo.png"/></a>
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
                <span class="id1">Welcome to<br/></span>
                <span class="id2">Internet Café</span>
            </div>
            <div class="slogan">
                <p class="Brief">Internet Café offers a serene retreat in the heart of the city, where state-of-the-art technology meets tranquil ambiance. Enjoy high-speed internet, gourmet refreshments, and a peaceful atmosphere for work, study, or play</p>
                <p><a href="AboutUspage.jsp" class="SeeMore">See more</a></p>
            </div>
        </div>
        <div class="feedback-summary">
            <div class="feedback">
                <div class="title">
                    <label>Customer Think About Us</label>
                </div>
                <div class="contain-slide">
                    <%
                        try {
                            ResultSet feedback = dataExecute.feedbackData.selectFeedback();
                            while (feedback.next()) {
                                String des = feedback.getString("Description");
                                String name = feedback.getString("Name");
                                int rate = feedback.getInt("Rate");
                    %>
                    <div class="contain-personal-feedback">
                        <div class="personal-feedback">
                            <div class="info">
                                <img class="avatar" src="image/kyobigames.png"/>
                                <label class="acc"><%=name%></label>
                            </div>
                            <div class="rate">
                                <%
                                    for (int i = 0; i < 5; i++) {
                                        if (rate > 0) {
                                %>
                                <span class="fa fa-star rated" id="id"></span>
                                <%
                                        } else {
                                %>
                                <span class="fa fa-star" id="id"></span>
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
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </div>
        </div>
        <form action="Homepage.jsp" method="POST" id="feedbackForm">
            <%
            String Description = "";
            String Rate = "";
            String Name = "";
            %>
            <div class="contain-feedback">
                <div class="title">
                    <label>Feedback</label>
                </div>
                <div class="Rectangle">
                    <div class="feedback">
                        <div class="rate">
                            <div class="contain-star">
                                <div class="star" id="id" value="">
                                    <%
                                        int R = 90;
                                        for (int i = 4; i >= 0; i--) {
                                            double x = Math.cos(i * (Math.PI) / 6 + Math.PI / 6) * R + R / 1.1;
                                            double y = Math.sin(i * (Math.PI) / 6 + Math.PI / 6) * R - Math.sqrt(3) * R / 4;
                                            String s = "style=\"bottom:" + y + "px; left: " + x + "px; position: absolute\"";
                                            out.print("<span class='fa fa-star rating' id='star" + i + "' " + s + "></span>");
                                        }
                                    %>
                                </div>
                                <input type="hidden" name="starRating" id="rateid" value="">
                                <script>
                                    document.addEventListener('DOMContentLoaded', function() {
                                        const starid = document.getElementById('rateid');
                                        const stars = document.querySelectorAll('.rating');
                                        stars.forEach((star, index) => {
                                            star.addEventListener('click', function() {
                                                stars.forEach(s => s.classList.remove('clicked'));
                                                for (let i = 0; i <= index; i++) {
                                                    stars[i].classList.add('clicked');
                                                }
                                                starid.value = index + 1;
                                                console.log("Star Rating:", starid.value)
                                            });
                                        });
                                    });
                                </script>
                            </div>
                            <label class="label1">HELP US TO IMPROVE</label>
                            <label class="label2">Tell us what you think!</label>
                        </div>
                        <div style="width: 0.3vh; background-color: gray; margin: 5% auto;"></div>
                        <div class="contain-form">
                            <div class="fbform">
                                <div class="name">
                                    <label>Name:</label>
                                    <input type="text" name="name" value="" required>
                                    <script>
                                        document.getElementsByName("name")[0].addEventListener('input', function() {
                                        console.log("Name:", this.value);
                                    });
                                    </script>
                                </div>
                                <div class="des">
                                    <label>Feedback:</label>
                                    <textarea class="fb" name="description" cols="50" rows="5" value="" required></textarea>
                                    <script>
                                        document.getElementsByName("description")[0].addEventListener('input', function() {
                                        console.log("Description:", this.value);
                                    });
                                    </script>
                                    
                                </div>
                                <%
                                    String desString = request.getParameter("description");
                                    String rating = request.getParameter("starRating");
                                    String nameString = request.getParameter("name");
                                    
                                    Description = desString;
                                    Rate = rating;
                                    Name = nameString;
                                %>
                                <button type="button" name="feedback" class="btn feedbackbutt" data-toggle="modal" data-target="#exampleModalCenter">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Confirm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Are you sure you want to submit your feedback?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn" data-dismiss="modal">No</button>
                            <button type="submit" class="btn accept">Yes</button>
                            <%
                                System.out.println("\n" + Description + "\t" + Name + "\t" + Rate);
                                dataExecute.feedbackData.insertFeedback(Description, Name, Rate, cid);
                                if (request.getParameter("accept") != null) {
                                    System.out.println("success");
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div class="Footer">
            <div class="Contact">
                <p><u>Contact</u></p>
                <p class="Phone">📞 Phone: (+84) 88888888</p>
                <p class="Email">✉️ Email: internetcafe@gmail.com</p>
                <p class="Office">📍 Office: 123 Street 2, Direct 2, Ho Chi Minh City, VietNam</p>
            </div>
            <div class="Support">
                <p><u>Support</u></p>
                <p class="Feedback">Feedback</p>
                <p class="PrivacyPolicy">Privacy Policy</p>
            </div>
            <div class="Acc">
                <p><u>Account</u></p>
                <p class="MyAccount">My account</p>
                <p class="ViewAllOrders">View all orders</p>
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
