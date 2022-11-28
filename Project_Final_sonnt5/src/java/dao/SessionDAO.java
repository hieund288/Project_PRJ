/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @param args
 */
import helper.DateTimeHelper;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Attendance;
import model.Group;
import model.Lecture;
import model.Room;
import model.Session;
import model.Student;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author l
 *
 */
public class SessionDAO extends DBContext {

//    public ArrayList<Session> getAll() {
//
//        ArrayList<Session> list = new ArrayList<>();
//        String sql = "Select * from session";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                Date date = rs.getDate("date");
//                int roomID = rs.getInt("roomID");
//                int groupID = rs.getInt("groupID");
//                int timeslotID = rs.getInt("timeslotID");
//                boolean status = rs.getBoolean("status");
//                Session a = new Session(id, date, roomID, groupID, timeslotID, status);
//                list.add(a);
//            }
//            return list;
//        } catch (SQLException e) {
//        }
//        return null;
//    }

    public boolean getStatus(int id) {
        try {
            String sql = "Select status from [session] where id = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            return rs.getBoolean("status");
        } catch (SQLException ex) {
        }
        return false;
    }

    public ArrayList<Session> getListSessionStudent(int sid, java.util.Date from, java.util.Date to) {
        System.out.println("From dcu trg "+ sid + " " + from + " " + to);
        ArrayList<Session> sesssions = new ArrayList<>();
        String sql = "SELECT\n"
                + "[Session].id,\n"
                + "[Session].[date],\n"
                + "Attendance.[status],\n"
                + "Student.name,\n"
                + "Student.code,\n"
                + "lecture.lecName,\n"
                + "[Group].[Name],\n"
                + "Room.rName,\n"
                + "[Subject].[name],\n"
                + "timeslot.id,\n"
                + "TimeSlot.[description]\n"
                + "FROM [Session]\n"
                + "INNER JOIN Room ON [Session].roomID = Room.id\n"
                + "INNER JOIN [Group] ON [Session].groupID = [Group].id\n"
                + "INNER JOIN TimeSlot ON [Session].timeslotID = TimeSlot.id\n"
                + "INNER JOIN Attendance ON [Session].id = Attendance.sessionID\n"
                + "INNER JOIN Student ON  Student.id = Attendance.studentID\n"
                + "INNER JOIN [Subject] ON [Group].SubjectID = [Subject].id\n"
                + "INNER JOIN lecture ON [Group].lectureID = lecture.id\n"
                + "WHERE Attendance.studentID = ?\n"
                + "AND [Session].date >= ?\n"
                + "AND [Session].date <= ?";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, sid);
            st.setDate(2, DateTimeHelper.toDateSql(from));
            st.setDate(3, DateTimeHelper.toDateSql(to));
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Session s = new Session();
                s.setId(rs.getInt("id"));
                s.setDate(rs.getDate("date"));

                Attendance attendance = new Attendance();
                attendance.setStatus(rs.getBoolean("status"));
                s.setAttendances(attendance);

                Student student = new Student();
                student.setName(rs.getString("name"));
                student.setCode(rs.getString("code"));
                s.setStudent(student);

                Lecture lec = new Lecture();
                lec.setLecName(rs.getString("lecName"));
                s.setLecture(lec);

                Group group = new Group();
                group.setName(rs.getString("name"));
                s.setGroup(group);

                Room room = new Room();
                room.setName(rs.getString("rName"));
                s.setRoom(room);

                Subject sub = new Subject();
                sub.setName(rs.getString("name"));
                s.setSubject(sub);

                TimeSlot timeslot = new TimeSlot();
                timeslot.setId(rs.getInt("id"));
                timeslot.setDescription(rs.getString("description"));
                s.setTimeslot(timeslot);
                sesssions.add(s);
            }
        } catch (SQLException ex) {
            System.out.println("SQL " + ex);
        }
        return sesssions;
    }

//    public static void main(String[] args) {
//        SessionDAO pro = new SessionDAO();
//        System.out.println("" + pro.getListSessionStudent(1, Date.valueOf("2022-11-07"), Date.valueOf("2022-11-07")));
////        System.out.println("" + pro.getAll());
//    }
}
