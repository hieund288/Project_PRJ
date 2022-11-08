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
    private String name;
    private int role;

    public Account(int id, String username, String password, String name, int role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.role = role;
    }

    public Account() {
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", role=" + role + '}';
    }

}
