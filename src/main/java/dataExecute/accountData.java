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
public class accountData {
    
    public static ResultSet SelectAcc(String Cid){
        String sql ="SELECT *\n" +
                    "FROM Customer\n" +
                    "WHERE Customer_ID = '"+Cid+"'";
        return Connect.ExecuteQuery(sql);
    }
    public static ResultSet SelectAccount(){
        String sql = "SELECT * FROM Customer";
        return Connect.ExecuteQuery(sql);
    }
    public static void UpdateAcc(String Cid, String acc){
        String sql = "UPDATE Customer\n" +
                     "SET Account = '"+acc+"'\n" +
                     "WHERE Customer_ID = '"+Cid+"'";
        Connect.ExecuteUpdate(sql);
    }
    public static void UpdatePass(String Cid, String pass){
        String sql = "UPDATE Customer\n" +
                     "SET Password = '"+pass+"'\n" +
                     "WHERE Customer_ID = '"+Cid+"'";
        Connect.ExecuteUpdate(sql);
    }
    public static void RePass(String acc, String pass){
        String sql = "UPDATE Customer\n" +
                     "SET Password = '" + pass + "'\n" +
                     "WHERE Account = '" + acc +"'";
        Connect.ExecuteUpdate(sql);
    }
    public static void UpdateEmail(String Cid, String email){
        String sql = "UPDATE Customer\n" +
                     "SET Email = '"+email+"'\n" +
                     "WHERE Customer_ID = '"+Cid+"'";
        Connect.ExecuteUpdate(sql);
    }
    public static void UpdatePhone(String Cid, String phone){
        String sql = "UPDATE Customer\n" +
                     "SET Phone_Number = '"+phone+"'\n" +
                     "WHERE Customer_ID = '"+Cid+"'";
        Connect.ExecuteUpdate(sql);
    }
    public static ResultSet SelectBill(String Cid, String status){
        String sql ="SELECT Bill_ID, Bill_Date, Bill_Time, Check_In_Date, Start_Time, Total_Price, Status\n" +
                    "FROM Bill as B\n" +
                    "JOIN Service_Computer as SC\n" +
                    "ON B.Service_ID = SC.Service_ID\n" +
                    "JOIN Service as S\n" +
                    "ON S.Service_ID = B.Service_ID\n" +
                    "WHERE S.Customer_ID = '"+Cid+"'\n" + 
                    "AND Status = '"+status+"'\n" +
                    "GROUP BY Bill_ID, Bill_Date, Bill_Time, Check_In_Date, Start_Time, Total_Price, Status";
        return Connect.ExecuteQuery(sql);
    }
}
