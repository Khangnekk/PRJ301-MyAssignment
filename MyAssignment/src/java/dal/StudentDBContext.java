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
import model.Lecturer;
import model.Major;
import model.Student;

/**
 *
 * @author Khangnekk
 */
public class StudentDBContext extends DBContext<Student>{

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Student> list() {
        ArrayList<Student> students = new ArrayList<>();
        MajorDBContext majDB = new MajorDBContext();
        ArrayList<Major> majors = majDB.list();
        
        String sql = "SELECT * FROM Student";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
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
                
                for(Major majs : majors){
                    if(majs.getId()==mid){
                        Major m = majs;
                        s.setMid(m);
                    }
                }
                students.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return students;
    }
    
}
