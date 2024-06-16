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
        <title>JSP Page</title>
    </head>
    <body class="Bookingpage">
        <%
            String date = "";
            String sTime= "";
            String eTime= "";
            String cid = "";
            String sid = "";            
            List<String> available = new ArrayList();
            
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
        <form action="#title1" method="post">
        <div class="Title" >
            <label>Computer Rental</label>
        </div>
        <div class="SelectType">
            <select name="type">
                <option value="none" <%= (request.getParameter("type") != null && request.getParameter("type").equals("none")) ? "selected" : "" %>>Choose area</option>
                <option value="VIP" <%= (request.getParameter("type") != null && request.getParameter("type").equals("VIP")) ? "selected" : "" %>>VIP</option>
                <option value="Gaming" <%= (request.getParameter("type") != null && request.getParameter("type").equals("Gaming")) ? "selected" : "" %>>Gaming</option>
                <option value="Normal" <%= (request.getParameter("type") != null && request.getParameter("type").equals("Normal")) ? "selected" : "" %>>Normal</option>
            </select>
        </div>
        <div class="Rectangle">
            <div class="contain-rect">
                <div class="Rect">
                    <div class="content">
                        <label>viet mo ta cai may tinh</label>
                    </div>
                    <div class="group">
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
                                    <td><input type="number" name="quantity" required class="quantity" value="<%= request.getParameter("quantity") != "none" ? request.getParameter("quantity") : "" %>"></td>
                                </tr>
                            </table>
                            <div class="contain-button">
                                <button type="submit" name="check">Check</button>  
                            </div>                      
                        <div class="annouce" >
                            <label >Having Computer</label>
                        </div>
                    </div>
                </div>
                <%
                    if(request.getParameter("check") != null){
                        date = request.getParameter("booking-day");
                        sTime = request.getParameter("start-time");
                        eTime = request.getParameter("end-time");
                        String quantity = request.getParameter("quantity");
                        String type = request.getParameter("type");

                        String title = "Please choose the area!";
                        String title2 = "Out of computer!";
                        if( date == null || date.trim().isEmpty() ||
                            sTime == null || sTime.trim().isEmpty() ||
                            eTime == null || eTime.trim().isEmpty() ||
                            quantity == null || quantity.trim().isEmpty() ||
                            type.equals("none")){
                            out.print("<font color =  \"#FF00FF\" align=\"right\">" + title + "</font>");
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
                                out.print("<font color =  \"#FF00FF\" align=\"right\">" + title2 + "</font>");
                            }else if(available.size() < quant){
                                out.print("<font color =  \"#FF00FF\" align=\"right\">Only "+available.size()+ " computers left</font>");
                            }else{
                                session.setAttribute("available", available);
                                session.setAttribute("date", date);
                                session.setAttribute("sTime", sTime);
                                session.setAttribute("eTime", eTime);


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
        </form> 
            
        <div id="title2"></div>
        <form action="#title2" method="post">
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
                                    <th>Food</th>
                                    <th>Status</th>
                                    <th>Quantity</th>
                                </tr>
                                <%
                                    ResultSet res = dataExecute.bookingData.selectFood();
                                    while(res.next()){
                                        Mid = res.getString("Menu_ID");
                                        String food = res.getString("Name");
                                %>
                                        <tr>
                                            <td><%out.print(food);%></td>
                                            <td><input type="checkbox" name="m<%=Mid%>" <%= (request.getParameter("m" + Mid) != null) ? "checked" : "" %>></td>
                                            <td><input type="number" name="quant<%=Mid%>" value="<%= (request.getParameter("quant" + Mid) != null) ? request.getParameter("quant" + Mid) : "" %>" style="width: 70%"></td>
                                        </tr>
                                        
                                    <%
                                    }%>
                            </table>                        
                        </div>
                    </div>
                    <div class="contain-drink">
                        <div class="contain">
                            <table class="drink-table">
                                <tr>
                                    <th>Drink</th>
                                    <th>Status</th>
                                    <th>Quantity</th>
                                </tr>
                                <%
                                    ResultSet rs = dataExecute.bookingData.selectDrink();
                                    while(rs.next()){
                                        Mid = rs.getString("Menu_ID");
                                        String drink = rs.getString("Name");
                                %>
                                        <tr>
                                            <td><%out.print(drink);%></td>
                                            <td><input type="checkbox" name="m<%=Mid%>" <%= (request.getParameter("m" + Mid) != null) ? "checked" : "" %>></td>
                                            <td><input type="number" name="quant<%=Mid%>" value="<%= (request.getParameter("quant" + Mid) != null) ? request.getParameter("quant" + Mid) : "" %>" style="width: 70%"></td>
                                        </tr>
                                    <%
                                    }%>                              
                            </table>
                        </div> 
                    </div>
                </div>
                <div class="contain-button">
                    <button type="submit" name="book">Book</button>  
                </div>  
                <%  
                    int stage = 0;
                    List<List<String>> ord = new ArrayList<>();

                    if(request.getParameter("book") != null){
                        boolean empty = false;
                        ResultSet result = dataExecute.bookingData.selectMenu();
                        while(result.next()){
                            Mid = result.getString("Menu_ID");
                            if(request.getParameter("m" + Mid) != null){
                                if(request.getParameter("quant" + Mid) != null && !request.getParameter("quant" + Mid).isEmpty()){
                                    List<String> row = new ArrayList<>();
                                    row.add( Mid);
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
                            dataExecute.bookingData.InsertOrder(cid);
                            res = dataExecute.bookingData.SelectOrder(cid);
                            while(res.next()){
                                sid = res.getString("Service_ID");
                            }
                            System.out.print("\nhahahahaha" + sid);
                            for(List<String> list : ord){
                                dataExecute.bookingData.InsertOrdMenu(sid, list.get(0), list.get(1));
                            }
                            available = (List<String>) session.getAttribute("available");
                            date =  (String) session.getAttribute("date");
                            sTime =  (String) session.getAttribute("sTime");
                            eTime =  (String) session.getAttribute("eTime");
                            for(String compid: available){
                                System.out.print("\nNum" + compid);
                                dataExecute.bookingData.InsertOrdComp(sid, compid, sTime, eTime, date);
                            }

                            request.setAttribute("Sid", sid);
                            System.out.print("\t" +request.getAttribute("Sid"));
                            request.setAttribute("comp", available);
                            stage = 1;
//                            response.sendRedirect("Orderpage.jsp");
                        }
                    }
                    if(stage == 1){
                        request.getRequestDispatcher("Orderpage.jsp").forward(request, response); 

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
        </script>
    </body>
</html>
