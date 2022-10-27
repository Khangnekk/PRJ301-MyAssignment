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
import dal.StudentDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Attendance;
import model.Session;
import model.Student;

/**
 *
 * @author Khangnekk
 */
public class check_Attendance extends BaseAuthenticationController {
    
    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Session ses = new Session();
        ses.setId(Integer.parseInt(req.getParameter("seid")));
        String[] stdids = req.getParameterValues("stuid");
        for (String stdid : stdids) {
            Attendance a = new Attendance();
            Student s = new Student();
            a.setStudent(s);
            a.setDescription(req.getParameter("description"+stdid));
            a.setPresent(req.getParameter("present"+stdid).equals("present"));
            s.setId(Integer.parseInt(stdid));
            ses.getAttendances().add(a);
        }
        SessionDBContext db = new SessionDBContext();
        db.update(ses);     
        resp.sendRedirect("check_Attendance?seid=" + ses.getId());
    }
    
    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int seid = Integer.parseInt(req.getParameter("seid"));
        SessionDBContext sesDB = new SessionDBContext();
        Session ses = sesDB.get(seid);
        req.setAttribute("ses", ses);
        req.setAttribute("seid", seid);
        req.getRequestDispatcher("add/check_Attendance.jsp").forward(req, resp);
    }
}
