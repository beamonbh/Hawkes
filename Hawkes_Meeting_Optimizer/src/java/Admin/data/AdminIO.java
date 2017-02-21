/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin.data;

import java.io.*;
import java.util.*;

import Admin.*;

public class AdminIO {
    
    private static List<Admin> admins = null;
    private static String filePath = "";
    
    // Called once from the controller based on servlet context
    public static void init(String filePath) {
        AdminIO.filePath = filePath;
    }
    
    public static List<Admin> selectAdmins() {
        admins = new ArrayList<Admin>();
        File file = new File(filePath);
        try {
            BufferedReader in = new BufferedReader(new FileReader(file));
            
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                if (t.countTokens() >= 3) {
                    String email = t.nextToken();
                    String firstName = t.nextToken();
                    String lastName = t.nextToken();
                    
                    Admin a = new Admin();
                    a.setEmail(email);
                    a.setFirstName(firstName);
                    a.setLastName(lastName);
                   
                    admins.add(a);
                }
                line = in.readLine();
            }
            in.close();
            return admins;
        } catch (IOException e) {
            System.out.println(e);
            return null;
        }
    }
    
    public static Admin selectAdmin(String email) {
        admins = selectAdmins();
        for (Admin a : admins) {
        if (email != null && email.equalsIgnoreCase(a.getEmail())) 
            return a;
        }
        return null;
    }
    
    public static boolean exists(String adminID) {
        Admin p = selectAdmin(adminID);
        if (p != null) 
            return true;
        else 
            return false;
    }
    
    private static void saveAdmins(List<Admin> admins) {
        try {
            File file = new File(filePath);
            PrintWriter out = new PrintWriter(new FileWriter(file));
            for (Admin a : admins) {
                out.println(a.getEmail() + "|" + a.getFirstName() + "|" + a.getLastName());
            }
            out.close();
        } catch (IOException e) {
            System.out.println(e);
        }
    }
    
    public static void insertAdmin(Admin admin) {
          if(!exists(admin.getEmail()))
       {
        admins = selectAdmins();
        admins.add(admin);
        saveAdmins(admins);
       }
    }
    
    public static void updateAdmin(Admin admin) {
        admins = selectAdmins();
        for (int i = 0; i < admins.size(); i++) {
            Admin a = admins.get(i);
            if (admin.getEmail() != null && admin.getEmail().equalsIgnoreCase(a.getEmail())) {
                admins.set(i, admin);
            } 
        }
        saveAdmins(admins);
    }
    
    public static void deleteAdmin(Admin admin) {
        admins = selectAdmins();
        for (int i = 0; i < admins.size(); i++) {
            Admin a = admins.get(i);
            if (admin.getEmail() != null && admin.getEmail().equalsIgnoreCase(a.getEmail())) {
                admins.remove(i);
            } 
        }
        saveAdmins(admins);
    }
   
}