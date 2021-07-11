/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.dataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModConClient;

/**
 *
 * @author user
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String login=(String) request.getParameter("login");
        String pass=(String) request.getParameter("pass");
        
        ModConClient mcc = new ModConClient(login, pass);
        dataAccess da = new dataAccess();
        String yes1 =  da.IdentAdmin(mcc);
        
        
            String yes = yes1.substring(0,2);
            String id = yes1.substring(2);
            String tpe = "ind";
       
       
       
if("ok".equals(yes)){
            request.setAttribute("id", id); 
            RequestDispatcher rd = request.getRequestDispatcher("Principal.jsp");
        rd.forward(request, response); 
        }
else if("ak".equals(yes)){
            request.setAttribute("tpe", tpe);
            request.setAttribute("id", id);  
            RequestDispatcher rd = request.getRequestDispatcher("Principal.jsp");
        rd.forward(request, response); 
        }
else if("no".equals(yes)){
           request.setAttribute("control", "no"); 
             RequestDispatcher rd = request.getRequestDispatcher("connexion_erreur.html");
        rd.forward(request, response); 
         
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
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
        processRequest(request, response);
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
