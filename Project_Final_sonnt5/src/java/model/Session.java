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
    private int attendance;
    private ArrayList<Attendance> attendances = new ArrayList<>();
    private ArrayList<Group> groups = new ArrayList<>();
    private ArrayList<Room> rooms = new ArrayList<>();
    private ArrayList<TimeSlot> timeslots = new ArrayList<>();

    public Session() {
    }

    public Session(int id, Date date, int roomID, int groupID, int timeslotID, int attendance) {
        this.id = id;
        this.date = date;
        this.roomID = roomID;
        this.groupID = groupID;
        this.timeslotID = timeslotID;
        this.attendance = attendance;
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

    public int getAttendance() {
        return attendance;
    }

    public void setAttendance(int attendance) {
        this.attendance = attendance;
    }

    public ArrayList<Attendance> getAttendances() {
        return attendances;
    }

    public void setAttendances(ArrayList<Attendance> attendances) {
        this.attendances = attendances;
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    public ArrayList<Room> getRooms() {
        return rooms;
    }

    public void setRooms(ArrayList<Room> rooms) {
        this.rooms = rooms;
    }

    public ArrayList<TimeSlot> getTimeslots() {
        return timeslots;
    }

    public void setTimeslots(ArrayList<TimeSlot> timeslots) {
        this.timeslots = timeslots;
    }

    @Override
    public String toString() {
        return "Session{" + "id=" + id + ", date=" + date + ", roomID=" + roomID + ", groupID=" + groupID + ", timeslotID=" + timeslotID + ", attendance=" + attendance + '}';
    }

}
