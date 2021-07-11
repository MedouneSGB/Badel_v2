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
public class ModInd2 {
    

    public String getFormulaire_id() {
        return formulaire_id;
    }

    public void setFormulaire_id(String formulaire_id) {
        this.formulaire_id = formulaire_id;
    }
    
     public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public String getSous_categories() {
        return sous_categories;
    }

    public void setSous_categories(String sous_categories) {
        this.sous_categories = sous_categories;
    }

    public String getParcours() {
        return parcours;
    }

    public void setParcours(String parcours) {
        this.parcours = parcours;
    }

    public String getMarqueurs() {
        return marqueurs;
    }

    public void setMarqueurs(String marqueurs) {
        this.marqueurs = marqueurs;
    }
    
    
    private String formulaire_id;
    private String categories;
    private String sous_categories;
    private String parcours;
    private String marqueurs;

    public ModInd2(String formulaire_id, String categories, String sous_categories, String parcours, String marqueurs) {
        this.formulaire_id = formulaire_id;
        this.categories = categories;
        this.sous_categories = sous_categories;
        this.parcours = parcours;
        this.marqueurs = marqueurs;
    }

          
       
   
    
    
    
}
