<%-- 
    Document   : Menupage
    Created on : Jun 4, 2024, 12:54:20 PM
    Author     : Jiang
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="menu.css">
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Menu</title>
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
            <label class="title">MENU</label>
            <div class="contain-option">
                <div>
                    <button class="butts" id="allbut" onclick="show(event, 'all', 'allbut')">Food & Drink</button>
                    <button class="butts" id="foodbut" onclick="show(event, 'food', 'foodbut')">Food</button>
                    <button class="butts" id="drinkbut" onclick="show(event, 'drink', 'drinkbut')">Drink</button>
                </div>
            </div>
            <%
                    ResultSet rs = dataExecute.menuData.selectMenuSet();
                    ResultSet rsd = dataExecute.menuData.selectDrink();
                    ResultSet rsf = dataExecute.menuData.selectFood();
                    int maxsize = 20;
                    String[] Mid = new String[maxsize];
                    String[] price = new String[maxsize];
                    String[] name = new String[maxsize];
                    String[] Midd = new String[maxsize];
                    String[] priced = new String[maxsize];
                    String[] named = new String[maxsize];
                    String[] Midf = new String[maxsize];
                    String[] pricef = new String[maxsize];
                    String[] namef = new String[maxsize];

                    int ctd= 0;
                    while(rsd.next()){
                        Midd[ctd] = rsd.getString("Menu_ID");
                        named[ctd] = rsd.getString("Name");
                        priced[ctd] = "$" + rsd.getString("Price");
                        ctd++;
                    }
                    
                    int ctf = 0;
                    while(rsf.next()){
                        Midf[ctf] = rsf.getString("Menu_ID");
                        namef[ctf] = rsf.getString("Name");
                        pricef[ctf] = "$" + rsf.getString("Price");
                        ctf++;
                    }
                    
                    int ct = 0;
                    while(rs.next()){
                        Mid[ct] = rs.getString("Menu_ID");
                        name[ct] = rs.getString("Name");
                        price[ct] = "$" + rs.getString("Price");
                        ct++;
                    }
            %>
            <div class="contain" id="all">
                 <div class="col-1">
                    <%for (int i=0; i<ct; i++) if (i%3==0) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Mid[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + name[i] + "</label>"
                        + "<label>" + price[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
                <div class="col-2">
                    <%for (int i=0; i<ct; i++) if (i%3==2) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Mid[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + name[i] + "</label>"
                        + "<label>" + price[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
                <div class="col-3">
                   <%for (int i=0; i<ct; i++) if (i%3==1) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Mid[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + name[i] + "</label>"
                        + "<label>" + price[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
            </div>
            <div class="contain" id='food'>
                 <div class="col-1">
                    <%for (int i=0; i<ctf; i++) if (i%3==0) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Midf[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + namef[i] + "</label>"
                        + "<label>" + pricef[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
                <div class="col-2">
                    <%for (int i=0; i<ctf; i++) if (i%3==2) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Midf[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + namef[i] + "</label>"
                        + "<label>" + pricef[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
                <div class="col-3">
                   <%for (int i=0; i<ctf; i++) if (i%3==1) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Midf[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + namef[i] + "</label>"
                        + "<label>" + pricef[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
            </div>
            <div class="contain" id='drink'>
                 <div class="col-1">
                    <%for (int i=0; i<ctd; i++) if (i%3==0) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Midd[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + named[i] + "</label>"
                        + "<label>" + priced[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
                <div class="col-2">
                    <%for (int i=0; i<ctd; i++) if (i%3==2) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Midd[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + named[i] + "</label>"
                        + "<label>" + priced[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
                </div>
                <div class="col-3">
                   <%for (int i=0; i<ctd; i++) if (i%3==1) 
                        out.print("<div class='contain-img'>"
                        + "<img class='pic' src='./image/Menu/" + Midd[i] + ".jpg'/>"
                        + "<div class=show-info>"
                        + "<label>" + named[i] + "</label>"
                        + "<label>" + priced[i] + "</label>"
                        + "</div>"
                        + "</div>");
                    %>
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
            function show(event, id, id1){
                event.preventDefault();
                var elements = document.getElementsByClassName('contain');
                var element = document.getElementsByClassName('butts');
                for (var i = 0; i < elements.length; i++) {
                    elements[i].style.display = 'none';
                    element[i].style.fontWeight = '400';
                }
                document.getElementById(id).style.display = 'flex';
                document.getElementById(id1).style.fontWeight = '700';
            }
        </script>
    </body>
</html>
