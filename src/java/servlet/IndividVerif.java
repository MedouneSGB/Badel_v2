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
import model.*;

/**
 *
 * @author user
 */
public class IndividVerif extends HttpServlet {

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

        String inscritPar = (String) request.getParameter("inscritPar");
        String prenom = (String) request.getParameter("prenom");
        String nom = (String) request.getParameter("nom");
        String dateNaissance = (String) request.getParameter("datenaissance");
        String lieuNaissance = (String) request.getParameter("lieunaissance");
        String cni = (String) request.getParameter("cni");
        String civilite = (String) request.getParameter("civilite");
        String tAge = (String) request.getParameter("tAge");
        String adresse = (String) request.getParameter("adresse");
        String situationMatrim = (String) request.getParameter("situationMatrim");
        String tel1 = (String) request.getParameter("tel1");
        String tel2 = (String) request.getParameter("tel2");
        String prenomPere = (String) request.getParameter("prenomP");
        String prenomMere = (String) request.getParameter("prenomM");
        String nomMere = (String) request.getParameter("nomM");
        String etudes = (String) request.getParameter("etudes");
        String niveau = (String) request.getParameter("niveau");
        String login = (String) request.getParameter("login");
        String pass = (String) request.getParameter("pass");
        String role = "1";

        ModInd n = new ModInd(inscritPar, prenom, nom, dateNaissance, lieuNaissance, cni, civilite, tAge, 
                adresse, situationMatrim, tel1, tel2, prenomPere, prenomMere, nomMere, etudes, niveau, login, pass);
        dataAccess da = new dataAccess();
        
        ModLogin n1 = new ModLogin(prenom, nom, civilite, login, pass, role);
        da.addNewInd(n);
        da.addLogin(n1);
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            RequestDispatcher rd = request.getRequestDispatcher("connection.html");
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
