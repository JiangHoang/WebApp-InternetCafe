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
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
        <link rel="stylesheet" type="text/css" href="menu.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Menu</title>
    </head>
    <body class="Menupage">
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
                        <a href="Login.jsp" class="log"><svg xmlns="http://www.w3.org/2000/svg" height="4.3vh" viewBox="-10 -1010 960 960" width="4.3vh" fill="#fff"><path d="M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h280v80H200v560h280v80H200Zm440-160-55-58 102-102H360v-80h327L585-622l55-58 200 200-200 200Z"/></svg></a>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="contain-menu">
            <div class="contain-option">
                <label class="title">MENU</label>
                <select onchange="show(this.options[this.selectedIndex].dataset.category, this.options[this.selectedIndex].id)">
                    <option id="allbut" data-category="all" selected>Sort By</option>
                    <option id="allbut" data-category="all">Food & Drink</option>
                    <option id="foodbut" data-category="food">Food</option>
                    <option id="drinkbut" data-category="drink">Drink</option>
                </select>
                <script>
                    function show(category, buttonId) {
                        let contents = document.querySelectorAll('.contain');
                        contents.forEach(content => {
                            content.classList.remove('active');
                        });

                        let buttons = document.querySelectorAll('option');
                        buttons.forEach(button => {
                            button.classList.remove('active');
                        });

                        document.getElementById(category).classList.add('active');

                        document.getElementById(buttonId).classList.add('active');
                    }
                </script>
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
            <div class="contain active" id="all">
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
