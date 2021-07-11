/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.dataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModCol1;

/**
 *
 * @author user
 */
public class UpdateCol1 extends HttpServlet {

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
        
        String prenom_representant = (String) request.getParameter("prenom_representant");
        String nom_representant  = (String) request.getParameter("nom_representant");
        String sexe_representant = (String) request.getParameter("sexe_representant");
        String adresse_representant = (String) request.getParameter("adresse_representant"); 
        String contact1_representant = (String) request.getParameter("contact1_representant"); 
        String contact2_representant = (String) request.getParameter("contact2_representant");         
        String titre = (String) request.getParameter("titre");
        String nat_juridique = (String) request.getParameter("nat_juridique");
        String denomination = (String) request.getParameter("denomination");
        String reconnaisance_juridique = (String) request.getParameter("reconnaisance_juridique");        
        String lieu_Collectif = (String) request.getParameter("lieu_Collectif");
        String pays_exterieur = (String) request.getParameter("pays_exterieur");
        String region_exterieure = (String) request.getParameter("region_exterieure");        
        String departement_exterieur = (String) request.getParameter("departement_exterieur");
        String commune_exterieure = (String) request.getParameter("commune_exterieure");        
        String Qtr_Village_exterieur = (String) request.getParameter("Qtr_Village_exterieur");
        String region_interieure = (String) request.getParameter("region_interieure");
        String departement_interieur = (String) request.getParameter("departement_interieur");
        String commune_interieure = (String) request.getParameter("commune_interieure");        
        String Qtr_Village_interieur = (String) request.getParameter("Qtr_Village_interieur");
        String date_creation = (String) request.getParameter("date_creation");
        String total_membre = (String) request.getParameter("total_membre");
        String total_homme = (String) request.getParameter("total_homme");
        String total_femme = (String) request.getParameter("total_femme");
        
        String idx = (String) request.getParameter("id");

        //Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String formulaire_id = (String) request.getParameter("formulaire_id");

        ModCol1 mc1 = new ModCol1(formulaire_id, prenom_representant, nom_representant, sexe_representant, adresse_representant, contact1_representant, contact2_representant, titre, nat_juridique, denomination, reconnaisance_juridique, date_creation, lieu_Collectif, pays_exterieur, region_exterieure, departement_exterieur, commune_exterieure, Qtr_Village_exterieur, region_interieure, departement_interieur, commune_interieure, Qtr_Village_interieur, total_membre, total_homme, total_femme, idx);
        dataAccess da = new dataAccess();
        da.updateCol1(mc1);

        String type = "col";
        request.setAttribute("type", type);
        request.setAttribute("idx", idx);
        request.setAttribute("formulaire_id", formulaire_id);
        if(typeAction != null){
        RequestDispatcher rd = request.getRequestDispatcher("inscriptionCollective2.jsp");
        rd.forward(request, response);
        }else{
        RequestDispatcher rd = request.getRequestDispatcher("dossierComplet.jsp");
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
