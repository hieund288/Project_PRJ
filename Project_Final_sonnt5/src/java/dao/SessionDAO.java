/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Group;
import model.Session;

/**
 *
 * @author l
 */
public class SessionDAO extends DBContext {

    public ArrayList<Session> getAll() {

        ArrayList<Session> list = new ArrayList<>();
        String sql = "Select * from session";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                Date date = rs.getDate("date");
                int roomID = rs.getInt("roomID");
                int groupID = rs.getInt("groupID");
                int timeslotID = rs.getInt("timeslotID");
                boolean attendance = rs.getBoolean("attendance");
                int numberOfWeek = rs.getInt("numberOfWeek");
                Session a = new Session(id, date, roomID, groupID, timeslotID, attendance, numberOfWeek);
                list.add(a);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public ArrayList<Session> list(int did, int numberOfWeek) {
        int timeslotID = did;
        try {
            ArrayList<Session> ds = new ArrayList<>();
            PreparedStatement sql = connection.prepareStatement("select * from [Session] where timeslotID = ? and numberOfWeek = ?");
            sql.setInt(1, timeslotID);
            sql.setInt(2, numberOfWeek);
            ResultSet rs = sql.executeQuery();
            while (rs.next()) {
                Session a = new Session();
                a.setTimeslotID(timeslotID);
                a.setId(rs.getInt("id"));
                a.setDate(rs.getDate("date"));
                a.setRoomID(rs.getInt("roomID"));
                a.setGroupID(rs.getInt("name"));
                a.setAttendance(rs.getBoolean("attendance"));
                a.setNumberOfWeek(rs.getInt("numberOfWeek"));
                ds.add(a);
            }
            return ds;
        } catch (SQLException ex) {
        }
        return null;
    }

    public ArrayList<Session> listAllLessonInThisWeekAndLecture(int numberOfWeek, String lecture) {
        try {
            ArrayList<Session> ds = new ArrayList<>();
            PreparedStatement sql = connection.prepareStatement("SELECT\n"
                    + "[Session].id,\n"
                    + "lecture.lecName as Lecture,\n"
                    + " [Session].[date] as Date ,\n"
                    + "Room.rName as Room,\n"
                    + "[Group].[Name] as Class,\n"
                    + "TimeSlot.[description] as Slot,\n"
                    + "[Session].attendance as Attendance, \n"
                    + "[Subject].[name] as [Subject]\n"
                    + "FROM [Session]\n"
                    + "INNER JOIN Room ON [Session].roomID = Room.id\n"
                    + "INNER JOIN [Group] ON [Session].groupID = [Group].id\n"
                    + "INNER JOIN TimeSlot ON [Session].timeslotID = TimeSlot.id\n"
                    + "INNER JOIN attendance ON [Session].timeslotID = TimeSlot.id\n"
                    + "INNER JOIN [Subject] ON [Group].SubjectID = [Subject].id\n"
                    + "INNER JOIN lecture ON [Group].lectureID = lecture.id\n"
                    + "GROUP BY [Session].id,\n"
                    + "lecture.lecName,\n"
                    + " [Session].[date],\n"
                    + "Room.rName,\n"
                    + "[Group].[Name],\n"
                    + "TimeSlot.[description] ,\n"
                    + "[Session].attendance, \n"
                    + "[Subject].[name]");
            sql.setString(1, "%" + lecture + "%");
            sql.setInt(2, numberOfWeek);
            ResultSet rs = sql.executeQuery();
            while (rs.next()) {
                Session a = new Session();
                a.setId(rs.getInt("id"));
                a.setGroup(new Group(rs.getString("group"),
                        new Course(rs.getString("courseID"), rs.getString("courseName")),
                        new Instructor(rs.getString("instructorID"), rs.getString("instructorName"))
                )
                );
                a.setName(rs.getString("name"));
                a.setSlot(rs.getInt("slot"));
                a.setRoom(rs.getString("room"));
                a.setDate(rs.getDate("date"));
                a.setNumberOfWeek(rs.getInt("numberOfWeek"));

                ds.add(a);
            }
            return ds;
        } catch (SQLException ex) {
        }
        return null;
    }

    public static void main(String[] args) {
        SessionDAO pro = new SessionDAO();
        System.out.println("" + pro.listAllLessonInThisWeekAndLecture(1, lecture));
    }
}
