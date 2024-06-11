/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dataExecute;

import dataConnection.Connect;
import java.sql.ResultSet;

/**
 *
 * @author Jiang
 */
public class menuData {
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
    public static ResultSet selectMenuSet(){
        String sql = "SELECT * FROM Menu";
        return Connect.ExecuteQuery(sql);
    }
}
