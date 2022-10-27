/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package unitTest.dal;

import java.util.ArrayList;
import unitTest.model.Test.objectTest;

/**
 *
 * @author Khangnekk
 */
public class objectTestDBContext {

    public ArrayList<objectTest> getAll() {
        ArrayList<objectTest> ots = new ArrayList<>();
            ots.add(new objectTest(1, "a", "ff"));
            ots.add(new objectTest(3, "b", "gg"));
            ots.add(new objectTest(2, "c", "hh"));
            ots.add(new objectTest(5, "d", "ii"));
            ots.add(new objectTest(4, "e", "jj"));
        return ots;
    }
}
