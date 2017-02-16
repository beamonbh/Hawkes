  /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Admin;

import Admin.data.AdminIO;
import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import admin.*;

/**
 *
 * @author brett perrine
 */
public class signInServlet extends HttpServlet {

   
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
        
        String path = this.getServletContext().getRealPath("/WEB-INF/Admins.txt");
        AdminIO.init(path);   
        String url = "/welcome.html";
        
        String action=request.getParameter("action");        
        
        if(action == null){
            action="home";
        }
        else if(action.equals("home")){
            url = "/welcome.html";
        }
        else if(action.equals("display")){
            List<Admin> admins = AdminIO.selectAdmins();
            request.setAttribute("admins", admins);
            url="/display.jsp";
        }
        else if(action.equals("addNew"))
        {
            url="/add.jsp";
        }
        
        else if(action.equals("delete")){
            String email = request.getParameter("email");
            Admin a = AdminIO.selectAdmin(email);
            request.setAttribute("admin", a);
            
            url ="/deleteAdmin.jsp";
        }
        else if(action.equals("add")){
            url="/index.html";
        }
        
        else if(action.equals("join")){
           url = "/index.html";
        }
        
        else if(action.equals("edit")){
            String email = request.getParameter("email");
            Admin a = AdminIO.selectAdmin(email);
            request.setAttribute("email", a.getEmail());
            request.setAttribute("firstName", a.getFirstName());
            request.setAttribute("lastName", a.getLastName());
            
            url="/editAdmin.jsp";
        }
        
        else if(action.equals("confirmDelete")){
            String email = request.getParameter("emailToDelete");
            Admin a = AdminIO.selectAdmin(email);
            AdminIO.deleteAdmin(a);
            List<Admin> admins = AdminIO.selectAdmins();
            request.setAttribute("admins", admins);
            url = "/displayAdmins.jsp";       
        }
        
        else if(action.equals("addNewAdmin")){
            String newEmail= request.getParameter("email");
            String newFirstName= request.getParameter("firstName");
            String newLastName= request.getParameter("lastName");
            
            Admin newAdmin = new Admin();
            newAdmin.setEmail(newEmail);
            newAdmin.setFirstName(newFirstName);
            newAdmin.setLastName(newLastName);
            
            HttpSession session = request.getSession();
            session.setAttribute("admin", newAdmin);
            
            if (newEmail.isEmpty() || newFirstName.isEmpty() || newLastName.isEmpty())
            {
                // forward to the view to get missing parameters
                url = "/welcome.jsp";
                
            }
            else
            {
               
                AdminIO.insertAdmin(newAdmin);

                // forward to the view
                url = "/displayAdmins.jsp";
            }   
            request.setAttribute("admin", newAdmin);
            List<Admin> admins = AdminIO.selectAdmins();
            session.setAttribute("admins", admins);
        }
        
        else if(action.equals("editConfirm")){
            
            String email = request.getParameter("emailEdit");
            String firstName = request.getParameter("firstNameEdit");
            String lastName = request.getParameter("lastNameEdit");
            
            Admin admin = AdminIO.selectAdmin(email);
            System.out.println(admin.getFirstName());
            admin.setFirstName(firstName);
            admin.setLastName(lastName);
            System.out.println(admin.getFirstName());

            
            if (firstName.isEmpty() || lastName.isEmpty())
            {
                // forward to the view to get missing parameters
                url = "/editAdmin.jsp";
                
            }
            else
            {
          
                AdminIO.updateAdmin(admin);
                Admin a2 = AdminIO.selectAdmin(email);
                System.out.println(a2.getFirstName());

                List<Admin> admins = AdminIO.selectAdmins();
                request.setAttribute("admins", admins);

                // forward to the view
                url = "/displayAdmins.jsp";
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
