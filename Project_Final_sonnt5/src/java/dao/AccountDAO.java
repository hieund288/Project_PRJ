/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author l
 */
public class AccountDAO extends DBContext {

    public ArrayList<Account> getAll() {
        ArrayList<Account> list = new ArrayList<>();
        String sql = "Select * from account";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                int role = rs.getInt("role");
                String name = rs.getString("name");
                Account a = new Account(id, username, password, name, role);
                list.add(a);
            }
        } catch (SQLException e) {
        }
        return list;

    }

    public Account check(String username, String password) {
        String sql = "select*from account where username=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(username, password, rs.getInt("role"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        String a = "hieu";
        String b = "hieu";
        AccountDAO acc = new AccountDAO();
//        System.out.println("" + acc.check(a, b));
        System.out.println("" + acc.getAll());
    }
}
