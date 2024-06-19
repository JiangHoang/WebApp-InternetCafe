 <%-- 
    Document   : Homepage
    Created on : May 26, 2024, 7:24:58 PM
    Author     : Jiang
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Ordering</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="order.css">
        <link rel="stylesheet" type="text/css" href="headerfooter.css">
    </head>
    <body class="Orderpage">
        <%
            String acc = "";
            String email = "";
            String phone = "";
            Cookie[] cookies = null;
                cookies = request.getCookies();
                if( cookies != null ){
                    for (int i = 0; i < cookies.length; i++){
                        if(cookies[i].getName().equals("acc"))
                            acc = cookies[i].getValue();
                        else if(cookies[i].getName().equals("email"))
                            email = cookies[i].getValue();
                        else if(cookies[i].getName().equals("phone"))
                             phone = cookies[i].getValue();
                    }
                }
        %>
        <div class="headerbox">
            <a href="Homepage.jsp"><img class ="Logo" src="image/logo.png"/></a>
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
        <div class="order">
            <div class="title">
                <label>Order Information</label>
            </div>
            <form action="Orderpage.jsp" class="info" method="post">
                <%
                    String comp = request.getParameter("comp");
                    String Sid = request.getParameter("Sid");
                %>
                <input type="hidden" name="Sid" value="<%=Sid%>">
                <input type="hidden" name="comp" value="<%=comp%>">
                <div class="contain-userinfo">
                    <div class="title1">
                        <label>Your Information</label>
                    </div>
                    <div class="contain-table">
                        <table class="Userinfo">
                            <tr>
                                <td class="colum1">Account</td>
                                <td><input type="text" class="account" value="<%=acc%>" disabled></td>
                            </tr>
                            <tr>
                                <td class="colum1">Email</td>
                                <td><input type="email" class="email" value="<%=email%>" disabled></td>
                            </tr>
                            <tr>
                                <td class="colum1">Phone</td>
                                <td><input type="tel" class="phone" value="<%=phone%>" disabled></td>
                            </tr>
                            <tr>
                                <td class="colum1">Payment method</td>
                                <td>
                                    <select name="payment-method">
                                        <option value="Credit Card">Credit Card</option>
                                        <option value="Debit Card">Debit Card</option>
                                        <option value="Internet Banking">Internet Banking</option>
                                    </select>
                                </td>
                            </tr>
                        </table>   
                    </div>
                    <div class="agree">
                        <input type="checkbox">
                        <label>I agree with Terms & Conditions</label>
                    </div>
                    <button class="btn finishorder" name="finishorder" type="submit" id="finishorder">Submit</button>

                </div>
                <div class="items-ordered">
                    <div class="title1">
                        <label>Your Cart</label>
                    </div>
                    <div class="contain-list">
                        <ul>
                            <%
                                ResultSet res = dataExecute.orderData.SelectOrdComp(Sid);
                                while(res.next()){
                                    String type = res.getString("Type");
                                    String price = res.getString("Price");
                            %>
                            <li>
                                <div>
                                    <div class="product"><%out.print(type);%></div>
                                    <label class="type">Computer</label><br>
                                    <div class="quantity"><%out.print(comp);%></div>

                                </div>
                                <span class="money"><%out.print(price);%>$</span>
                                
                            </li>
                            <%  }
                                res = dataExecute.orderData.SelectOrdMenu(Sid);
                                while(res.next()){
                                    String name = res.getString("Name");
                                    String quant = res.getString("Quantity");
                                    String price = res.getString("Price");
                                    String type = res.getString("Type");

                            %>
                                    <li>
                                        <div>
                                            <div class="product"><%out.print(name);%></div>
                                            <label class="type"><%out.print(type);%></label><br>
                                            <label class="quantity">x<%out.print(quant);%></label>
                                        </div>
                                        <span class="money"><%out.print(price);%>$</span>
                                    </li>
                            <%  }%>
                            <%
                                boolean valid = false;
                                double total = 0;

                                res = dataExecute.orderData.SelectTotal(Sid);
                                if(res.next()){
                                    total = Double.parseDouble(res.getString("Total"));
                                }
                                String coupon = "";
                                if(request.getParameter("addcoupon") != null){
                                    res = dataExecute.orderData.SelectCoupon();
                                    String discount ="";
                                    while(res.next()){
                                        coupon = res.getString("Coupon_ID");
                                        discount = res.getString("Discount");
                                        if(coupon.equals(request.getParameter("couponid"))){
                                            valid = true;
                                            break;
                                        }
                                    }                                        
                                    System.out.print("\nhme" +coupon);

                                        if(valid != false){
                                            double dc = Double.parseDouble(discount);
                                            dc = total * (dc/100);
                                            total = total - dc;

                            %>
                                            <li>
                                                <div>
                                                    <div class="coupon">Coupon</div>
                                                    <label class="code"><%=coupon%></label><br>
                                                </div>
                                                <span class="money">-<%out.print(String.format("%.2f", dc));%>$</span>
                                            </li>
                                            <input type="hidden" id="cpid" name="cpid" value="<%=coupon%>">
                            <%          }}
                                String Total = String.format("%.2f", total);
                            %>
                            <li>
                                <div>
                                    <div class="total">Total</div>
                                </div>
                                <span class="money"><%=Total%>$</span>
                                <input type="hidden" id="total" name="total" value="<%=Total%>">
                            </li>
                        </ul>
                    </div>
                            <div class="enter-coupon">
                                <input type="text" class="couponid" name="couponid" placeholder="Enter Your Coupon">
                                <button type="submit" class="addcoupon" name="addcoupon" >Add</button>
                            </div>
                        <%  
                            boolean ord = false;
                            String Bid ="";
                            if(request.getParameter("finishorder") != null){
                                LocalDate Date = LocalDate.now(); 
                                DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                                
                                LocalTime Time = LocalTime.now();
                                DateTimeFormatter tf = DateTimeFormatter.ofPattern("HH:mm");
                                
                                String pay = request.getParameter("payment-method");
                                String date = df.format(Date);
                                String time = tf.format(Time);
                                
                                String Tprice = request.getParameter("total");
                                String cpid =request.getParameter("cpid");
                                System.out.print("\nhuhu" +cpid);
                                
                                dataExecute.orderData.InsertBill( date, time, Sid, Tprice, cpid, pay);
                                res = dataExecute.orderData.SelectBillId(Sid);
                                while(res.next()){
                                    Bid = res.getString("Bill_ID");
                                }
                                ord = true;
                            }  
                            %>
                            <script>
                            $(document).ready(function(){
                                <% if(ord) { %>
                                    $('#exampleModalLong').modal('show');
                                <% } %>
                            });
                            </script>
                    </div>
            </form>
        </div>
        <div class="modal" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document" style="width: 100%">
                <div class="modal-content" style="width: 100%">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle" style="font-weight: 700;">Your Bill</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="window.location.href='Homepage.jsp';">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="modalContent" style="width: 100%; margin: 0; padding: 0;">
                        <iframe src="Billpage.jsp?Bid=<%=Bid%>" style="width:100%; height: 90vh; border:none; margin: 0; padding: 0;"></iframe>
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
        </script>
    </body>
</html>
