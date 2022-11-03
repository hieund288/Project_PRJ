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

//    public ArrayList<Account> getAll() throws SQLException {
//        ArrayList<Account> list = new ArrayList<>();
//        String sql = "Select * from account";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String username = rs.getString("username");
//                String password = rs.getString("password");
//                int role = rs.getInt("role");
//                Account a = new Account(id, username, password, role);
//                list.add(a);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return list;
//
//    }
//
//    public static void main(String[] args) {
//        AccountDAO pro = new AccountDAO();
//        System.out.println("" + pro.getAll());
//    }
}
