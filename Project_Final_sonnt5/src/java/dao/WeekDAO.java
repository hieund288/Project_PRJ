/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Week;

/**
 *
 * @author l
 */
public class WeekDAO extends DBContext {

    public void generateWeek() {
        //tao table
        //createTable();
        //1 nam co khoang 53 tuan
        int numberOfWeek = 53;
        //ngay bat dau la tu ngay 3 thang 1 nam 2022 (xem tren fap)
        Date dfrom = Date.valueOf("2022-01-03");
        LocalDate df = LocalDate.parse(dfrom.toString());
        ArrayList<Week> arr = new ArrayList<>();
        while (numberOfWeek != 0) {
            //add each week to DB
            addAWeek(53 - numberOfWeek + 1, df);
            df = df.plusDays(7);
            numberOfWeek--;
        }
    }

    public ArrayList<Week> list() {
        try {
            ArrayList<Week> arr = new ArrayList<>();
            PreparedStatement sql = connection.prepareStatement("SELECT [no]\n"
                    + "      ,[dfrom]\n"
                    + "      ,[dto]\n"
                    + "  FROM [Week]");
            ResultSet rs = sql.executeQuery();
            while (rs.next()) {
                Week a = new Week();
                a.setNo(rs.getInt("no"));
                a.setDfrom(rs.getDate("dfrom"));
                a.setDto(rs.getDate("dto"));
                arr.add(a);
            }
            return arr;
        } catch (SQLException ex) {
        }
        return null;
    }

    public void addAWeek(int i, LocalDate df) {
        Date dto = Date.valueOf(df.plusDays(6));
        Date dfrom = Date.valueOf(df);
        int no = i;
        try {
            PreparedStatement sql = connection.prepareStatement("INSERT INTO [Week]\n"
                    + "           ([no]\n"
                    + "           ,[dfrom]\n"
                    + "           ,[dto])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?)");
            sql.setInt(1, i);
            sql.setDate(2, dfrom);
            sql.setDate(3, dto);
            ResultSet rs = sql.executeQuery();
        } catch (SQLException ex) {
        }
    }

//    public void createTable() {
//        try {
//            PreparedStatement sql = connection.prepareStatement("create table [Week](\n"
//                    + "	[no] [int] not null primary key,\n"
//                    + "	[dfrom] [date] not null,\n"
//                    + "	[dto] [date] not null\n"
//                    + ")");
//            ResultSet rs = sql.executeQuery();
//        } catch (SQLException ex) {
//        }
//    }


    public ArrayList<Date> getDaysOfWeek(int noOfWeek) {
        //output:7 dayOfWeeks (arrayList) Ex: 10/1/2022 to 16/1/2022 (for week 2)
        ArrayList<Date> arr = new ArrayList<>();
        try {
            PreparedStatement sql = connection.prepareStatement("select * from Week where no = ?");
            sql.setInt(1, noOfWeek);
            ResultSet rs = sql.executeQuery();
            if (rs.next()) {
                Date dfrom = rs.getDate("dfrom");
                //add to array from this dfrom and 6 day followed 
                arr.add(Date.valueOf(dfrom.toLocalDate().plusDays(0)));
                arr.add(Date.valueOf(dfrom.toLocalDate().plusDays(1)));
                arr.add(Date.valueOf(dfrom.toLocalDate().plusDays(2)));
                arr.add(Date.valueOf(dfrom.toLocalDate().plusDays(3)));
                arr.add(Date.valueOf(dfrom.toLocalDate().plusDays(4)));
                arr.add(Date.valueOf(dfrom.toLocalDate().plusDays(5)));
                arr.add(Date.valueOf(dfrom.toLocalDate().plusDays(6)));
            }
            return arr;
        } catch (SQLException ex) {
        }
        return null;
    }
}
