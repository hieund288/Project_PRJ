/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package student.controller;

import auth.controller.BaseAuthenticationController;
import auth.controller.BaseRoleController;
import dao.AccountDAO;
import dao.SessionDAO;
import dao.SubjectDAO;
import dao.TimeSlotDAO;
import helper.DateTimeHelper;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import model.Account;
import model.Session;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author l
 */
public class TimeTableController extends BaseRoleController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }

    protected void processRequest(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        int sid = account.getId();
        String from_e = req.getParameter("from");
        String to_e = req.getParameter("to");
        java.sql.Date from = null;
        java.sql.Date to = null;
        SessionDAO sessiondao = new SessionDAO();

        if (from_e == null || from_e.length() == 0 || to_e == null || to_e.length() == 0 || DateTimeHelper.compare(java.sql.Date.valueOf(from_e), java.sql.Date.valueOf(to_e)) == 1) {
            Date today = new Date();
            int todayOfWeek = DateTimeHelper.getDayofWeek(today);
            if (todayOfWeek == 1) {
                todayOfWeek = 8;
            }
            Date e_from = DateTimeHelper.addDays(today, 2 - todayOfWeek);
            Date e_to = DateTimeHelper.addDays(today, 8 - todayOfWeek);
            from = DateTimeHelper.toDateSql(e_from);
            to = DateTimeHelper.toDateSql(e_to);
        } else {
            from = java.sql.Date.valueOf(from_e);
            to = java.sql.Date.valueOf(to_e);
        }

        TimeSlotDAO timeslotdb = new TimeSlotDAO();

        ArrayList<TimeSlot> timeslots = timeslotdb.list();// 
        req.setAttribute("abc", sid + " " + from + " " + to);
        ArrayList<Session> sessions = sessiondao.getListSessionStudent(sid, from, to);

        SubjectDAO sub = new SubjectDAO();
        ArrayList<Subject> subjects = sub.list();


        req.setAttribute("subjects", subjects);
        req.setAttribute("from", from);
        req.setAttribute("to", to);
        req.setAttribute("datelist", DateTimeHelper.getDateList(from, to));
        
        req.setAttribute("timeslots", timeslots);
        req.setAttribute("sessions", sessions);
        req.getRequestDispatcher("client/timetable.jsp").forward(req, resp);
        
    }

}
