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
import model.ModCol2;

/**
 *
 * @author HP
 */
public class ServCol2 extends HttpServlet {

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

        String activ1_equip  = (String) request.getParameter("activ1_equip ");
        String activ_equip_region = (String) request.getParameter("activ_equip_region");
        String activ_equip_depart = (String) request.getParameter("activ_equip_depart");
        String activ_equip_commune = (String) request.getParameter("activ_equip_commune");
        String activ_equip_qtr = (String) request.getParameter("activ_equip_qtr");
        String a_activ_equip = (String) request.getParameter("a_activ_equip");
        String a2_activ_equip = (String) request.getParameter("a2_activ_equip");
        String a2_activ_equip_lieu = (String) request.getParameter("a2_activ_equip_lieu");
        String activ_economique = (String) request.getParameter("activ_economique"); 
        String activ_eco_second = (String) request.getParameter("activ_eco_second");    
        String activ_eco_etrang = (String) request.getParameter("activ_eco_etrang");
        String a1_equip_etrang  = (String) request.getParameter("a1_equip_etrang");
        String a1_equip_etrang_lieu  = (String) request.getParameter("a1_equip_etrang_lieu");
        String mont_cap_social = (String) request.getParameter("mont_cap_social");
        String nbre_empl_perman = (String) request.getParameter("nbre_empl_perman");
        String nbre_empl_tempor = (String) request.getParameter("nbre_empl_tempor");
        String mont_eparg_mob = (String) request.getParameter("mont_eparg_mob");
        String mont_endettement = (String) request.getParameter("mont_endettement");
        String mont_sub_recu = (String) request.getParameter("mont_sub_recu");        
        String fonctionnalite = (String) request.getParameter("fonctionnalite");
        String prise_decision = (String) request.getParameter("prise_decision");
        String charte_relationnelle = (String) request.getParameter("charte_relationnelle");
        String plan_developpement = (String) request.getParameter("plan_developpement");
        String manuel_procedure = (String) request.getParameter("manuel_procedure");
        String part_princ_technique = (String) request.getParameter("part_princ_technique");
        String part_princ_financier = (String) request.getParameter("part_princ_financier");
        String app_reseau = (String) request.getParameter("app_reseau");
        String nature_reseau = (String) request.getParameter("nature_reseau");
        String localite_reseau = (String) request.getParameter("localite_reseau");
        String departement_reseau = (String) request.getParameter("departement_reseau");
        String nat_intern_reseau = (String) request.getParameter("nat_intern_reseau");
        
        String formulaire_id = (String) request.getParameter("formulaire_id");

        ModCol2 mc2 = new ModCol2( formulaire_id,  activ1_equip,  activ_equip_region,  activ_equip_depart,  activ_equip_commune,  activ_equip_qtr,  a_activ_equip,  a2_activ_equip,  a2_activ_equip_lieu,  activ_economique,  activ_eco_second,  activ_eco_etrang,  a1_equip_etrang,  a1_equip_etrang_lieu,  mont_cap_social,  nbre_empl_perman,  nbre_empl_tempor,  mont_eparg_mob,  mont_endettement,  mont_sub_recu,  fonctionnalite,  prise_decision,  charte_relationnelle,  plan_developpement,  manuel_procedure,  part_princ_technique,  part_princ_financier,  app_reseau,  nature_reseau,  localite_reseau,  departement_reseau,  nat_intern_reseau);
        dataAccess da = new dataAccess();
        da.addModCol2(mc2);
   
         String idx = (String) request.getParameter("id");
        request.setAttribute("idx", idx);
        request.setAttribute("formulaire_id", formulaire_id);
        RequestDispatcher rd = request.getRequestDispatcher("Principal.jsp");
        rd.forward(request, response);
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
