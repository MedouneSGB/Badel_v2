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
import model.ModInd2;

/**
 *
 * @author HP
 */
public class ServInd2 extends HttpServlet {

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
        response.setContentType("text/html;charset=ISO-8859-1");
        
        String typeAction = (String) request.getParameter("type1");
        
        String categories = (String) request.getParameter("categories");
        String sous_categories = (String) request.getParameter("sous_categories");
        String parcours = (String) request.getParameter("parcours");
        String marqueurs = (String) request.getParameter("marqueurs");
        String formulaire_id = (String) request.getParameter("formulaire_id");
        
            ModInd2 mi2 = new ModInd2(formulaire_id, categories, sous_categories, parcours, marqueurs);
            dataAccess da = new dataAccess();
            da.addModInd2(mi2);
            
        
        String idx = (String) request.getParameter("id");
        request.setAttribute("idx", idx);
        request.setAttribute("formulaire_id", formulaire_id);
        if(typeAction != null){
        RequestDispatcher rd = request.getRequestDispatcher("inscriptionIndividuelle3.jsp");
        rd.forward(request, response);
        }else{
        RequestDispatcher rd = request.getRequestDispatcher("Principal.jsp");
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
