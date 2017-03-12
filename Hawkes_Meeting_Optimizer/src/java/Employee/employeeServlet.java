/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Employee;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author brett perrine
 */
public class employeeServlet extends HttpServlet {

   
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String path = this.getServletContext().getRealPath("/WEB-INF/Employees.txt");
        EmployeeIO.init(path);   
        String url = "/welcome.html";
        
        String action=request.getParameter("action");        
        
        if(action == null){
            action="home";
        }
        else if(action.equals("home")){
            url = "/welcome.html";
        }
        else if(action.equals("display")){
            List<Employee> employees = EmployeeIO.selectEmployees();
            request.setAttribute("employees", employees);
            url="/employee/displayEmployees.jsp";
        }
        else if(action.equals("addNew"))
        {
            url="/employee/addEmployee.jsp";
        }
        
        else if(action.equals("delete")){
            String email = request.getParameter("email");
            Employee e = EmployeeIO.selectEmployee(email);
            request.setAttribute("employee", e);
            
            url ="/employee/deleteEmployee.jsp";
        }
   
        
        else if(action.equals("join")){
           url = "/index.html";
           
        }
        
        else if(action.equals("edit")){
            String email = request.getParameter("email");
            Employee e = EmployeeIO.selectEmployee(email);
            request.setAttribute("email", e.getEmail());
            request.setAttribute("firstName", e.getFirstName());
            request.setAttribute("lastName", e.getLastName());
            request.setAttribute("position", e.getPosition());
            
            url="/employee/editEmployee.jsp";
        }
        
        else if(action.equals("confirmDelete")){
            String email = request.getParameter("emailToDelete");
            Employee e = EmployeeIO.selectEmployee(email);
            EmployeeIO.deleteEmployee(e);
            List<Employee> employees = EmployeeIO.selectEmployees();
            request.setAttribute("employees", employees);
            url = "/employee/displayEmployees.jsp";       
        }
        
        else if(action.equals("addNewEmployee")){
            String newEmail = request.getParameter("email");
            String newFirstName = request.getParameter("firstName");
            String newLastName = request.getParameter("lastName");
            String newPosition = request.getParameter("position");
            
            Employee newEmployee = new Employee();
            newEmployee.setEmail(newEmail);
            newEmployee.setFirstName(newFirstName);
            newEmployee.setLastName(newLastName);
            newEmployee.setPosition(newPosition);
            
            HttpSession session = request.getSession();
           
            
            if (newEmail.isEmpty() || newFirstName.isEmpty() || newLastName.isEmpty()
                  || newPosition.isEmpty())
            {
                // forward to the view to get missing parameters
                url = "/employee/addEmployee.jsp";
                
            }
            else
            {
               
                EmployeeIO.insertEmployee(newEmployee);

           List<Employee> employees = EmployeeIO.selectEmployees();
            request.setAttribute("employees", employees);
                url = "/employee/displayEmployees.jsp";
            }   
            List<Employee> employees = EmployeeIO.selectEmployees();
         request.setAttribute("employees", employees);
           
        }
        
        else if(action.equals("editConfirm")){
            
            String email = request.getParameter("emailEdit");
            String firstName = request.getParameter("firstNameEdit");
            String lastName = request.getParameter("lastNameEdit");
            String position = request.getParameter("position");
            
            Employee employee = EmployeeIO.selectEmployee(email);
       
            employee.setFirstName(firstName);
            employee.setLastName(lastName);
            employee.setPosition(position);

            
            if (firstName.isEmpty() || lastName.isEmpty() || position.isEmpty())
            {
                // forward to the view to get missing parameters
                url = "/employee/editEmployee.jsp";
                
            }
            else
            {
          
                EmployeeIO.updateEmployee(employee);
                List<Employee> employees = EmployeeIO.selectEmployees();
                request.setAttribute("employees", employees);

                // forward to the view
                url = "/employee/displayEmployees.jsp";
            }   
        }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
