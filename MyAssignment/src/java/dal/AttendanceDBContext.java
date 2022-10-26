/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.Session;
import model.Student;

/**
 *
 * @author Khangnekk
 */
public class AttendanceDBContext extends DBContext<Attendance> {

    @Override
    public void insert(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attendance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attendance> list() {
        ArrayList<Attendance> attendances = new ArrayList<>();
        
        String sql = "SELECT * FROM Attendance";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attendance a = new Attendance();
                StudentDBContext stuDB = new StudentDBContext();
                SessionDBContext sesDB = new SessionDBContext();
                ArrayList<Student> students = stuDB.list();
                ArrayList<Session> sessions = sesDB.list();
                int aid = rs.getInt("aid");
                int seid = rs.getInt("seid");
                int stuid = rs.getInt("stuid");
                boolean present = rs.getBoolean("present");
                String des = rs.getString("description");
                int index = rs.getInt("index");
                a.setId(aid);
                a.setPresent(present);
                a.setDescription(des);

                for (Student s : students) {
                    if (s.getId() == stuid) {
                        Student st = s;
                        a.setStudent(st);
                    }
                }
                for (Session se : sessions) {
                    if (se.getId() == seid) {
                        Session ses = se;
                        a.setSession(ses);
                    }
                }
                a.setIndex(index);
                attendances.add(a);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return attendances;
    }
    
    public ArrayList<Attendance> getAttendancesBySeid(int seid_input) {
        ArrayList<Attendance> attendances = new ArrayList<>();
        
        String sql = "SELECT * FROM Attendance WHERE seid = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, seid_input);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attendance a = new Attendance();
                StudentDBContext stuDB = new StudentDBContext();
                SessionDBContext sesDB = new SessionDBContext();
                ArrayList<Student> students = stuDB.list();
                ArrayList<Session> sessions = sesDB.list();
                int aid = rs.getInt("aid");
                int seid = rs.getInt("seid");
                int stuid = rs.getInt("stuid");
                boolean present = rs.getBoolean("present");
                String des = rs.getString("description");
                int index = rs.getInt("index");
                a.setId(aid);
                a.setPresent(present);
                a.setDescription(des);

                for (Student s : students) {
                    if (s.getId() == stuid) {
                        Student st = s;
                        a.setStudent(st);
                    }
                }
                for (Session se : sessions) {
                    if (se.getId() == seid) {
                        Session ses = se;
                        a.setSession(ses);
                    }
                }
                a.setIndex(index);
                attendances.add(a);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return attendances;
    }

}
