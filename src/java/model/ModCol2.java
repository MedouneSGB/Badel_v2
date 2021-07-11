/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author HP
 */
public class ModCol2 {

    //Déclaration des Variables
 //  private int idDC;
    private String formulaire_id; 
    private String activ1_equip ; //Champs ajouté
    private String activ_equip_region ; //Champs ajouté
    private String activ_equip_depart;
    private String activ_equip_commune ;
    private String activ_equip_qtr ;
    
    private String a_activ_equip ;    
    private String a2_activ_equip ; //Champs ajouté
    private String a2_activ_equip_lieu ; //Champs ajouté
    private String activ_economique; //Champs ajouté    
    private String activ_eco_second ;      
    private String activ_etrang;
    private String a1_equip_etrang;
    private String a1_equip_etrang_lieu;            
    private String mont_cap_social;
    private String nbre_empl_perman;
    private String nbre_empl_tempor;
    private String mont_eparg_mob;
    private String mont_endettement;
    private String mont_sub_recu;
    private String fonctionnalite;
    private String prise_decision;
    private String charte_relationnelle;
    private String plan_developpement;
    private String manuel_procedure;
    private String part_princ_technique;
    private String part_princ_financier;
    private String app_reseau;
    private String nature_reseau;
    private String localite_reseau;
    private String departement_reseau;
    private String nat_intern_reseau;
    

    // Importation Constructeur avec Paramètres 

    
    public ModCol2(String formulaire_id, String activ1_equip, String activ_equip_region, String activ_equip_depart, String activ_equip_commune, String activ_equip_qtr, String a_activ_equip, String a2_activ_equip, String a2_activ_equip_lieu, String activ_economique, String activ_eco_second, String activ_etrang, String a1_equip_etrang, String a1_equip_etrang_lieu, String mont_cap_social, String nbre_empl_perman, String nbre_empl_tempor, String mont_eparg_mob, String mont_endettement, String mont_sub_recu, String fonctionnalite, String prise_decision, String charte_relationnelle, String plan_developpement, String manuel_procedure, String part_princ_technique, String part_princ_financier, String app_reseau, String nature_reseau, String localite_reseau, String departement_reseau, String nat_intern_reseau) {
        this.formulaire_id = formulaire_id;
        this.activ1_equip = activ1_equip;
        this.activ_equip_region = activ_equip_region;
        this.activ_equip_depart = activ_equip_depart;
        this.activ_equip_commune = activ_equip_commune;
        this.activ_equip_qtr = activ_equip_qtr;
        this.a_activ_equip = a_activ_equip;
        this.a2_activ_equip = a2_activ_equip;
        this.a2_activ_equip_lieu = a2_activ_equip_lieu;
        this.activ_economique = activ_economique;
        this.activ_eco_second = activ_eco_second;
        this.activ_etrang = activ_etrang;
        this.a1_equip_etrang = a1_equip_etrang;
        this.a1_equip_etrang_lieu = a1_equip_etrang_lieu;
        this.mont_cap_social = mont_cap_social;
        this.nbre_empl_perman = nbre_empl_perman;
        this.nbre_empl_tempor = nbre_empl_tempor;
        this.mont_eparg_mob = mont_eparg_mob;
        this.mont_endettement = mont_endettement;
        this.mont_sub_recu = mont_sub_recu;
        this.fonctionnalite = fonctionnalite;
        this.prise_decision = prise_decision;
        this.charte_relationnelle = charte_relationnelle;
        this.plan_developpement = plan_developpement;
        this.manuel_procedure = manuel_procedure;
        this.part_princ_technique = part_princ_technique;
        this.part_princ_financier = part_princ_financier;
        this.app_reseau = app_reseau;
        this.nature_reseau = nature_reseau;
        this.localite_reseau = localite_reseau;
        this.departement_reseau = departement_reseau;
        this.nat_intern_reseau = nat_intern_reseau;
    }

    
    
    // Importation Getteurs & setteurs

    public String getFormulaire_id() {
        return formulaire_id;
    }

    public void setFormulaire_id(String formulaire_id) {
        this.formulaire_id = formulaire_id;
    }

    public String getActiv1_equip() {
        return activ1_equip;
    }

    public void setActiv1_equip(String activ1_equip) {
        this.activ1_equip = activ1_equip;
    }

    public String getActiv_equip_region() {
        return activ_equip_region;
    }

    public void setActiv_equip_region(String activ_equip_region) {
        this.activ_equip_region = activ_equip_region;
    }

    public String getActiv_equip_depart() {
        return activ_equip_depart;
    }

    public void setActiv_equip_depart(String activ_equip_depart) {
        this.activ_equip_depart = activ_equip_depart;
    }

    public String getActiv_equip_commune() {
        return activ_equip_commune;
    }

    public void setActiv_equip_commune(String activ_equip_commune) {
        this.activ_equip_commune = activ_equip_commune;
    }

    public String getActiv_equip_qtr() {
        return activ_equip_qtr;
    }

    public void setActiv_equip_qtr(String activ_equip_qtr) {
        this.activ_equip_qtr = activ_equip_qtr;
    }

    public String getA_activ_equip() {
        return a_activ_equip;
    }

    public void setA_activ_equip(String a_activ_equip) {
        this.a_activ_equip = a_activ_equip;
    }

    public String getA2_activ_equip() {
        return a2_activ_equip;
    }

    public void setA2_activ_equip(String a2_activ_equip) {
        this.a2_activ_equip = a2_activ_equip;
    }

    public String getA2_activ_equip_lieu() {
        return a2_activ_equip_lieu;
    }

    public void setA2_activ_equip_lieu(String a2_activ_equip_lieu) {
        this.a2_activ_equip_lieu = a2_activ_equip_lieu;
    }

    public String getActiv_economique() {
        return activ_economique;
    }

    public void setActiv_economique(String activ_economique) {
        this.activ_economique = activ_economique;
    }

    public String getActiv_eco_second() {
        return activ_eco_second;
    }

    public void setActiv_eco_second(String activ_eco_second) {
        this.activ_eco_second = activ_eco_second;
    }

    public String getActiv_etrang() {
        return activ_etrang;
    }

    public void setActiv_etrang(String activ_etrang) {
        this.activ_etrang = activ_etrang;
    }

    public String getA1_equip_etrang() {
        return a1_equip_etrang;
    }

    public void setA1_equip_etrang(String a1_equip_etrang) {
        this.a1_equip_etrang = a1_equip_etrang;
    }

    public String getA1_equip_etrang_lieu() {
        return a1_equip_etrang_lieu;
    }

    public void setA1_equip_etrang_lieu(String a1_equip_etrang_lieu) {
        this.a1_equip_etrang_lieu = a1_equip_etrang_lieu;
    }

    public String getMont_cap_social() {
        return mont_cap_social;
    }

    public void setMont_cap_social(String mont_cap_social) {
        this.mont_cap_social = mont_cap_social;
    }

    public String getNbre_empl_perman() {
        return nbre_empl_perman;
    }

    public void setNbre_empl_perman(String nbre_empl_perman) {
        this.nbre_empl_perman = nbre_empl_perman;
    }

    public String getNbre_empl_tempor() {
        return nbre_empl_tempor;
    }

    public void setNbre_empl_tempor(String nbre_empl_tempor) {
        this.nbre_empl_tempor = nbre_empl_tempor;
    }

    public String getMont_eparg_mob() {
        return mont_eparg_mob;
    }

    public void setMont_eparg_mob(String mont_eparg_mob) {
        this.mont_eparg_mob = mont_eparg_mob;
    }

    public String getMont_endettement() {
        return mont_endettement;
    }

    public void setMont_endettement(String mont_endettement) {
        this.mont_endettement = mont_endettement;
    }

    public String getMont_sub_recu() {
        return mont_sub_recu;
    }

    public void setMont_sub_recu(String mont_sub_recu) {
        this.mont_sub_recu = mont_sub_recu;
    }

    public String getFonctionnalite() {
        return fonctionnalite;
    }

    public void setFonctionnalite(String fonctionnalite) {
        this.fonctionnalite = fonctionnalite;
    }

    public String getPrise_decision() {
        return prise_decision;
    }

    public void setPrise_decision(String prise_decision) {
        this.prise_decision = prise_decision;
    }

    public String getCharte_relationnelle() {
        return charte_relationnelle;
    }

    public void setCharte_relationnelle(String charte_relationnelle) {
        this.charte_relationnelle = charte_relationnelle;
    }

    public String getPlan_developpement() {
        return plan_developpement;
    }

    public void setPlan_developpement(String plan_developpement) {
        this.plan_developpement = plan_developpement;
    }

    public String getManuel_procedure() {
        return manuel_procedure;
    }

    public void setManuel_procedure(String manuel_procedure) {
        this.manuel_procedure = manuel_procedure;
    }

    public String getPart_princ_technique() {
        return part_princ_technique;
    }

    public void setPart_princ_technique(String part_princ_technique) {
        this.part_princ_technique = part_princ_technique;
    }

    public String getPart_princ_financier() {
        return part_princ_financier;
    }

    public void setPart_princ_financier(String part_princ_financier) {
        this.part_princ_financier = part_princ_financier;
    }

    public String getApp_reseau() {
        return app_reseau;
    }

    public void setApp_reseau(String app_reseau) {
        this.app_reseau = app_reseau;
    }

    public String getNature_reseau() {
        return nature_reseau;
    }

    public void setNature_reseau(String nature_reseau) {
        this.nature_reseau = nature_reseau;
    }

    public String getLocalite_reseau() {
        return localite_reseau;
    }

    public void setLocalite_reseau(String localite_reseau) {
        this.localite_reseau = localite_reseau;
    }

    public String getDepartement_reseau() {
        return departement_reseau;
    }

    public void setDepartement_reseau(String departement_reseau) {
        this.departement_reseau = departement_reseau;
    }

    public String getNat_intern_reseau() {
        return nat_intern_reseau;
    }

    public void setNat_intern_reseau(String nat_intern_reseau) {
        this.nat_intern_reseau = nat_intern_reseau;
    }

    
    
    
    

}
