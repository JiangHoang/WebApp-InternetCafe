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
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
    </head>
    <body class="Aboutuspage">
        <div class="headerbox">
            <a href="Homepage.jsp"><img class ="Logo" src="image/logo.png"></a>
            <div class="Header">
                <nav>
                    <ul>
                        <li><a href="Homepage.jsp">HOME</a></li>
                        <li><a href="AboutUspage.jsp">ABOUT</a></li>
                        <li><a href="Specspage.jsp">SPECS</a></li>
                        <li><a href="Menupage.jsp">MENU</a></li>
                        <li><a href="Bookingpage.jsp">BOOKING</a></li>
                        <li><a href="Accountpage.jsp">ACCOUNT</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="content">
            <div class="brief">
                <div><img class="image" src="image/aboutme.png"/></div>
                <div class="script">
                    <div class="title">ABOUT INTERNET CAFÉ</div>
                    <p>At Internet Café, we believe in creating a harmonious blend of technology and tranquility. Located in the heart of the city, our café is designed to be a serene oasis where digital connectivity meets relaxation. Whether you're a freelancer looking for a peaceful place to work, a gamer seeking the best online experience, or a student needing a quiet spot for study and research, Internet Café is your perfect destination.</p>
                </div>
            </div>
            <div class="mv">
                <div class="title">Mission & Vision</div>
                <p>Our mission is to provide a premium internet café experience where our customers can connect, create, and collaborate in a serene and comfortable environment. We strive to offer the latest technology, high-speed internet, and exceptional customer service to ensure every visit is productive and enjoyable.</p>
                <p>At Internet Café, we envision a community where digital innovation and relaxation coexist. We aim to be more than just an internet café; we want to be a hub for creativity, collaboration, and connection. Our space is designed to inspire and support your digital endeavors, whether you're working on a groundbreaking project, diving into an epic gaming session, or simply catching up on the latest news.</p>
            </div>
            <div class="reason">
                <div class="title">Why Choose Internet Café?</div>
                <ul>
                    <li>High-Speed Internet: Our state-of-the-art internet infrastructure guarantees lightning-fast and reliable connectivity, ensuring you stay connected without interruptions.</li>
                    <li>Comfortable Ambiance: Designed with your comfort in mind, our café features cozy seating, ambient lighting, and a calm, zen-like atmosphere to help you focus and unwind.</li>
                    <li>Cutting-Edge Technology: From high-performance gaming rigs to top-of-the-line workstations, we equip our café with the best hardware to meet all your digital needs.</li>
                    <li>Refreshments and Snacks: Enjoy a selection of gourmet coffees, teas, and delicious snacks to keep you energized throughout your stay.</li>
                    <li>Community and Events: Join our community of like-minded individuals and participate in our regular events, workshops, and gaming tournaments.</li>
                </ul>
                </div>
            <div class="service">
                <div class="title">Services</div>
                <ul>
                    <li>Internet Access: Ultra-fast internet with both wired and wireless options to suit your preference.</li>
                    <li>Workstations: High-performance PCs designed for various needs, including gaming, graphic design, programming, and everyday browsing.</li>
                    <li>Printing and Scanning: Convenient access to printing and scanning services for all your document needs.</li>
                    <li>Private Rooms: Quiet rooms available for meetings, study groups, and private gaming sessions, ensuring you have a space for focused activities.</li>
                    <li>Lounge Area: A relaxing space where you can unwind, read, or socialize with friends, making it more than just an internet café.</li>
                </ul>
            </div>
            <div class="Join">
                <div class="title">Join Us Today!</div>
                <p>Step into Internet Café and discover a place where technology and tranquility coexist. Whether you're here for work, study, or play, we're committed to providing an exceptional experience that keeps you coming back. Visit us today and become a part of the Internet community!</p>
            </div>
            <div class="Connect">
                <div class="title">Connect with Us</div>
                <div>
                    <p>Stay updated on our latest events, promotions, and community news by following us on social media. Join our mailing list for exclusive offers and updates.</p>
                    <label>Facebook: InternetCafé</label>
                    <label>Twitter: @InternetCafé</label>
                    <label>Instagram: @InternetCafé</label>
                </div>
            </div>
        </div>
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
