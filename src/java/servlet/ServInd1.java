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
import model.ModInd1;

/**
 *
 * @author HP
 */
public class ServInd1 extends HttpServlet {

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
        
        String prenom = (String) request.getParameter("prenom");
        String nom = (String) request.getParameter("nom");
        String tel1 = (String) request.getParameter("tel1");
        String tel2 = (String) request.getParameter("tel2");
        String commune_rattach = (String) request.getParameter("commune_rattach");
        String quartier_rattach = (String) request.getParameter("quartier_rattach");
        String commune_actuelle = (String) request.getParameter("commune_actuelle");
        String quartier_actuel = (String) request.getParameter("quartier_actuel");
        String sexe = (String) request.getParameter("sexe");
        String tranche_age = (String) request.getParameter("tranche_age");
        String etude = (String) request.getParameter("etude");
        String niveau_etude = (String) request.getParameter("niveau_etude");
        String formation_prof = (String) request.getParameter("formation_prof");
        String sejour = (String) request.getParameter("sejour");
        String pays_sejourne = (String) request.getParameter("pays_sejourne");
        String motif_sejour = (String) request.getParameter("motif_sejour");
        String experience_prof = (String) request.getParameter("experience_prof");
        String domaine_exp_prof = (String) request.getParameter("domaine_exp_prof");
        String duree_exp_prof = (String) request.getParameter("duree_exp_prof");
        String statut_exp_prof = (String) request.getParameter("statut_exp_prof");
        String region_exp_prof = (String) request.getParameter("region_exp_prof");
        String departement_exp_prof = (String) request.getParameter("departement_exp_prof");
        String commune_exp_prof = (String) request.getParameter("commune_exp_prof");
        String quartier_exp_prof = (String) request.getParameter("quartier_exp_prof");
        String autre_region_exp_prof = (String) request.getParameter("autre_region_exp_prof");
        String hors_senegal = (String) request.getParameter("hors_senegal");
        String situation_prof = (String) request.getParameter("situation_prof");
        String soutien_immediat = (String) request.getParameter("soutien_immediat");
        String titre_accompagnement = (String) request.getParameter("titre_accompagnement");
      //  String inscritPar = (String) request.getParameter("inscritPar");

        String idx = (String) request.getParameter("id");
        
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String formulaire_id = "Form" + timestamp.getTime();

        ModInd1 mi1 = new ModInd1(formulaire_id, prenom, nom, tel1, tel2, commune_rattach, quartier_rattach, commune_actuelle, quartier_actuel, sexe, tranche_age, etude, niveau_etude, formation_prof, sejour, pays_sejourne, motif_sejour, experience_prof, domaine_exp_prof, duree_exp_prof, statut_exp_prof, region_exp_prof, departement_exp_prof, commune_exp_prof, quartier_exp_prof, autre_region_exp_prof, hors_senegal, situation_prof, soutien_immediat, titre_accompagnement, idx);
        dataAccess da = new dataAccess();
        da.addModInd1(mi1);

        request.setAttribute("idx", idx);
        request.setAttribute("formulaire_id", formulaire_id);
        if(typeAction != null){
        RequestDispatcher rd = request.getRequestDispatcher("inscriptionIndividuelle2.jsp");
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
