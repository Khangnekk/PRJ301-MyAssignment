/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package unitTest;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import unitTest.dal.objectTestDBContext;
import unitTest.model.Test.objectTest;

/**
 *
 * @author Khangnekk
 */
public class Main {

    public static void main(String[] args) {
        
        System.out.println(mySearch(1).toString());
    }

    public static ArrayList<objectTest> quickSort() {
        objectTestDBContext objDB = new objectTestDBContext();
        List<objectTest> list = objDB.getAll();
        Comparator<objectTest> comparator = new Comparator<objectTest>() {
            @Override
            public int compare(objectTest left, objectTest right) {
                return left.getId() - right.getId(); // use your logic
            }
        };

        Collections.sort(list, comparator); // use the comparator as much as u want
        return (ArrayList<objectTest>) list;
    }

    public static objectTest mySearch(int i) {
        objectTest x = null;
        
        objectTestDBContext objDB = new objectTestDBContext();
        ArrayList<objectTest> myList = objDB.getAll();
//Fill up myList with your Data Points

//Traversal
        for (objectTest myPoint : myList) {
            if (myPoint.getName() != null && myPoint.getId()==i) {
                System.out.println("Found it!");
                 x = myPoint;
            }
        }
       return x;
    }
}
