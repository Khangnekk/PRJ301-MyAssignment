/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.lecturer;

import controller.auth.lecturer.BaseAuthenticationController;
import dal.SessionDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Session;

/**
 *
 * @author Khangnekk
 */
public class check_Attendance extends BaseAuthenticationController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {    
        int seid = Integer.parseInt(req.getParameter("seid"));
        SessionDBContext sesDB = new SessionDBContext();
        Session getSessionsByID = sesDB.get(seid);
        req.getSession().setAttribute("getSessionsByID", getSessionsByID);
        req.getRequestDispatcher("add/check_Attendance.jsp").forward(req, resp);
    }
}
