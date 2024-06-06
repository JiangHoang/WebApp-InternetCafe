/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dataExecute;

import dataConnection.Connect;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Chung Anh
 */
public class bookingData {
    public static ResultSet checkComputer(String date, String type, int quant){
        String sql = "SELECT TOP "+quant+" C.Computer_ID\n" +
                     "FROM Computer as C\n" +
                     "FULL OUTER JOIN Service_Computer as SC\n" +
                     "ON C.Computer_ID = SC.Computer_ID\n" +
                     "WHERE C.Type ='"+type+"'\n" +
                     "EXCEPT\n" +
                     "SELECT C.Computer_ID\n" +
                     "FROM Computer as C\n" +
                     "JOIN Service_Computer as SC\n" +
                     "ON C.Computer_ID = SC.Computer_ID\n" +
                     "WHERE SC.CheckInDate = '"+date+"'";
        return Connect.ExecuteQuery(sql);
    } 
    
    public static ResultSet checkSlot(String date, String type, String startTime, String stopTime, int quant){
        String sql ="SELECT TOP "+quant+" SC.Computer_ID\n" +
                    "FROM Service_Computer as SC\n" +
                    "JOIN Computer as C\n" +
                    "ON C.Computer_ID = SC.Computer_ID\n" +
                    "WHERE C.Type = '"+type+"'\n" +
                    "AND CheckInDate = '"+ date+"'\n" +
                    "GROUP BY SC.Computer_ID\n" +
                    "HAVING COUNT(*) = SUM(\n" +
                    "    CASE\n" +
                    "        WHEN (CONVERT(TIME, Start_Time) <= '"+startTime+"' AND CONVERT(TIME, Stop_Time) > '"+startTime+"') OR\n" +
                    "             (CONVERT(TIME, Start_Time) < '"+stopTime+"' AND CONVERT(TIME, Stop_Time) >= '"+stopTime+"') OR\n" +
                    "             (CONVERT(TIME, Start_Time) >= '"+startTime+"' AND CONVERT(TIME, Stop_Time) <= '"+stopTime+"')\n" +
                    "        THEN 0\n" +
                    "        ELSE 1\n" +
                    "    END\n" +
                    ")";
        return Connect.ExecuteQuery(sql);
    }
    public static ResultSet selectFood(){
        String sql ="SELECT *\n" +
                    "FROM Menu\n" +
                    "WHERE Type = 'Food'";
        return Connect.ExecuteQuery(sql);
    }
    
    public static ResultSet selectDrink(){
        String sql ="SELECT *\n" +
                    "FROM Menu\n" +
                    "WHERE Type = 'Drink'";
        return Connect.ExecuteQuery(sql);
    }
    public static ResultSet selectMenu(){
        String sql ="SELECT *\n" +
                    "FROM Menu\n";
        return Connect.ExecuteQuery(sql);
    }
    public static void InsertOrder(String Cid){
        String sql = "INSERT INTO Service(Customer_ID)\n"
                    + "VALUES('"+Cid+"')";
        Connect.ExecuteUpdate(sql);
    }
    public static void InsertOrdComp(String Sid, String Cid, String sTime, String eTime, String date){
        String sql = "INSERT INTO Service_Computer(Computer_ID, Start_Time, Stop_Time, CheckInDate)\n"
                    + "VALUES('"+Sid+"','"+Cid+"','"+sTime+"','"+eTime+"','"+date+"')";
        Connect.ExecuteUpdate(sql);
    }
    public static void InsertOrdMenu(String Sid,String Mid, String quant){
        String sql = "INSERT INTO Service_Menu(Service_ID, Menu_ID, Quantity)\n"
                    + "VALUES('"+Sid+"','"+Mid+"','"+quant+"')";
        Connect.ExecuteUpdate(sql);
    }
    public static ResultSet SelectOrder(String Cid){
        String sql = "SELECT Service_ID FROM Service WHERE Customer_ID = '"+Cid+"'";
        return Connect.ExecuteQuery(sql);
    }
}
