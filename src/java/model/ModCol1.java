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
public class ModCol1 {

    //Déclaration des Variables
    private String formulaire_id;
    
    private String prenom_representant; //Champ Ajouté
    private String nom_representant; //Champ Ajouté
    private String sexe_representant; //Champ Ajouté
    private String adresse_representant; //Champ Ajouté
    private String contact1_representant; //Champ Ajouté
    private String contact2_representant; //Champ Ajouté
    
    private String titre;
    private String nat_juridique;
    private String denomination;
    private String reconnaisance_juridique;
    
    private String lieu_Collectif;  //Champ Ajouté
    private String pays_exterieur;  //Champ Ajouté
    private String region_exterieure;  //Champ Ajouté
    private String departement_exterieur;  //Champ Ajouté
    private String commune_exterieure;  //Champ Ajouté
    private String Qtr_Village_exterieur;  //Champ Ajouté
    private String region_interieure;  //Champ Ajouté
    private String departement_interieur;  //Champ Ajouté
    private String commune_interieure;  //Champ Ajouté
    private String Qtr_Village_interieur;  //Champ Ajouté
    
    private String date_creation;
    private String total_membre;
    private String total_homme;
    private String total_femme;
    private String inscritPar;
    // Importation Constructeur avec Paramètres  

    public ModCol1(String formulaire_id, String prenom_representant, String nom_representant, String sexe_representant, String adresse_representant, String contact1_representant, String contact2_representant, String titre, String nat_juridique, String denomination, String reconnaisance_juridique, String lieu_Collectif, String pays_exterieur, String region_exterieure, String departement_exterieur, String commune_exterieure, String Qtr_Village_exterieur, String region_interieure, String departement_interieur, String commune_interieure, String Qtr_Village_interieur, String date_creation, String total_membre, String total_homme, String total_femme, String inscritPar) {
        this.formulaire_id = formulaire_id;
        this.prenom_representant = prenom_representant;
        this.nom_representant = nom_representant;
        this.sexe_representant = sexe_representant;
        this.adresse_representant = adresse_representant;
        this.contact1_representant = contact1_representant;
        this.contact2_representant = contact2_representant;
        this.titre = titre;
        this.nat_juridique = nat_juridique;
        this.denomination = denomination;
        this.reconnaisance_juridique = reconnaisance_juridique;
        this.lieu_Collectif = lieu_Collectif;
        this.pays_exterieur = pays_exterieur;
        this.region_exterieure = region_exterieure;
        this.departement_exterieur = departement_exterieur;
        this.commune_exterieure = commune_exterieure;
        this.Qtr_Village_exterieur = Qtr_Village_exterieur;
        this.region_interieure = region_interieure;
        this.departement_interieur = departement_interieur;
        this.commune_interieure = commune_interieure;
        this.Qtr_Village_interieur = Qtr_Village_interieur;
        this.date_creation = date_creation;
        this.total_membre = total_membre;
        this.total_homme = total_homme;
        this.total_femme = total_femme;
        this.inscritPar = inscritPar;
    }
// Importation des Getteurs et Setteurs
    public String getFormulaire_id() {
        return formulaire_id;
    }

    public void setFormulaire_id(String formulaire_id) {
        this.formulaire_id = formulaire_id;
    }

    public String getPrenom_representant() {
        return prenom_representant;
    }

    public void setPrenom_representant(String prenom_representant) {
        this.prenom_representant = prenom_representant;
    }

    public String getNom_representant() {
        return nom_representant;
    }

    public void setNom_representant(String nom_representant) {
        this.nom_representant = nom_representant;
    }

    public String getSexe_representant() {
        return sexe_representant;
    }

    public void setSexe_representant(String sexe_representant) {
        this.sexe_representant = sexe_representant;
    }

    public String getAdresse_representant() {
        return adresse_representant;
    }

    public void setAdresse_representant(String adresse_representant) {
        this.adresse_representant = adresse_representant;
    }

    public String getContact1_representant() {
        return contact1_representant;
    }

    public void setContact1_representant(String contact1_representant) {
        this.contact1_representant = contact1_representant;
    }

    public String getContact2_representant() {
        return contact2_representant;
    }

    public void setContact2_representant(String contact2_representant) {
        this.contact2_representant = contact2_representant;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getNat_juridique() {
        return nat_juridique;
    }

    public void setNat_juridique(String nat_juridique) {
        this.nat_juridique = nat_juridique;
    }

    public String getDenomination() {
        return denomination;
    }

    public void setDenomination(String denomination) {
        this.denomination = denomination;
    }

    public String getReconnaisance_juridique() {
        return reconnaisance_juridique;
    }

    public void setReconnaisance_juridique(String reconnaisance_juridique) {
        this.reconnaisance_juridique = reconnaisance_juridique;
    }

    public String getLieu_Collectif() {
        return lieu_Collectif;
    }

    public void setLieu_Collectif(String lieu_Collectif) {
        this.lieu_Collectif = lieu_Collectif;
    }

    public String getPays_exterieur() {
        return pays_exterieur;
    }

    public void setPays_exterieur(String pays_exterieur) {
        this.pays_exterieur = pays_exterieur;
    }

    public String getRegion_exterieure() {
        return region_exterieure;
    }

    public void setRegion_exterieure(String region_exterieure) {
        this.region_exterieure = region_exterieure;
    }

    public String getDepartement_exterieur() {
        return departement_exterieur;
    }

    public void setDepartement_exterieur(String departement_exterieur) {
        this.departement_exterieur = departement_exterieur;
    }

    public String getCommune_exterieure() {
        return commune_exterieure;
    }

    public void setCommune_exterieure(String commune_exterieure) {
        this.commune_exterieure = commune_exterieure;
    }

    public String getQtr_Village_exterieur() {
        return Qtr_Village_exterieur;
    }

    public void setQtr_Village_exterieur(String Qtr_Village_exterieur) {
        this.Qtr_Village_exterieur = Qtr_Village_exterieur;
    }

    public String getRegion_interieure() {
        return region_interieure;
    }

    public void setRegion_interieure(String region_interieure) {
        this.region_interieure = region_interieure;
    }

    public String getDepartement_interieur() {
        return departement_interieur;
    }

    public void setDepartement_interieur(String departement_interieur) {
        this.departement_interieur = departement_interieur;
    }

    public String getCommune_interieure() {
        return commune_interieure;
    }

    public void setCommune_interieure(String commune_interieure) {
        this.commune_interieure = commune_interieure;
    }

    public String getQtr_Village_interieur() {
        return Qtr_Village_interieur;
    }

    public void setQtr_Village_interieur(String Qtr_Village_interieur) {
        this.Qtr_Village_interieur = Qtr_Village_interieur;
    }

    public String getDate_creation() {
        return date_creation;
    }

    public void setDate_creation(String date_creation) {
        this.date_creation = date_creation;
    }

    public String getTotal_membre() {
        return total_membre;
    }

    public void setTotal_membre(String total_membre) {
        this.total_membre = total_membre;
    }

    public String getTotal_homme() {
        return total_homme;
    }

    public void setTotal_homme(String total_homme) {
        this.total_homme = total_homme;
    }

    public String getTotal_femme() {
        return total_femme;
    }

    public void setTotal_femme(String total_femme) {
        this.total_femme = total_femme;
    }

    public String getInscritPar() {
        return inscritPar;
    }

    public void setInscritPar(String inscritPar) {
        this.inscritPar = inscritPar;
    }

   } 
    
   
