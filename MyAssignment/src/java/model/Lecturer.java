/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Khangnekk
 */
public class Lecturer {
    private int leid;
    private String lename;
    private String leemail;
    private boolean gender;
    private Date ledob;
    private String lephone;
    private String leaddress;

    public int getLeid() {
        return leid;
    }

    public void setLeid(int leid) {
        this.leid = leid;
    }

    public String getLename() {
        return lename;
    }

    public void setLename(String lename) {
        this.lename = lename;
    }

    public String getLeemail() {
        return leemail;
    }

    public void setLeemail(String leemail) {
        this.leemail = leemail;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getLedob() {
        return ledob;
    }

    public void setLedob(Date ledob) {
        this.ledob = ledob;
    }

    public String getLephone() {
        return lephone;
    }

    public void setLephone(String lephone) {
        this.lephone = lephone;
    }

    public String getLeaddress() {
        return leaddress;
    }

    public void setLeaddress(String leaddress) {
        this.leaddress = leaddress;
    }
}
