/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.lecturer;

import controller.auth.lecturer.BaseAuthenticationController;
import dal.AttendanceDBContext;
import dal.GroupDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Attendance;
import model.Group;

/**
 *
 * @author Khangnekk
 */
public class groupController extends BaseAuthenticationController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GroupDBContext groupDB = new GroupDBContext();
        AttendanceDBContext attDB = new AttendanceDBContext();
        ArrayList<Group> groups = groupDB.list();
        ArrayList<Attendance> attendances = attDB.list();
        req.setAttribute("groups", groups);
        req.setAttribute("attendancs", attendances);
        req.getRequestDispatcher("view/lecturer/group.jsp").forward(req, resp);
    }
    
}
