/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Session;
import model.TimeSlot;

/**
 *
 * @author l
 */
public class TimeSlotDAO extends DBContext {

    public ArrayList<TimeSlot> list() {
        ArrayList<TimeSlot> timeslot = new ArrayList<>();
        String sql = "Select * FROM TimeSlot";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String description = rs.getString("description");
                TimeSlot a = new TimeSlot(id, description);
                timeslot.add(a);
            }
            return timeslot;
        } catch (SQLException ex) {
        }
        return null;
    }
}
