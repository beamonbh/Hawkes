/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Employee;

import java.io.*;
import java.util.*;

import Employee.*;

public class EmployeeIO {
    
    private static List<Employee> employees = null;
    private static String filePath = "";
    
    // Called once from the controller based on servlet context
    public static void init(String filePath) {
        EmployeeIO.filePath = filePath;
    }
    
    public static List<Employee> selectEmployees() {
        employees = new ArrayList<Employee>();
        File file = new File(filePath);
        try {
            BufferedReader in = new BufferedReader(new FileReader(file));
            
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                if (t.countTokens() >= 4) {
                    String email = t.nextToken();
                    String firstName = t.nextToken();
                    String lastName = t.nextToken();
                    String position = t.nextToken();
                    Employee e = new Employee();
                    e.setEmail(email);
                    e.setFirstName(firstName);
                    e.setLastName(lastName);
                    e.setPosition(position);
                   
                    employees.add(e);
                }
                line = in.readLine();
            }
            in.close();
            return employees;
        } catch (IOException e) {
            System.out.println(e);
            return null;
        }
    }
    
    public static Employee selectEmployee(String email) {
        employees = selectEmployees();
        for (Employee e : employees) {
        if (email != null && email.equalsIgnoreCase(e.getEmail())) 
            return e;
        }
        return null;
    }
    
    public static boolean exists(String employeeEmail) {
        Employee e = selectEmployee(employeeEmail);
        if (e != null) 
            return true;
        else 
            return false;
    }
    
    private static void saveEmployees(List<Employee> employees) {
        try {
            File file = new File(filePath);
            PrintWriter out = new PrintWriter(new FileWriter(file));
            for (Employee e : employees) {
                out.println(e.getEmail() + "|" + e.getFirstName() + "|" + e.getLastName() + "|" + e.getPosition());
            }
            out.close();
        } catch (IOException e) {
            System.out.println(e);
        }
    }
    
    public static void insertEmployee(Employee employee) {
          if(!exists(employee.getEmail()))
       {
        employees = selectEmployees();
        employees.add(employee);
        saveEmployees(employees);
       }
    }
    
    public static void updateEmployee(Employee employee) {
        employees = selectEmployees();
        for (int i = 0; i < employees.size(); i++) {
            Employee e = employees.get(i);
            if (employee.getEmail() != null && employee.getEmail().equalsIgnoreCase(e.getEmail())) {
                employees.set(i, employee);
            } 
        }
        saveEmployees(employees);
    }
    
    public static void deleteEmployee(Employee employee) {
        employees = selectEmployees();
        for (int i = 0; i < employees.size(); i++) {
            Employee e = employees.get(i);
            if (employee.getEmail() != null && employee.getEmail().equalsIgnoreCase(e.getEmail())) {
                employees.remove(i);
            } 
        }
        saveEmployees(employees);
    }
   
}