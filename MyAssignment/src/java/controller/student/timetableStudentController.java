/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.student;

import dal.GroupDBContext;
import dal.LecturerDBContext;
import dal.SessionDBContext;
import dal.StudentDBContext;
import dal.TimeSlotDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import model.Group;
import model.Session;
import model.TimeSlot;
import util.DateTimeHelper;

/**
 *
 * @author Khangnekk
 */
public class timetableStudentController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentDBContext stDB = new StudentDBContext();
        String raw_from = req.getParameter("from");
        String raw_to = req.getParameter("to");
        String email = req.getParameter("email");
        int stuid = stDB.getIdByEmail(email);
        java.sql.Date from = null;
        java.sql.Date to = null;
        
        if (raw_from == null || raw_from.length() == 0) {
            Date today = new Date();
            int todayOfWeek = DateTimeHelper.getDayofWeek(today);
            Date e_from = DateTimeHelper.addDays(today, 2 - todayOfWeek);
            Date e_to = DateTimeHelper.addDays(today, 8 - todayOfWeek);
            from = DateTimeHelper.toDateSql(e_from);
            to = DateTimeHelper.toDateSql(e_to);
        } else {
            from = java.sql.Date.valueOf(raw_from);
            to = java.sql.Date.valueOf(raw_to);
        }
        
        TimeSlotDBContext slotDB = new TimeSlotDBContext();
        ArrayList<TimeSlot> slots = slotDB.list();
        req.setAttribute("slots", slots);
        
        SessionDBContext sesDB = new SessionDBContext();
        ArrayList<Session> sessions = sesDB.filter(stuid, from, to);
        req.setAttribute("sessions", sessions);

        req.setAttribute("from", from);
        req.setAttribute("to", to);
        req.setAttribute("dates", DateTimeHelper.getDateList(from, to));
        req.getRequestDispatcher("view/student/timeTable.jsp").forward(req, resp);
    }
}
