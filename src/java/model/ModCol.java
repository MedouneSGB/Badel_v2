/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author singleton
 */

public class ModCol {

    //Declaration globale des variables
    public String Statut;
    public String Prenom;
    public String Nom;
    public String Denomination;
    public String Sigle;
    public String Tel1;
    public String Tel2;
    public String LieuResidence;
    public String Region;
    public String Departement;
    public String Commune;
   
    //Constructeur avec parametres

    public ModCol(String Statut, String Prenom, String Nom, String Denomination, String Sigle, String Tel1, String Tel2, String LieuResidence,
                 String Region, String Departement, String Commune) {
        this.Statut=Statut;
        this.Prenom=Prenom;
        this.Nom=Nom;
        this.Denomination=Denomination;
        this.Sigle= Sigle;
        this.Tel1=Tel1;
        this.Tel2=Tel2;
        this.LieuResidence=LieuResidence;
        this.Region=Region;
        this.Departement= Departement;
        this.Commune=Commune;
    }

    

    
    //Importation Getteurs & Setteurs
    public String getStatut() {
        return Statut;
    }

    public void setStatut(String Statut) {
        this.Statut = Statut;
    }

    public String getPrenom() {
        return Prenom;
    }

    public void setPrenom(String Prenom) {
        this.Prenom = Prenom;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public String getDenomination() {
        return Denomination;
    }

    public void setDenomination(String Denomination) {
        this.Denomination = Denomination;
    }

    public String getSigle() {
        return Sigle;
    }

    public void setSigle(String Sigle) {
        this.Sigle = Sigle;
    }

    public String getTel1() {
        return Tel1;
    }

    public void setTel1(String Tel1) {
        this.Tel1 = Tel1;
    }

    public String getTel2() {
        return Tel2;
    }

    public void setTel2(String Tel2) {
        this.Tel2 = Tel2;
    }

    public String getLieuResidence() {
        return LieuResidence;
    }

    public void setLieuResidence(String LieuResidence) {
        this.LieuResidence = LieuResidence;
    }

    public String getRegion() {
        return Region;
    }

    public void setRegion(String Region) {
        this.Region = Region;
    }

    public String getDepartement() {
        return Departement;
    }

    public void setDepartement(String Departement) {
        this.Departement = Departement;
    }

    public String getCommune() {
        return Commune;
    }

    public void setCommune(String Commune) {
        this.Commune = Commune;
    }

  
    
    
}
