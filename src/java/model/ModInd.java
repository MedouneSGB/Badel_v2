/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author user
 */
public class ModInd {

    public ModInd(String inscritPar, String prenom, String nom, String dateNaissance, String lieuNaissance,
            String cni, String civilite, String tAge, String adresse, String situationMatrim, String tel1, String tel2, String prenomPere,
            String prenomMere, String nomMere, String etudes, String niveau, String login, String pass) {
        this.inscritPar = inscritPar;
        this.prenom = prenom;
        this.nom = nom;
        this.dateNaissance = dateNaissance;
        this.lieuNaissance = lieuNaissance;
        this.cni = cni;
        this.civilite = civilite;
        this.tAge = tAge;
        this.adresse = adresse;
        this.situationMatrim = situationMatrim;
        this.tel1 = tel1;
        this.tel2 = tel2;
        this.prenomPere = prenomPere;
        this.prenomMere = prenomMere;
        this.nomMere = nomMere;
        this.etudes = etudes;
        this.niveau = niveau;
        this.login = login;
        this.pass = pass;
        

    }
    private String inscritPar;
    private String prenom;
    private String nom;
    private String dateNaissance;
    private String lieuNaissance;
    private String cni;
    private String civilite;
    private String tAge;
    private String adresse;
    private String situationMatrim;
    private String tel1;
    private String tel2;
    private String prenomPere;
    private String prenomMere;
    private String nomMere;
    private String etudes;
    private String niveau;
    private String login;
    private String pass;

    public String getInscritPar() {
        return inscritPar;
    }

    public void setInscritPar(String inscritPar) {
        this.inscritPar = inscritPar;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(String dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getLieuNaissance() {
        return lieuNaissance;
    }

    public void setLieuNaissance(String lieuNaissance) {
        this.lieuNaissance = lieuNaissance;
    }

    public String getCni() {
        return cni;
    }

    public void setCni(String cni) {
        this.cni = cni;
    }

    public String getCivilite() {
        return civilite;
    }

    public void setCivilite(String civilite) {
        this.civilite = civilite;
    }

    public String gettAge() {
        return tAge;
    }

    public void settAge(String tAge) {
        this.tAge = tAge;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getSituationMatrim() {
        return situationMatrim;
    }

    public void setSituationMatrim(String situationMatrim) {
        this.situationMatrim = situationMatrim;
    }

    public String getTel1() {
        return tel1;
    }

    public void setTel1(String tel1) {
        this.tel1 = tel1;
    }

    public String getTel2() {
        return tel2;
    }

    public void setTel2(String tel2) {
        this.tel2 = tel2;
    }

    public String getPrenomPere() {
        return prenomPere;
    }

    public void setPrenomPere(String prenomPere) {
        this.prenomPere = prenomPere;
    }

    public String getPrenomMere() {
        return prenomMere;
    }

    public void setPrenomMere(String prenomMere) {
        this.prenomMere = prenomMere;
    }

    public String getNomMere() {
        return nomMere;
    }

    public void setNomMere(String nomMere) {
        this.nomMere = nomMere;
    }

    public String getEtudes() {
        return etudes;
    }

    public void setEtudes(String etudes) {
        this.etudes = etudes;
    }

    public String getNiveau() {
        return niveau;
    }

    public void setNiveau(String niveau) {
        this.niveau = niveau;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

}
