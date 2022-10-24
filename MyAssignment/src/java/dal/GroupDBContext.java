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
import model.Account;
import model.Group;
import model.Lecturer;
import model.Subject;

/**
 *
 * @author Khangnekk
 */
public class GroupDBContext extends DBContext<Group> {

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Group> list() {
        ArrayList<Group> groups = new ArrayList<>();
        SubjectDBContext subDB = new SubjectDBContext();
        LecturerDBContext lecDB = new LecturerDBContext();
        ArrayList<Subject> subjects = subDB.list();
        ArrayList<Lecturer> lecturers = lecDB.list();
        String sql = "SELECT * FROM Group";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group g = new Group();
                int id = rs.getInt("gid");
                String name = rs.getString("gname");
                int subid = rs.getInt("subid");
                int leid = rs.getInt("leid");
                String semester = rs.getString("semester");
                int year = rs.getInt("year");
                g.setId(id);
                g.setName(name);
                for(Subject subs : subjects){
                    if(subs.getId()==subid){
                        Subject s = subs;
                        g.setSubject(s);
                    }
                }
                for(Lecturer lecs : lecturers){
                    if(lecs.getId()==leid){
                        Lecturer l = lecs;
                        g.setLecturer(l);
                    }
                }
                g.setSemester(semester);
                g.setYear(year);
                groups.add(g);
            }

        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return groups;
    }

}
