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
public class loginData {
    
    public static ResultSet Select(){
        String sql = "SELECT * FROM Customer";
        return Connect.ExecuteQuery(sql);
    }
    public static void InsertUser(String acc, String pass, String email, String phone){
        String sql = "INSERT INTO Customer(Account, Password, Email, Phone_Number) "
                    + "values('"+acc+"','"+pass+"','"+email+"','"+phone+"')";
        Connect.ExecuteUpdate(sql);
    }
}
