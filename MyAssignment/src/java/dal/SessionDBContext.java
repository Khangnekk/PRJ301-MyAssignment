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
import model.*;

/**
 *
 * @author Khangnekk
 */
public class SessionDBContext extends DBContext<Session> {

    public ArrayList<Session> getSessionByGidAndLeid(int leid_input, int gid_input) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql_get_Sesion = "SELECT * FROM [Session]\n"
                    + "WHERE gid = ? AND leid = ?";
            PreparedStatement stm = connection.prepareStatement(sql_get_Sesion);
            stm.setInt(1, gid_input);
            stm.setInt(2, leid_input);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session s = new Session();

                GroupDBContext gDB = new GroupDBContext();
                RoomDBContext rDB = new RoomDBContext();
                TimeSlotDBContext tiDB = new TimeSlotDBContext();
                LecturerDBContext leDB = new LecturerDBContext();

                ArrayList<Group> groups = gDB.list();
                ArrayList<Lecturer> lecturers = leDB.list();
                ArrayList<Room> rooms = rDB.list();
                ArrayList<TimeSlot> ts = tiDB.list();

                s.setId(rs.getInt("seid"));
                int gid = rs.getInt("gid");
                for (Group g : groups) {
                    if (g.getId() == gid) {
                        s.setGroup(g);
                    }
                }
                int rid = rs.getInt("rid");
                for (Room r : rooms) {
                    if (r.getId() == rid) {
                        s.setRoom(r);
                    }
                }
                s.setDate(rs.getDate("date"));
                int tid = rs.getInt("tid");
                for (TimeSlot t : ts) {
                    if (t.getId() == tid) {
                        s.setTimeslot(t);
                    }
                }
                int leid = rs.getInt("leid");
                for (Lecturer l : lecturers) {
                    if (l.getId() == leid) {
                        s.setLecturer(l);
                    }
                }
                s.setAttendated(rs.getBoolean("attend"));
                s.setIndex(rs.getInt("index"));

                sessions.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sessions;

    }

    public ArrayList<Session> filter(int leid, Date from, Date to) {

        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql_get_Sesion = "SELECT \n"
                    + "ses.seid,ses.[date],ses.[index],ses.attend,\n"
                    + "l.leid,l.lename,\n"
                    + "g.gid,g.gname,\n"
                    + "sub.subid,sub.subname,\n"
                    + "r.rid,r.rname,\n"
                    + "t.tid,t.[description]\n"
                    + "FROM [Session] ses\n"
                    + "INNER JOIN Lecturer l ON l.leid = ses.leid\n"
                    + "INNER JOIN [Group] g ON g.gid = ses.gid\n"
                    + "INNER JOIN [Subject] sub ON sub.subid = g.subid\n"
                    + "INNER JOIN Room r ON r.rid = ses.rid\n"
                    + "INNER JOIN TimeSlot t ON t.tid = ses.tid\n"
                    + "WHERE\n"
                    + "l.leid = ?\n"
                    + "AND ses.[date] >= ?\n"
                    + "AND ses.[date] <= ?";
            PreparedStatement stm = connection.prepareStatement(sql_get_Sesion);
            stm.setInt(1, leid);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session session = new Session();
                Group g = new Group();
                Room r = new Room();
                Lecturer l = new Lecturer();
                TimeSlot t = new TimeSlot();
                Subject sub = new Subject();

                session.setId(rs.getInt("seid"));
                session.setDate(rs.getDate("date"));
                session.setIndex(rs.getInt("index"));
                session.setAttendated(rs.getBoolean("attend"));

                l.setId(rs.getInt("leid"));
                l.setName(rs.getString("lename"));
                session.setLecturer(l);

                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("gname"));
                session.setGroup(g);

                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));
                g.setSubject(sub);

                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                session.setRoom(r);

                t.setId(rs.getInt("tid"));
                t.setName("tname");
                t.setDescription(rs.getString("description"));
                session.setTimeslot(t);

                sessions.add(session);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sessions;
    }

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(int id) {
        try {
            String sql = "SELECT * FROM [Session] WHERE seid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Session s = new Session();

                GroupDBContext gDB = new GroupDBContext();
                RoomDBContext rDB = new RoomDBContext();
                TimeSlotDBContext tiDB = new TimeSlotDBContext();
                LecturerDBContext leDB = new LecturerDBContext();

                ArrayList<Group> groups = gDB.list();
                ArrayList<Lecturer> lecturers = leDB.list();
                ArrayList<Room> rooms = rDB.list();
                ArrayList<TimeSlot> ts = tiDB.list();

                s.setId(rs.getInt("seid"));
                int gid = rs.getInt("gid");
                for (Group g : groups) {
                    if (g.getId() == gid) {
                        s.setGroup(g);
                    }
                }
                int rid = rs.getInt("rid");
                for (Room r : rooms) {
                    if (r.getId() == rid) {
                        s.setRoom(r);
                    }
                }
                s.setDate(rs.getDate("date"));
                int tid = rs.getInt("tid");
                for (TimeSlot t : ts) {
                    if (t.getId() == tid) {
                        s.setTimeslot(t);
                    }
                }
                int leid = rs.getInt("leid");
                for (Lecturer l : lecturers) {
                    if (l.getId() == leid) {
                        s.setLecturer(l);
                    }
                }
                s.setAttendated(rs.getBoolean("attend"));
                s.setIndex(rs.getInt("index"));
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LecturerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Session> list() {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql_get_Sesion = "SELECT * FROM [Session]";
            PreparedStatement stm = connection.prepareStatement(sql_get_Sesion);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session s = new Session();

                GroupDBContext gDB = new GroupDBContext();
                RoomDBContext rDB = new RoomDBContext();
                TimeSlotDBContext tiDB = new TimeSlotDBContext();
                LecturerDBContext leDB = new LecturerDBContext();

                ArrayList<Group> groups = gDB.list();
                ArrayList<Lecturer> lecturers = leDB.list();
                ArrayList<Room> rooms = rDB.list();
                ArrayList<TimeSlot> ts = tiDB.list();

                s.setId(rs.getInt("seid"));
                int gid = rs.getInt("gid");
                for (Group g : groups) {
                    if (g.getId() == gid) {
                        s.setGroup(g);
                    }
                }
                int rid = rs.getInt("rid");
                for (Room r : rooms) {
                    if (r.getId() == rid) {
                        s.setRoom(r);
                    }
                }
                s.setDate(rs.getDate("date"));
                int tid = rs.getInt("tid");
                for (TimeSlot t : ts) {
                    if (t.getId() == tid) {
                        s.setTimeslot(t);
                    }
                }
                int leid = rs.getInt("leid");
                for (Lecturer l : lecturers) {
                    if (l.getId() == leid) {
                        s.setLecturer(l);
                    }
                }
                s.setAttendated(rs.getBoolean("attend"));
                s.setIndex(rs.getInt("index"));

                sessions.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sessions;

    }

}
