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
public class feedbackData {
    public static ResultSet selectFeedback(){
        String sql ="SELECT * FROM Feedback";
        return Connect.ExecuteQuery(sql);
    }
}