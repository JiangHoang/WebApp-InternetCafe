<%-- 
    Document   : Bookingpage
    Created on : May 28, 2024, 1:20:03 PM
    Author     : Jiang
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="booking.css">
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
        <title>Booking</title>
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
        <form action="#title1">
            <div class="Title" >
                <label>Computer Rental</label>
            </div>
            <div class="Rectangle">
                <div class="contain-rect">
                    <div class="Rect">
                        <div class="content">
                            <div class="butts">
                                <button class="but" id="but1" onclick="show(event, 'infor', 'normal', 'but1')">Normal</button>
                                <button class="but" id="but2" onclick="show(event, 'infor', 'vip', 'but2')">VIP</button>
                                <button class="but" id="but3" onclick="show(event, 'infor', 'gaming', 'but3')">Gaming</button>
                            </div>
                            <div class="infor normal">
<!--                                <div class="area">Normal Area</div>-->
                                <ul>
                                    <li>MSI Pro MP275/27 inch (1920x1080)/IPS 100Hz</li>
                                    <li>Office 26 Intel Core i3 12100 3.3 GHz - 4.3 GHz / 8GB / 256GB / 350W</li>
                                    <li>Corsair Katar PRO Wireless</li>
                                    <li>Logitech G Pro X 60 Light Speed Black</li>
                                    <li>Steelseries Arctis Prime</li>
                                    <li>EDRA EEC218</li>
                                </ul>
                            </div>
                            <div class="infor vip">
                                <!--<div class="area">VIP Area</div>-->
                                <ul>
                                    <li>Asus ProArt PA248QV-P/24inch/FHD (1920x1200)/IPS 75Hz</li>
                                    <li>G4060 i5 12400F/16GB/500GB/650W/GeForce RTX4060</li>
                                    <li>Logitech Lift Vertical</li>
                                    <li>Razer Huntsman V2-Clicky Purple Switch</li>
                                    <li>Hires Sony MDR-1AM2 Black</li>
                                    <li>AKRacing Core Series EX - Black/ Red</li>
                                </ul>
                            </div>
                            <div class="infor gaming">
                                <!--<div class="area">Gaming Area</div>-->
                                <ul>
                                    <li>Gaming Gigabyte GS27F/27 inch/FHD (1920x1080)/IPS 170Hz</li>
                                    <li>Crystal White i7 12700F / RAM 32GB / SSD 500GB / 750W / RTX 4060</li>
                                    <li>Steelseries Aerox 3 Wireless</li>
                                    <li>Razer Huntsman V2 Linear Optical Switch PUBG</li>
                                    <li>HyperX Cloud Orbit S</li>
                                    <li>Cougar Armor Titan Pro</li>
                                </ul>
                            </div>
                        </div>
                        <div class="group">
                            <div class="contain-group">
                                <div class="SelectType">
                                    <select name="type">
                                        <option value="none" <%= (request.getParameter("type") != null && request.getParameter("type").equals("none")) ? "selected" : "" %>>Choose area</option>
                                        <option value="VIP" <%= (request.getParameter("type") != null && request.getParameter("type").equals("VIP")) ? "selected" : "" %>>VIP</option>
                                        <option value="Gaming" <%= (request.getParameter("type") != null && request.getParameter("type").equals("Gaming")) ? "selected" : "" %>>Gaming</option>
                                        <option value="Normal" <%= (request.getParameter("type") != null && request.getParameter("type").equals("Normal")) ? "selected" : "" %>>Normal</option>
                                    </select>
                                </div>
                                <table>

                                    <tr class="date">
                                        <td class="label">Date:</td>
                                        <td><input type="date" name="booking-day" required class="booking-day" value="<%= request.getParameter("booking-day") != "none" ? request.getParameter("booking-day") : "" %>"></td>
                                    </tr>
                                    <tr class="starttime">
                                        <td class="label">Start Time:</td>
                                        <td><input type="time" name="start-time" required class="start-time" value="<%= request.getParameter("start-time") != "none" ? request.getParameter("start-time") : "" %>"></td>
                                    </tr>
                                    <tr class="endtime">
                                        <td class="label">End Time:</td>
                                        <td><input type="time" name="end-time" required class="end-time" value="<%= request.getParameter("end-time") != "none" ? request.getParameter("end-time") : "" %>"></td>
                                    </tr>
                                    <tr class="quantities">
                                        <td class="label">Quantity:</td>
                                        <td><input type="number" name="quantity" required class="quantity" value="<%= request.getParameter("quantity") != "none" ? request.getParameter("quantity") : "" %>" min="1" max="20"></td>
                                    </tr>
                                </table>
                                <div class="contain-button">
                                    <button type="submit" name="check">Check</button>  
                                </div> 
                                <%
                                    if(request.getParameter("check") != null){
                                        List<String> available = new ArrayList();

                                        String date = request.getParameter("booking-day");
                                        String sTime= request.getParameter("start-time");
                                        String eTime= request.getParameter("end-time");
                                        String quantity = request.getParameter("quantity");
                                        String type = request.getParameter("type");

                                        String title = "Please choose the area!";
                                        String title2 = "Out of computer!";
                                        if( date == null || date.trim().isEmpty() ||
                                            sTime == null || sTime.trim().isEmpty() ||
                                            eTime == null || eTime.trim().isEmpty() ||
                                            quantity == null || quantity.trim().isEmpty() ||
                                            type.equals("none")){
                                            out.print("<div class='message'><label>" + title + "</label></div>");
                                        }
                                        else{
                                            int quant = Integer.parseInt(quantity);
                                            int remain = 0; 
                                            ResultSet res = dataExecute.bookingData.checkComputer(date, type, quant);
                                            if(res.isBeforeFirst()){
                                                while(res.next()){
                                                    String computer = res.getString("Computer_ID");
                                                    available.add(computer);
                                                }
                                                remain = quant - available.size();
                                            }
                                            if(!res.isBeforeFirst() || remain > 0){
                                                ResultSet rs = dataExecute.bookingData.checkSlot(date, type, sTime, eTime, remain);
                                                while(rs.next()){
                                                    String computer = rs.getString("Computer_ID");
                                                    available.add(computer);
                                                }
                                            }
                                            if(available.isEmpty()){  
                                                out.print("<div class='message'><label>" + title2 + "</label></div>");
                                            }else if(available.size() < quant){
                                                out.print("<div class='message'><label>Only " + available.size() + " computers left</label></div>");
                                            }else{
                                                out.print(sTime + " " + eTime);
                                %>
                                                <script>
                                                    window.location.href = "#title2";
                                                </script>
                                <%          }
                                        }
                                    }
                                %>
                                
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </form> 
            
        <div id="title2"></div>
        <form action="#title2">
        <%
            String Mid = null;
        %>
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
                                    <th class="food">Food</th>
                                    <th class="status">Status</th>
                                    <th class="quantity">Quantity</th>
                                </tr>
                                <%
                                    ResultSet res = dataExecute.bookingData.selectFood();
                                    while(res.next()){
                                        Mid = res.getString("Menu_ID");
                                        String food = res.getString("Name");
                                %>
                                        <tr>
                                            <td class="food"><%out.print(food);%></td>
                                            <td class="status"><input type="checkbox" name="m<%=Mid%>" <%= (request.getParameter("m" + Mid) != null) ? "checked" : "" %>></td>
                                            <td class="quantity"><input type="number" min="0" name="quant<%=Mid%>" value="<%= (request.getParameter("quant" + Mid) != null) ? request.getParameter("quant" + Mid) : "" %>"></td>
                                        </tr>
                                        
                                <%
                                    }
                                %>
                            </table>                        
                        </div>
                    </div>
                    <div class="contain-drink">
                        <div class="contain">
                            <table class="drink-table">
                                <tr>
                                    <th class="drink">Drink</th>
                                    <th class="status">Status</th>
                                    <th class="quantity">Quantity</th>
                                </tr>
                                <%
                                    ResultSet rs = dataExecute.bookingData.selectDrink();
                                    while(rs.next()){
                                        Mid = rs.getString("Menu_ID");
                                        String drink = rs.getString("Name");
                                %>
                                        <tr>
                                            <td class="drink"><%out.print(drink);%></td>
                                            <td class="status"><input type="checkbox" name="m<%=Mid%>" <%= (request.getParameter("m" + Mid) != null) ? "checked" : "" %>></td>
                                            <td class="quantity"><input type="number" min="0" name="quant<%=Mid%>" value="<%= (request.getParameter("quant" + Mid) != null) ? request.getParameter("quant" + Mid) : "" %>"></td>
                                        </tr>
                                <%
                                    }
                                %>                              
                            </table>
                        </div> 
                    </div>
                </div>
                <div class="contain-button">
                    <button type="submit" name="book">Book</button>  
                </div>  
                <%  
                    if(request.getParameter("book") != null){
                        boolean empty = false;
                        List<List<String>> ord = new ArrayList<>();
                        ResultSet result = dataExecute.bookingData.selectMenu();
                        while(result.next()){
                            Mid = result.getString("Menu_ID");
                            if(request.getParameter("m" + Mid) != null){
                                if(request.getParameter("quant" + Mid) != null && !request.getParameter("quant" + Mid).isEmpty()){
                                    List<String> row = new ArrayList<>();
                                    row.add("m" + Mid);
                                    row.add(request.getParameter("quant"+ Mid));
                                    ord.add(row);
                                }
                                else{
                                    empty = true;
                                }
                            }
                        }
                        String title = "Please choose the quantity!";
                        
                        if(empty){
                            out.print("<font color =  \"#FF00FF\" align=\"right\">" + title + "</font>");
                        }
                        else{
                            for(List<String> list : ord){
                                for(String val : list){
                                    out.print("<font color =  \"#FF00FF\" align=\"right\">" + val + "</font>");

                                }
                                out.print("\n");
                            }
                            response.sendRedirect("Orderpage.jsp");
                        }
                    }
                    
                %>            

            </div>               
        </div>
        </form>

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
            function show(event, classname, classname1, id){
                event.preventDefault();
                var elements = document.getElementsByClassName(classname);
                var element = document.getElementsByClassName('but');
                for (var i = 0; i < elements.length; i++) {
                    elements[i].style.visibility = 'hidden';
                    element[i].style.fontWeight = 'normal';
                    element[i].style.color = '#999';
                }
                var elements = document.getElementsByClassName(classname1);
                for (var i = 0; i < elements.length; i++) {
                    elements[i].style.visibility = 'visible';
                }
                document.getElementById(id).style.fontWeight = 'bold';
                document.getElementById(id).style.color = 'white';
            }
        </script>
    </body>
</html>
