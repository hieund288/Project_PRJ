/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package auth.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Account;

/**
 *
 * @author admin
 */
public abstract class BaseRoleController extends BaseAuthenticationController {

    private boolean isAuthorized(HttpServletRequest req) {
        Account account = (Account) req.getSession().getAttribute("account");

        return true;
    }

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (isAuthorized(req)) {
            processPost(req, resp, (Account) req.getSession().getAttribute("account"));
        } else {
            resp.getWriter().println("access denied!");
        }

    }

    protected abstract void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException;

    protected abstract void processGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException;

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (isAuthorized(req)) {
            processGet(req, resp, (Account) req.getSession().getAttribute("account"));
        } else {
            resp.getWriter().println("access denied!");
        }
    }

}
