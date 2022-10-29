/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Group;
import model.Lecturer;
import model.Major;
import model.Student;
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
    public Group get(int gid) {
        SubjectDBContext subDB = new SubjectDBContext();
        LecturerDBContext lecDB = new LecturerDBContext();
        ArrayList<Subject> subjects = subDB.list();
        ArrayList<Lecturer> lecturers = lecDB.list();
        Group group = new Group();
        try {
            String sql_get_group = "SELECT * FROM [Group] g WHERE g.gid = ?";
            PreparedStatement stm = connection.prepareStatement(sql_get_group);
            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Group gr = new Group();
                int id = rs.getInt("gid");
                String name = rs.getString("gname");
                int subid = rs.getInt("subid");
                int leid = rs.getInt("leid");
                String semester = rs.getString("semester");
                int year = rs.getInt("year");
                gr.setId(id);
                gr.setName(name);
                for (Subject subs : subjects) {
                    if (subs.getId() == subid) {
                        Subject s = subs;
                        gr.setSubject(s);
                    }
                }
                for (Lecturer lecs : lecturers) {
                    if (lecs.getId() == leid) {
                        Lecturer l = lecs;
                        gr.setLecturer(l);
                    }
                }
                gr.setSemester(semester);
                gr.setYear(year);
                group = gr;
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return group;
    }

    @Override
    public ArrayList<Group> list() {
        ArrayList<Group> groups = new ArrayList<>();
        SubjectDBContext subDB = new SubjectDBContext();
        LecturerDBContext lecDB = new LecturerDBContext();
        ArrayList<Subject> subjects = subDB.list();
        ArrayList<Lecturer> lecturers = lecDB.list();
        String sql = "SELECT * FROM [Group]";
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
                for (Subject subs : subjects) {
                    if (subs.getId() == subid) {
                        Subject s = subs;
                        g.setSubject(s);
                    }
                }
                for (Lecturer lecs : lecturers) {
                    if (lecs.getId() == leid) {
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

    public ArrayList<Group> listGroupByLeid(int lid) {
        ArrayList<Group> groups = new ArrayList<>();
        SubjectDBContext subDB = new SubjectDBContext();
        LecturerDBContext lecDB = new LecturerDBContext();
        ArrayList<Subject> subjects = subDB.list();
        ArrayList<Lecturer> lecturers = lecDB.list();
        String sql = "SELECT * FROM [Group] WHERE leid = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lid);
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
                for (Subject subs : subjects) {
                    if (subs.getId() == subid) {
                        Subject s = subs;
                        g.setSubject(s);
                    }
                }
                for (Lecturer lecs : lecturers) {
                    if (lecs.getId() == leid) {
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

    public ArrayList<Student> listStudentBygid(int gid) {
        ArrayList<Student> students = new ArrayList<>();
        MajorDBContext majDB = new MajorDBContext();
        ArrayList<Major> majors = majDB.list();
        String sql = "SELECT s.stuid,s.stuname,s.stuemail,s.stugender,s.studob,s.stuphone,s.stuaddress,s.mid FROM Student s, Student_Group sg, [Group] g\n"
                + "WHERE sg.gid = g.gid AND sg.stuid = s.stuid AND g.gid = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                int id = rs.getInt("stuid");
                String name = rs.getString("stuname");
                String email = rs.getString("stuemail");
                boolean gender = rs.getBoolean("stugender");
                Date dob = rs.getDate("studob");
                String phone = rs.getString("stuphone");
                String address = rs.getString("stuaddress");
                int mid = rs.getInt("mid");

                s.setId(id);
                s.setName(name);
                s.setEmail(email);
                s.setGender(gender);
                s.setDob(dob);
                s.setPhone(phone);
                s.setAddress(address);
                for (Major majs : majors) {
                    if (majs.getId() == mid) {
                        Major m = majs;
                        s.setMid(m);
                    }
                }
                students.add(s);
            }

        } catch (SQLException ex) {

        }

        return students;
    }

}
