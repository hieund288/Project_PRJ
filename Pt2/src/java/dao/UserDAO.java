/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author l
 */
public class UserDAO extends DBContext {

    public ArrayList<User> getAll() {
        ArrayList<User> list = new ArrayList<>();
        String sql = "Select * from user";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
                User a = new User(username, password);
                list.add(a);
            }
        } catch (SQLException e) {
        }
        return list;

    }

    public User check(String username, String password) {
        String sql = "select*from user where username='?' and password='?'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(username, password);
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public static void main(String[] args) {
//        String a = "hieu";
//        String b = "hieu";
        UserDAO acc = new UserDAO();
        System.out.println("" + acc.getAll());
    }
}
