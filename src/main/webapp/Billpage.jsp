<%-- 
    Document   : Billpage
    Created on : Jun 8, 2024, 8:47:41 PM
    Author     : Jiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bill.css">
        <title>Bill Page</title>
    </head>
    <body class="billpage">
        <div class="contain-bill">
            <div class="title">
                <div class="company-info">
                    <label class="bold">Internet Café</label>
                    <label>123 Street 2, Direct 2, Ho Chi Minh City, VietNam</label>
                    <label>(+84) 888 888 888</label>
                </div>
                <div class="bold size-bigger">INVOICE</div>
            </div>
            <div class="bill-info">
                <div class="account">
                    <label class="bold">Bill to:</label>
                    <label>Name</label>
                    <label>(+84) 123 456 789</label>
                </div>
                <div class="bill-id">
                    <label>Bill No.1622</label>
                    <label>15 May 2024</label>
                </div>
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
                    <tr>
                        <td class="item-col">VIP</td>
                        <td class="qty-col">2</td>
                        <td>$3.00</td>
                        <td>$6.00</td>
                    </tr>
                    <tr>
                        <td class="item-col">Pineapple Juice</td>
                        <td class="qty-col">2</td>
                        <td>$3.00</td>
                        <td>$6.00</td>
                    </tr>
                    <tr>
                        <td class="item-col">Peach Tea</td>
                        <td class="qty-col">2</td>
                        <td>$3.00</td>
                        <td>$6.00</td>
                    </tr>
                    <tr>
                        <td class="item-col">Coca</td>
                        <td class="qty-col">2</td>
                        <td>$3.00</td>
                        <td>$6.00</td>
                    </tr>
                    <tr>
                        <td class="item-col">Pineapple Juice</td>
                        <td class="qty-col">2</td>
                        <td>$3.00</td>
                        <td>$6.00</td>
                    </tr>
                    <!-- chỉ trong này thôi -->
                    
                    <tr>
                        <td class="item-col bold">Subtotal</td>
                        <td></td>
                        <td></td>
                        <td>$18.00</td>
                    </tr>
                    <tr>
                        <td class="item-col bold">Discount</td>
                        <td></td>
                        <td></td>
                        <td>10%</td>
                    </tr>
                    <tr>
                        <td class="item-col bold size-bigger">Total Due</td>
                        <td></td>
                        <td></td>
                        <td class="bold size-bigger">$16.20</td>
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
