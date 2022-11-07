/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author l
 */
public class Attendance {

    private int studentID;
    private int sessionID;
    private boolean status;
    private Date Time;
    private String Description;
    private ArrayList<Student> students = new ArrayList<>();
    private ArrayList<Session> sessions = new ArrayList<>();

    public Attendance() {
    }

    public Attendance(int studentID, int sessionID, boolean status, Date Time, String Description) {
        this.studentID = studentID;
        this.sessionID = sessionID;
        this.status = status;
        this.Time = Time;
        this.Description = Description;
    }

    public int getStudentID() {
        return studentID;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public int getSessionID() {
        return sessionID;
    }

    public void setSessionID(int sessionID) {
        this.sessionID = sessionID;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getTime() {
        return Time;
    }

    public void setTime(Date Time) {
        this.Time = Time;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public ArrayList<Student> getStudents() {
        return students;
    }

    public void setStudents(ArrayList<Student> students) {
        this.students = students;
    }

    public ArrayList<Session> getSessions() {
        return sessions;
    }

    public void setSessions(ArrayList<Session> sessions) {
        this.sessions = sessions;
    }

    @Override
    public String toString() {
        return "Attendance{" + "studentID=" + studentID + ", sessionID=" + sessionID + ", status=" + status + ", Time=" + Time + ", Description=" + Description + ", students=" + students + ", sessions=" + sessions + '}';
    }

}
