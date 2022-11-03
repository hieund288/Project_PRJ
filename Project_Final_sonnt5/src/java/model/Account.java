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
public class Account {

    private int id;
    private String username;
    private String password;
    private int role;
    private int lecID;
    private int stuID;

    public Account() {
    }

    public Account(int id, String username, String password, int role, int lecID, int stuID) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.lecID = lecID;
        this.stuID = stuID;
    }

    public Account(String username, String password, int role) {
        this.username = username;
        this.password = password;
        this.role = role;
            
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getLecID() {
        return lecID;
    }

    public void setLecID(int lecID) {
        this.lecID = lecID;
    }

    public int getStuID() {
        return stuID;
    }

    public void setStuID(int stuID) {
        this.stuID = stuID;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", role=" + role + ", lecID=" + lecID + ", stuID=" + stuID + '}';
    }

}
