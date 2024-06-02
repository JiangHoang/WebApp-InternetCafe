/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dataConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Chung Anh
 */
public class Connect {
    public static Statement Connect(){
        Statement stmt = null;
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            String jdbcUrl = "jdbc:sqlserver://LAPTOP-DCGSC18J\\SQLEXPRESS:1433;databaseName=Web_PJ;user=sa;password=123456;"
            + "encrypt=true;trustServerCertificate=true;";

            Connection connection = DriverManager.getConnection(jdbcUrl);
            stmt = connection.createStatement();              
        }catch (ClassNotFoundException ex) {
            Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
        }catch (SQLException e){
            e.printStackTrace();
        }

        return stmt;
    }
    public static ResultSet ExecuteQuery(String sql){
        ResultSet result = null;
        try{
            result = Connect().executeQuery(sql);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }
    public static int ExecuteUpdate(String sql){
        int result = 0;
        try{
            result = Connect().executeUpdate(sql);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }
}
