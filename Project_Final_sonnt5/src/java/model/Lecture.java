/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author l
 */
public class Lecture {

    private int id;
    private String lecName;
    private ArrayList<Group> groups = new ArrayList<>();
    

    public Lecture() {
    }

    public Lecture(int id, String lecName) {
        this.id = id;
        this.lecName = lecName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLecName() {
        return lecName;
    }

    public void setLecName(String lecName) {
        this.lecName = lecName;
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    @Override
    public String toString() {
        return "Lecture{" + "id=" + id + ", lecName=" + lecName + '}';
    }

}
