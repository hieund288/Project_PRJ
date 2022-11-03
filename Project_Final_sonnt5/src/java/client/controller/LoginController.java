/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package client.controller;

import dao.AccountDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import model.Account;

/**
 *
 * @author l
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        AccountDAO accdao = new AccountDAO();
        Account acc = accdao.check(username, password);
        HttpSession session = req.getSession();
        session.setAttribute("account", acc);
        if (acc == null) {
            req.setAttribute("error", "Account not existed!");
            req.getRequestDispatcher("client/login.jsp").forward(req, resp);
        } else {

            if (acc.getRole() == 1) {
                req.getRequestDispatcher("client/teacherhome.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("client/home.jsp").forward(req, resp);
            }
            /// thiếu getRoleAccount, chưa insert vào servlet và dao 

//            request.getRequestDispatcher("client/home.jsp").forward(request, response);
//            response.sendRedirect("home");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("client/login.jsp").forward(req, resp);
    }

}
