/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dataExecute;

import dataConnection.Connect;
import java.sql.ResultSet;

/**
 *
 * @author Chung Anh
 */
public class orderData {
    public static ResultSet SelectOrdComp(String Sid){
        String sql = "SELECT C.Type,C.Price_Per_Hour, SUM(C.Price_Per_Hour) as Price, COUNT(C.Computer_ID) as Quantity\n" +
                     "FROM Service_Computer as SC \n" +
                     "JOIN Computer as C \n" +
                     "ON C.Computer_ID = SC.Computer_ID \n" +
                     "WHERE SC.Service_ID = '"+Sid+"' \n" +
                     "GROUP BY C.Type, C.Price_Per_Hour";
        return Connect.ExecuteQuery(sql);
    }
     
    public static ResultSet SelectOrdMenu(String Sid){
        String sql = "SELECT M.Name, M.Type, M.Price as Cost, SM.Quantity,(M.Price * SM.Quantity) as Price \n" +
                     "FROM Service_Menu  as SM \n" +
                     "JOIN Menu as M \n" +
                     "ON SM.Menu_ID = M.Menu_ID \n" +
                     "WHERE SM.Service_ID = '"+Sid+"'";
        return Connect.ExecuteQuery(sql);
    }
    
    public static ResultSet SelectTotal(String Sid){
        String sql = "SELECT (M.Price + SUM(C.Price_Per_Hour)) as Total \n" +
                     "FROM Service_Computer as SC  \n" +
                     "JOIN Computer as C  \n" +
                     "ON C.Computer_ID = SC.Computer_ID  \n" +
                     "JOIN(SELECT Service_ID, SUM(M.Price*SM.Quantity) as Price  \n" +
                     "    FROM Service_Menu  as SM  \n" +
                     "    JOIN Menu as M  \n" +
                     "    ON SM.Menu_ID = M.Menu_ID  \n" +
                     "    GROUP BY SM.Service_ID) as M \n" +
                     "ON SC.Service_ID = M.Service_ID \n" +
                     "WHERE SC.Service_ID = '"+Sid+"'\n" +
                     "GROUP BY SC.Service_ID, M.Price";
        return Connect.ExecuteQuery(sql);
    }
    
    public static ResultSet SelectCoupon(){
            String sql = "SELECT * FROM Coupon";
        return Connect.ExecuteQuery(sql);
    }
    public static void InsertBill(String date, String time, String Sid, String price, String cpid, String pay, String status){
        String sql ="";
        if (cpid == null || cpid.isEmpty()) {
            sql = "INSERT INTO Bill(Bill_Date, Bill_Time, Service_ID, Total_Price, Coupon_ID, Payment_Method, Status)\n"
                    + "VALUES('"+date+"', '"+time+"', '"+Sid+"', '"+price+"', NULL, '"+pay+"', '"+status+"')";
        }else
            sql = "INSERT INTO Bill(Bill_Date, Bill_Time, Service_ID, Total_Price, Coupon_ID, Payment_Method, Status)\n"
                    + "VALUES('"+date+"', '"+time+"', '"+Sid+"', '"+price+"', '"+cpid+"', '"+pay+"', '"+status+"')";
        Connect.ExecuteUpdate(sql);
    }
    
    public static ResultSet SelectBillId(String Sid){
        String sql = "SELECT Bill_ID FROM Bill\n" +
                     "WHERE Service_ID = '"+Sid+"'";
        return Connect.ExecuteQuery(sql);
    }
    
    public static ResultSet SelectBill(String Bid){
        String sql = "SELECT * FROM Bill\n" +
                     "WHERE Bill_ID = '"+Bid+"'";
        return Connect.ExecuteQuery(sql);
    }
    public static ResultSet SelectDiscount(String Cpid){
            String sql = "SELECT * FROM Coupon\n" +
                         "WHERE Coupon_ID = '"+Cpid+"'";
        return Connect.ExecuteQuery(sql);
    }
}
