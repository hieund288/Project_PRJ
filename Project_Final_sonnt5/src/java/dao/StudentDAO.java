/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import model.Student;

/**
 *
 * @author l
 */
public class StudentDAO extends DBContext {

    public ArrayList<Student> ListStudent() {
        ArrayList<Student> list = new ArrayList<>();
        // Doc du lieu tu DB
        try {
            String sql = "select * from student";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String name = rs.getString("name");
                Student a = new Student(id, code, name);
                list.add(a);
            }
        } catch (SQLException ex) {
        }
        return list;
    }

    public static void main(String[] args) {
        StudentDAO pro = new StudentDAO();
        System.out.println("" + pro.ListStudent());
    }
}
