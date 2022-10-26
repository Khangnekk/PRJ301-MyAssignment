/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.lecturer;

import controller.auth.lecturer.BaseAuthenticationController;
import dal.AttendanceDBContext;
import dal.GroupDBContext;
import dal.LecturerDBContext;
import dal.SessionDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Attendance;
import model.Group;
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
        
        LecturerDBContext lecturerDB = new LecturerDBContext();
        GroupDBContext groupDB = new GroupDBContext();
        SessionDBContext sesDB = new SessionDBContext();
        AttendanceDBContext attDB = new AttendanceDBContext();
        Group group;
        
        String email = req.getParameter("email");
        int gid = Integer.parseInt(req.getParameter("gid"));
        int lid = lecturerDB.getIdByEmail(email);
        int seid = Integer.parseInt(req.getParameter("seid"));
        
        ArrayList<Group> groupss = groupDB.listGroupByLeid(lid);
        ArrayList<Session> sessionsByGidAndLeid = sesDB.getSessionByGidAndLeid(lid, gid);
        ArrayList<Attendance> attendances = attDB.getAttendancesBySeid(seid);
        
        group = groupDB.get(gid);
        
        req.getSession().setAttribute("sessionsByGidAndLeid", sessionsByGidAndLeid);
        req.setAttribute("email", email);
        req.setAttribute("attendances", attendances);
        req.getSession().setAttribute("group", group);
        req.getSession().setAttribute("groupss", groupss);

        req.getRequestDispatcher("add/check_Attendance.jsp").forward(req, resp);
    }
}
