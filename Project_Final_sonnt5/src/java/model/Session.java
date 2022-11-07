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
public class Session {

    private int id;
    private Date date;
    private int roomID;
    private int groupID;
    private int timeslotID;
    private boolean status;
    private Attendance attendances;
    private Group group;
    private Room room;
    private Subject subject;
    private TimeSlot timeslot;
    private Lecture lecture;
    private Student student;

    public Session() {
    }

    public Session(int id, Date date, int roomID, int groupID, int timeslotID, boolean status, Attendance attendances, Group group, Room room, Subject subject, TimeSlot timeslot, Lecture lecture, Student student) {
        this.id = id;
        this.date = date;
        this.roomID = roomID;
        this.groupID = groupID;
        this.timeslotID = timeslotID;
        this.status = status;
        this.attendances = attendances;
        this.group = group;
        this.room = room;
        this.subject = subject;
        this.timeslot = timeslot;
        this.lecture = lecture;
        this.student = student;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    

    public Session(int id, Date date, int roomID, int groupID, int timeslotID, boolean status) {
        this.id = id;
        this.date = date;
        this.roomID = roomID;
        this.groupID = groupID;
        this.timeslotID = timeslotID;
        this.status = status;
    }

    public Lecture getLecture() {
        return lecture;
    }

    public void setLecture(Lecture lecture) {
        this.lecture = lecture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public int getGroupID() {
        return groupID;
    }

    public void setGroupID(int groupID) {
        this.groupID = groupID;
    }

    public int getTimeslotID() {
        return timeslotID;
    }

    public void setTimeslotID(int timeslotID) {
        this.timeslotID = timeslotID;
    }

    public Attendance getAttendance() {
        return attendances;
    }

    public void setAttendance(Attendance attendance) {
        this.attendances = attendance;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public TimeSlot getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(TimeSlot timeslot) {
        this.timeslot = timeslot;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Attendance getAttendances() {
        return attendances;
    }

    public void setAttendances(Attendance attendances) {
        this.attendances = attendances;
    }

    @Override
    public String toString() {
        return "Session{" + "id=" + id + ", date=" + date + ", roomID=" + roomID + ", groupID=" + groupID + ", timeslotID=" + timeslotID + ", status=" + status + ", attendances=" + attendances + ", group=" + group + ", room=" + room + ", subject=" + subject + ", timeslot=" + timeslot + ", lecture=" + lecture + '}';
    }

}
