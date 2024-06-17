<%-- 
    Document   : Billpage
    Created on : Jun 8, 2024, 8:47:41 PM
    Author     : Jiang
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bill.css">
        <title>Bill</title>
    </head>
    <body class="billpage">
        <%
            String acc = "";
            String phone = "";
            String total = "";
            String Sid = "";
            String Cpid= "";
            String Bid = request.getParameter("Bid");
            Cookie[] cookies = null;
                    cookies = request.getCookies();
                    if( cookies != null ){
                        for (int i = 0; i < cookies.length; i++){
                            if(cookies[i].getName().equals("acc"))
                                acc = cookies[i].getValue();
                            else if(cookies[i].getName().equals("phone"))
                                 phone = cookies[i].getValue();
                        }
                    }
        %>
        <div class="contain-bill">
            <div class="title">
                <div class="company-info">
                    <label class="bold">Internet Café</label>
                    <label>123 Street 2, Direct 2, Ho Chi Minh City, VietNam</label>
                    <label>888 888 888</label>
                </div>
                <div class="bold size-bigger">INVOICE</div>
            </div>
            <!-- m chi dc sua o bill info + order info -->
            
            <div class="bill-info">
                <div class="account">
                    <label class="bold">Bill to:</label>
                    <label><%=acc%></label>
                    <label><%=phone%></label>
                </div>
                <%
                    ResultSet res = dataExecute.orderData.SelectBill(Bid);
                    while(res.next()){
                        Bid = res.getString("Bill_ID");
                        Sid = res.getString("Service_ID");
                        String date = res.getString("Bill_Date");
                        String time = res.getString("Bill_Time");
                        total = res.getString("Total_Price");
                        Cpid = res.getString("Coupon_ID");                        
                %>
                <div class="bill-id">
                    <label>Bill No.<%=Bid%></label>
                    <label><%=time%></label>
                    <label><%=date%></label>
                </div>
                <%  }%>
            </div>
            <div class="order-info">
                <table>
                    <tr>
                        <th class="item-col">Item</th>
                        <th class="qty-col">Quantity</th>
                        <th class="price-col">Price</th>
                        <th class="total-col">Total</th>
                    </tr>
                    
                    <!--xuất item ở đây-->
                    <%
                        res = dataExecute.orderData.SelectOrdComp(Sid);
                        while(res.next()){
                            String type = res.getString("Type");
                            String price = res.getString("Price");
                            String p_hr = res.getString("Price_Per_Hour");
                            String quant = res.getString("Quantity");
                    %>
                    <tr>
                        <td class="item-col"><%=type%></td>
                        <td class="qty-col"><%=quant%></td>
                        <td>$<%=p_hr%></td>
                        <td>$<%=price%></td>
                    </tr>
                    <%  }%>
                    <%
                        res = dataExecute.orderData.SelectOrdMenu(Sid);
                        while(res.next()){
                            String name = res.getString("Name");
                            String price = res.getString("Price");
                            String cost = res.getString("Cost");
                            String quant = res.getString("Quantity");
                    %>
                    <tr>
                        <td class="item-col"><%=name%></td>
                        <td class="qty-col"><%=quant%></td>
                        <td>$<%=cost%></td>
                        <td>$<%=price%></td>
                    </tr>
                    <%  }%>
                    <!-- chỉ trong này thôi -->
                    <%
                        res = dataExecute.orderData.SelectTotal(Sid);
                        while(res.next()){
                            String sTotal = res.getString("Total");
                    %>
                        <tr>
                            <td class="item-col bold">Subtotal</td>
                            <td></td>
                            <td></td>
                            <td>$<%=sTotal%></td>
                        </tr>
                    <%  }%>
                    <%
                        res = dataExecute.orderData.SelectDiscount(Cpid);
                        while(res.next()){
                            String dc = res.getString("Discount");
                    %>
                    <tr>
                        <td class="item-col bold">Discount</td>
                        <td></td>
                        <td></td>
                        <td><%=dc%>%</td>
                    </tr>
                    <%  }%>
                    <tr>
                        <td class="item-col bold size-bigger">Total Due</td>
                        <td></td>
                        <td></td>
                        <td class="bold size-bigger">$<%=total%></td>
                    </tr>
                </table>
            </div>
            <div class="contain">
                <div class="payment">
                    <img src="image/QR.png"/>
                    <div>
                        <label class="bold">Payment Information</label>
                        <label>Vietcombank</label>
                        <label>Account Name: Internet Café</label>
                        <label>Account No.: 68 68 68 68</label>
                    </div>
                </div> 
                <div class="sign">
                    <label>Thank You,</label><br>
                    <label class="signature size-bigger">Internet Cafe</label>
                </div>
            </div>
             
            <div class="annouce">
                <div class="note">
                    <label class="bold">Notes:</label><br>
                    <label>Must be paid within 3 hours after ordering!</label><br>
                    <label>Can scan the QR code to pay!</label>
                </div>
            </div>
        </div>
    </body>
</html>
