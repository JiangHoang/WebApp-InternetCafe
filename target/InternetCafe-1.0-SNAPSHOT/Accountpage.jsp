
<%@page import="java.sql.ResultSet"%>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="account.css">
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">        
        <title>Account</title>
    </head>
    <body class="Accountpage">
        <%
            boolean valid = false;
            String Cid = "";
            String acc = "";
            String pass = "";
            String email = "";
            String phone = "";
            String message = "";
            Cookie[] cookies = null;
            cookies = request.getCookies();
            if( cookies != null ){
                for (int i = 0; i < cookies.length; i++){
                    if(cookies[i].getName().equals("acc"))
                        acc = cookies[i].getValue();
                    else if(cookies[i].getName().equals("pass"))
                        pass = cookies[i].getValue();
                    else if(cookies[i].getName().equals("email"))
                        email = cookies[i].getValue();
                    else if(cookies[i].getName().equals("phone"))
                        phone = cookies[i].getValue();
                    else if(cookies[i].getName().equals("cid"))
                        Cid = cookies[i].getValue();
                }
            }
            
            String Tpass = "";
            ResultSet res = dataExecute.accountData.SelectAcc(Cid);
                while(res.next()){
                    Tpass = res.getString("Password");
            }
        %>
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
        <div class="contain-myaccount">
            <div class="title">
                <label>My Account</label>
            </div>
            <div class="myaccount">
                <div class="Rectangle">
                    
                </div>
                <div class="info">
                    <div class="circle">
                        <img class="avatar" src="image/kyobigames.png"/>
                    </div>
                    <label><%=acc%></label>
                </div>
                <div class="contain-editinfo">
                    <div class="edit-infor">
                        <ul>
                            <li id="id1">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Display name</label>
                                        <label class="label2"><%=acc%></label>
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
                                            <input type="text" id="newacc" name="newacc">
                                        </div>
                                        <div class="edit">
                                            <label>Current password</label>
                                            <input type="password" id="pass1" name="pass1">
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" name="cancel1" value="Cancel" onclick="hiddenbox(event, 'change-account', 'id1')">
                                            <button name="update1">Update</button>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <%
                                if(request.getParameter("update1") != null){
                                    String newAcc = request.getParameter("newacc");
                                    String pw = request.getParameter("pass1");
                                    if(pw.equals(Tpass)){
                                        if( cookies != null ){
                                            for (Cookie cookie : cookies){
                                                if(cookie.getName().equals("acc")){
                                                    cookie.setValue(newAcc);
                                                    response.addCookie(cookie);
                                                }
                                            }
                                        }
                                        valid = true;
                                        dataExecute.accountData.UpdateAcc(Cid, newAcc);
                                    }
                                    else{
                                        message = "Incorrect password. Please try again!";
                                    }
                                }
                            %>
                            <li id="id2">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Password</label>
                                        <label class="label2">********</label>
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
                                            <input type="password" id="pass2" name="pass2">
                                        </div>
                                        <div class="edit">
                                            <label>New password</label>
                                            <input type="password" id="newpass" name="newpass">
                                        </div>
                                        <div class="edit">
                                            <label>Confirm new password</label>
                                            <input type="password" id="cfpass" name="cfpass">
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" name="cancel2" value="Cancel" onclick="hiddenbox(event, 'change-password', 'id2')">
                                            <button name="update2">Update</button>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <%
                                if(request.getParameter("update2") != null){
                                    String pw = request.getParameter("pass2");
                                    String newpass = request.getParameter("newpass");
                                    String cfpass = request.getParameter("cfpass");
                                    if(pw.equals(Tpass)){
                                        if(newpass.equals(cfpass)){
                                            if( cookies != null ){
                                                for (Cookie cookie : cookies){
                                                    if(cookie.getName().equals("pass")){
                                                        cookie.setValue(newpass);
                                                        response.addCookie(cookie);
                                                    }
                                                }
                                            }
                                            valid = true;
                                        }
                                        else
                                            message = "Passwords do not match. Please try again!";
                                        dataExecute.accountData.UpdatePass(Cid, newpass);
                                    }
                                    else{
                                        message = "Incorrect password. Please try again!";
                                    }
                                }
                            %>
                            <li id="id3">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Email</label>
                                        <label class="label2"><%=email%></label>
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
                                            <input type="email" name="newemail">
                                        </div>
                                        <div class="edit">
                                            <label>Current password</label>
                                            <input type="password" id="pass3" name="pass3">
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" name="cancel3" value="Cancel" onclick="hiddenbox(event, 'change-email', 'id3')">
                                            <button name="update3">Update</button>
                                        </div>
                                    </form>
                                </div>
                            </li> 
                            <%
                                if(request.getParameter("update3") != null){
                                    String pw = request.getParameter("pass3");
                                    String newemail = request.getParameter("newemail");
                                    if(pw.equals(Tpass)){
                                        if( cookies != null ){
                                            for (Cookie cookie : cookies){
                                                if(cookie.getName().equals("email")){
                                                    cookie.setValue(newemail);
                                                    response.addCookie(cookie);
                                                }
                                            }
                                        }
                                        valid = true;
                                        dataExecute.accountData.UpdateEmail(Cid, newemail);
                                    }
                                    else{
                                        message = "Incorrect password. Please try again!";
                                    }
                                }
                            %>
                            <li id="id4">
                                <div class="showed">
                                    <div>
                                        <label class="label1">Phone</label>
                                        <label class="label2"><%=phone%></label>
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
                                            <input type="tel" id="newphone" name="newphone">
                                        </div>
                                        <div class="edit">
                                            <label>Current password</label>
                                            <input type="password" id="pass4" name="pass4">
                                        </div>
                                        <div class="contain-button">
                                            <input type="button" name="cancel4" value="Cancel" onclick="hiddenbox(event, 'change-phone', 'id4')">
                                            <button name="update4">Update</button>
                                        </div>
                                    </form>
                                </div>
                            </li> 
                            <%
                                if(request.getParameter("update4") != null){
                                    String pw = request.getParameter("pass4");
                                    String newphone = request.getParameter("newphone");
                                    if(pw.equals(Tpass)){
                                        if( cookies != null ){
                                            for (Cookie cookie : cookies){
                                                if(cookie.getName().equals("phone")){
                                                    cookie.setValue(newphone);
                                                    response.addCookie(cookie);
                                                }
                                            }
                                        }
                                        valid = true;
                                        dataExecute.accountData.UpdatePhone(Cid, newphone);
                                    }
                                    else{
                                        message = "Incorrect password. Please try again!";
                                    }
                                }
                            %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <% 
            if(!message.isEmpty()){
        %>
            <script>
                $(document).ready(function(){
                    $('#errorModal').modal('show');
                });
            </script>
        <%  }
            else if(valid)
                response.sendRedirect("Accountpage.jsp");
        %>
        <div class="contain-ordered">
            <div class="title">
                <label>Ordered Recording</label>
            </div>
            <div class="myorder0">
                <div id="pending-order0" class ="pending-order0">
                    <span class="material-symbols-outlined">
                        calendar_clock
                    </span>
                    <div class="title0">
                        <label>Processing</label>
                    </div>
                </div>
                <div id="confirmed-order0" class ="confirmed-order0">
                    <span class="material-symbols-outlined">
                        event_available
                    </span>
                    <div class="title0">
                        <label>Confirmed</label>
                    </div>
                </div>
                <div id="completed-order0" class ="completed-order0">
                    <span class="material-symbols-outlined">
                        stadia_controller
                    </span>
                    <div class="title0">
                        <label>Completed</label>
                    </div>
                </div>
            </div>
            <div id="pending-order" class="myorder">
                <%
                    res = dataExecute.accountData.SelectBill(Cid, "Processing");
                    if(!res.next()){
                %>
                <div class ="pending-order">
                    <div class = "empty">
                        <span class="material-symbols-outlined">
                            event_busy
                        </span>
                        <label>NO ORDERS IN PROCESS</label>
                    </div>
                </div>
                <%
                    }else{       
                        do{
                            String Bid = res.getString("Bill_ID");
                            String Bdate = res.getString("Bill_Date");
                            String Btime = res.getString("Bill_Time");
                            String checkin = res.getString("Check_In_Date");
                            String sTime = res.getString("Start_Time");
                            String total = res.getString("Total_Price");
                %>
                <div class="pending-order">
            
                    <ul>
                        <li>
                            <div class="ordered">
                                <div class="ordered-info">
                                    <div>
                                        <label>Bill ID: </label>
                                        <label class="label1">&ensp;#<%=Bid%></label>
                                    </div>
                                    <div>
                                        <label>Trans. Date, Time: </label>
                                        <label class="label1">&ensp;<%=Bdate%>&ensp;|&ensp;<%=Btime%></label>
                                    </div>
                                    <div>
                                        <label>Check-in: </label>
                                        <label class="label1">&ensp;<%=checkin%>&ensp;|&ensp;<%=sTime%></label>
                                    </div>
                                </div>
                                <div class="price">
                                    <label>$<%=total%></label>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            <%          }while(res.next());
                    }%>
            </div>
            <div id="confirmed-order" class="myorder">
                <%
                    res = dataExecute.accountData.SelectBill(Cid, "Confirmed");
                    if(!res.next()){
                %>
                <div class ="confirmed-order">
                    <div class = "empty">
                        <span class="material-symbols-outlined">
                            event_busy
                        </span>
                        <label>NO ORDERS FOUND!</label>
                    </div>
                </div>
                <%
                    }else{       
                        do{
                            String Bid = res.getString("Bill_ID");
                            String Bdate = res.getString("Bill_Date");
                            String Btime = res.getString("Bill_Time");
                            String checkin = res.getString("Check_In_Date");
                            String sTime = res.getString("Start_Time");
                            String total = res.getString("Total_Price");
                %>
                <div class="confirmed-order">
                    <ul>
                        <li>
                            <div class="ordered">
                                <div class="ordered-info">
                                    <div>
                                        <label>Bill ID: </label>
                                        <label class="label1">&ensp;#<%=Bid%></label>
                                    </div>
                                    <div>
                                        <label>Trans. Date, Time: </label>
                                        <label class="label1">&ensp;<%=Bdate%>&ensp;|&ensp;<%=Btime%></label>
                                    </div>
                                    <div>
                                        <label>Check-in: </label>
                                        <label class="label1">&ensp;<%=checkin%>&ensp;|&ensp;<%=sTime%></label>
                                    </div>
                                </div>
                                <div class="price">
                                    <label>$<%=total%></label>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            <%          }while(res.next());
                    }%>
            </div>

            <div id="completed-order" class="myorder">
                <%
                    res = dataExecute.accountData.SelectBill(Cid, "Completed");
                    if(!res.next()){
                %>
                <div class ="completed-order">
                    <div class = "empty">
                        <span class="material-symbols-outlined">
                            event_busy
                        </span>
                        <label>YOU HAVEN'T COMPLETED ANY ORDERS YET!</label>
                    </div>
                </div>
                <%
                    }else{       
                        do{
                            String Bid = res.getString("Bill_ID");
                            String Bdate = res.getString("Bill_Date");
                            String Btime = res.getString("Bill_Time");
                            String checkin = res.getString("Check_In_Date");
                            String sTime = res.getString("Start_Time");
                            String total = res.getString("Total_Price");
                %>
                <div class="completed-order">
                    <ul>
                        <li>
                            <div class="ordered">
                                <div class="ordered-info">
                                    <div>
                                        <label>Bill ID: </label>
                                        <label class="label1">&ensp;#<%=Bid%></label>
                                    </div>
                                    <div>
                                        <label>Trans. Date, Time: </label>
                                        <label class="label1">&ensp;<%=Bdate%>&ensp;|&ensp;<%=Btime%></label>
                                    </div>
                                    <div>
                                        <label>Check-in: </label>
                                        <label class="label1">&ensp;<%=checkin%>&ensp;|&ensp;<%=sTime%></label>
                                    </div>
                                </div>
                                <div class="price">
                                    <label>$<%=total%></label>
                                </div>
                            </div>
                        </li>
                    </ul>
                    
                </div>
            <%          }while(res.next());
                    }%>
            </div>
        </div>
        <div class="modal" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <label class="modal-title" id="errorModalLabel" style="font-weight: bold">Announce</label>
                    </div>
                    <div class="modal-body">
                        <%=message%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
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
                var form = document.getElementById(id).querySelector('form');
                form.reset();
            }
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
            
            document.addEventListener('DOMContentLoaded', function() {
                document.getElementById('pending-order0').addEventListener('click', function() {
                    showOrder('pending-order');
                });
                document.getElementById('confirmed-order0').addEventListener('click', function() {
                    showOrder('confirmed-order');
                });
                document.getElementById('completed-order0').addEventListener('click', function() {
                    showOrder('completed-order');
                });
            }); 

            function showOrder(orderClass) {
                const orders = document.querySelectorAll('.contain-ordered .myorder');

                orders.forEach(function(order) {
                    const orderId = order.id;

                    if (orderId === orderClass) {
                        order.style.display = 'flex'; 
                    } else {
                        order.style.display = 'none';
                    }
                });

                const selectedOrders = document.querySelectorAll('.contain-ordered .myorder .' + orderClass);
                selectedOrders.forEach(function(select) {
                    select.style.display = 'block'; 
                });
            }
        </script>
    </body>
</html>
