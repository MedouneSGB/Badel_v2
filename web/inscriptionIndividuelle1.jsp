<%-- 
    Document   : inscriptionIndividuelle1
    Created on : 23 d�c. 2020, 15:07:51
    Author     : user
--%>

<%@page import="dao.dataAccess"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="dbutil.JavaConnect"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html class="no-js" lang="">


    <head><meta charset="windows-1252">
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Inscription Individuelle 1</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="favicon.ico">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/transitions.css">
        <link rel="stylesheet" href="css/prettyPhoto.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/pogoslider.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/color.css">
        <link rel="stylesheet" href="css/responsive.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

    <body>
        <%

            String ix = request.getParameter("id");
            String idx = (String) request.getAttribute("id");
            String tpe = (String) request.getAttribute("tpe");
            if (idx == null) {
                idx = ix;
            }
            String sql = "SELECT * FROM loginadmin where Id=?";
            try {
                Connection con = new JavaConnect().createConnection();
                PreparedStatement pst;

                // String idx = "0";
                pst = con.prepareStatement(sql);
                pst.setString(1, ix);
                ResultSet rs = pst.executeQuery();

                while (rs.next()) {
                    System.out.println("hello 4");
                    String id = rs.getString(1);
                    String Prenom = rs.getString(2);
                    String nom = rs.getString(3);
                    String Civilite = rs.getString(4);
        %>

        <!--************************************
                            Loader Start
            *************************************-->
        <div class="lds-roller">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
        <!--************************************
                            Loader End
            *************************************-->
        <!--************************************
                            Wrapper Start
            *************************************-->
        <div id="at-wrapper" class="at-wrapper">
            <!--************************************
                                    Header Start
                    *************************************-->
            <header id="at-header" class="at-header at-headervthree">
                <div class="container-fluid">
                    <div class="row">
                        <strong class="at-logo"><a href="index.html"><img src="images/logo2.png" alt="company logo here"></a></strong>
                        <div class="at-navigationarea">
                            <nav id="at-nav" class="at-nav">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#at-navigation" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div id="at-navigation" class="collapse navbar-collapse at-navigation">
                                 <ul>
                                    <li class="menu-item-has-children">
                                        <a href="index.html">Accueil</a>
                                    </li>
                                        <li class="menu-item-has-children">
                                            <a href="Principal.jsp?id=<%=ix%>">Menu Admin</a>
                                        </li>
                                    <li class="menu-item-has-children">
                                        <a href="connection.html">Se d�connecter</a>
                                    </li>
                                </ul>
                                </div>
                            </nav>
                            <div class="at-contactsocial">
                                <span class="at-contactnumber">
                                    <i class="icon-telephone114"></i>
                                    <em>+00221 33 837 80 09</em>
                                </span>
                              <!--  <ul class="at-socialicons">
                                    <li class="at-facebook"><a href="https://www.facebook.com/badel"><i class="fa fa-facebook"></i></a></li>
                                    <li class="at-twitter"><a href="https://www.twitter.com/badel"><i class="fa fa-twitter"></i></a></li>
                                    <li class="at-instagram"><a href="https://www.instagram.com/badel"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                              -->
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!--************************************
                                    Header End
                    *************************************-->
            <!--************************************
                                    Home Slider Start
                    *************************************-->

            <!--************************************
                                    Home Slider End
                    *************************************-->
            <!--************************************
                                    Main Start
                    *************************************-->
            <main id="at-main" class="at-main at-haslayout">

                <div class="clearfix"></div>
                <section class="at-sectionspace at-haslayout">
                    <div class="container">
                        <h1 style="text-align: center;">Inscription Individuelle </h1>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="at-content">
                                    <div class="at-contactusvone">
                                        <form class="at-formtheme at-formcontacus" action="ServInd1" method="post">
                                            <!--   <fieldset>
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="inscritPar" id="demo-category" onchange="changementType( this.value);">
                                                            <option value="">- Qui �tes vous ? -</option>
                                                            <option value="Demandeur">Je suis moi m�me le demandeur</option>
                                                            <option value="Animateur">Animateur BEL - MDL - CIEL</option>
                                                            <option value="Parent/Connaissance">Parent ou connaissance du demandeur</option>
                                                            <option value="Organisme">Un organisme d'appui au demandeur</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>  -->
                                            <div class="at-sectiontitleborder">
                                                <br/>
                                                <hr/>
                                                <h2>
                                                    <center>Veuillez remplir ce formulaire : <strong>�tape 1</strong> </center>
                                                </h2>
                                                <hr/>
                                            </div>
                                            <br/>

                                            <fieldset>
                                                <div class="row">
                                                    <hr/>
                                                    <h3>
                                                        <center>IDENTIFICATION - <strong>PROFIL DEMANDEUR ACCOMPAGNEMENT</strong></center>
                                                    </h3>
                                                    <hr/>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="prenom" class="form-control" placeholder="1- Pr�nom**" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="nom" class="form-control" placeholder="2- Nom**" required>
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="tel1" class="form-control" placeholder="3- Num�ro de T�l�phone 1**" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="tel2" class="form-control" placeholder="4- Num�ro de T�l�phone 2" >
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="commune_rattach" class="form-control" placeholder="5- Commune de Rattachement**" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left"> <!-- Champ ajout� -->
                                                        <div class="form-group">
                                                            <input type="text" name="quartier_rattach" class="form-control" placeholder="6- Quartier de Rattachement**" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="commune_actuelle" class="form-control" placeholder="7- Commune Actuelle**" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="quartier_actuel" class="form-control" placeholder="8- Quartier Actuel**" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>

                                            <fieldset>
                                                <div class="row">
                                                    <hr/>
                                                    <h3>
                                                        <center> Vous etes porteur de projet individuel ? </center>
                                                    </h3>
                                                    <hr/>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="sexe" id="demo-category" required>
                                                                <option value="">1- Sexe :** -</option>                                                     
                                                                <option value="masculin">Masculin</option>
                                                                <option value="feminin">F�minin</option>  
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="tranche_age" id="demo-category" required>
                                                                <option value="">2- Tranche d'�ge:** -</option>
                                                                <option value="15-25 ans">14 &agrave; 25 ans</option>
                                                                <option value="26-35 ans">26 &agrave; 35 ans</option>
                                                                <option value="36-45 ans">36 &agrave; 45 ans</option>
                                                                <option value="46-55 ans">46 &agrave; 55 ans</option>
                                                                <option value="+55 ans">Plus de 55 ans</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="etude" id="etude" required>
                                                                <option value="">3- Avez vous fait des &eacute;tudes ?** -</option>
                                                                <option value="Ecole_Francaise" id="EF">Ecole Fran�aise</option>
                                                                <option value="Ecole_Arabe" id="EA">Ecole Arabe</option>
                                                                <option value="Ecole_Coranique" id="EC">Ecole Coranique</option>
                                                                <option value="Ecole_Alphab�tisation" id="AL">Alphab�tisation</option>
                                                                <option value="Illetre" id="il">Ill�tr�</option>
                                                                <option value="NON">Non</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group" id="niveau">
                                                            <select class="form-control" name="niveau_etude" id="niveau_etude">
                                                                <option value="">4- Niveau d'&eacute;tudes: -</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                    <script>
                                                        var niveau ={
                                                            Ecole_Francaise : ['Francais Primaire','Francais Moyen','Francais Secondaire','Francais Universitaire'],
                                                            Ecole_Arabe : ['Arabe G�n�ralis�e', 'Arabe Approfondie Sp�cialis�e'],
                                                            Ecole_Coranique : ['Ecole Coranique'],
                                                            Ecole_Alphab�tisation : ['Alphab�tisation'],
                                                            Illetre : ['Ill�tr�(e)'],
                                                            NON : ['NON']
                                                        }
                                                        var etud = document.getElementById('etude');
                                                        var niv = document.getElementById('niveau_etude');
                                                        
                                                              etud.addEventListener('change', function(){
                                                                  var select_option =  niveau [this.value];
                                                                  while(niv.options.length > 0){
                                                                      niv.options.remove(0);
                                                                  }
                                                                  Array.from(select_option).forEach(function(el){
                                                                      let option = new Option(el, el);
                                                                 niv.appendChild(option);     
                                                                  });
                                                              });
                                                     </script>
                                                     <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="formation_prof" id="demo-category" required>
                                                                <option value="">5- Avez-vous fait une Formation Technique Professionnelle ?** -</option>
                                                                <option value="OUI">OUI</option>                                                       
                                                                <option value="NON">NON</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="sejour" onchange="changeStatus();"  id="sejour" required>
                                                                <option value="">6- Avez-vous s&eacute;journ� dans un pays &eacute;trangers ?**-</option>
                                                                <option value="OUI">OUI</option>                                                       
                                                                <option value="NON">NON</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="pays_sejourne" id="pays_sejourne"  class="form-control" placeholder="7- SI OUI dans quel pays ?">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="motif_sejour" id="motif_sejour" class="form-control" placeholder="8- Et quel est le motif du s&eacute;jour ?">
                                                        </div>
                                                    </div>
                                                    <script>
                                                        function changeStatus(){
                                                            var sjrd = document.getElementById("sejour");
                                                            var psd =  document.getElementById("pays_sejourne");
                                                            var msd = document.getElementById("motif_sejour");
                                                            if(sjrd.value=="NON"){
                                                                psd.disabled=true;
                                                                msd.disabled=true;
                                                            }else{
                                                               psd.disabled=false;
                                                                msd.disabled=false;
                                                            }
                                                        }
                                                    </script>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="experience_prof" onchange="changeStatus1()" id="Exp_Prof" required>
                                                                <option value="">9- Avez-vous une Exp&eacute;rience Professionnelle ?** -</option>
                                                                <option value="OUI">OUI</option>                                                       
                                                                <option value="NON">NON</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="domaine_exp_prof" id="demo-category" required>
                                                                <option value="">10- Quelle est votre Domaine d'activit&eacute; ?** -</option>
                                                                <option value="Production">Production</option>                                                       
                                                                <option value="Transformation">Transformation</option>
                                                                <option value="Distribution_Commerce">Distribution - Commerce</option>
                                                                <option value="Transport_Manutention">Transport et Manutention</option>
                                                                <option value="Prestations_Intellectuelles">Prestations Intellectuelles</option>
                                                                <option value="A_Mon_Propre_Compte">A Mon Propre Compte</option>
                                                                <option value="Autres">Autres</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                              <!---->      
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="duree_exp_prof" id="duree_exp_prof" required> 
                                                                <option value="">11- Quelle est la Dur&eacute;e d'Exp&eacute;rience Professionnelle ?** -</option> 
                                                                <option value="3mois-1an">3mois &agrave; 1an</option>                                                       
                                                                <option value="+1an-3ans">+1an &agrave; 3ans</option>
                                                                <option value="+3ans-5ans">+3ans &agrave; 5ans</option>
                                                                <option value="+5ans">+5ans</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                            <script>
                                                        function changeStatus1(){
                                                            var epd = document.getElementById("Exp_Prof");
                                                            var depd = document.getElementById("duree_exp_prof");
                                                            
                                                            if(epd.value=="NON"){
                                                                depd.disabled=true;
                                                            }else{
                                                                depd.disabled=false;  
                                                            }
                                                        }
                                                    </script>
                                          
                                                    
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="statut_exp_prof" id="demo-category" required>
                                                                <option value="">12- Quelle est votre Statut ?** -</option>
                                                              <!--  <option value="Chomeur">Ch&ocirc;meur</option>           -->                                                                                                             
                                                                <option value="Apprenti">Apprenti</option>
                                                                <option value="Stagiaire">Stagiaire</option>
                                                                <option value="Journalier">Journalier</option>
                                                                <option value="Contractuel">Contractuel</option>
                                                                <option value="Salarie">Salari&eacute;</option>
                                                                <option value="A_Mon_Propre_Compte">A Mon Propre Compte</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                     <fieldset>
                                               <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="region_exp_prof" id="region" required="Champ Obligatoire"> 
                                                        <option value="">- 13- Dans quelle r&eacute;gion avez-vous vos activit&eacute;s ?** -</option>
                                               
                                                        </select>
                                                    </div>
                                                </div>
                                                                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="departement_exp_prof" id="departement"  required="Champ Obligatoire"> 
                                                        <option value="">- 14- Dans quel d&eacute;partement avez-vous vos activit&eacute;s ?** -</option>
                                                                                                          
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                       <select class="form-control" name="commune_exp_prof" id="commune" required="Champ Obligatoire"> 
                                                        <option value="">- 15- Dans quelle commune avez-vous vos activit&eacute;s ?** -</option>
                                                      </select>
                                                    </div>
                                                </div>
                                      <script>
                       var Localite = {
        "Dakar" :  { 
              "Dakar" : ["Gor�e", "Dakar Plateau", "Gueule Tap�e", "Fass", "Colobane", "Fann-Point E-Amiti�", "M�dina", "Grand-Dakar", "Biscuiterie", "Dieuppeul-Derkl�", "Hann-Bel-Air", "Sicap-Libert�", "HLM", "Mermoz-Sacr� Coeur", "Ouakam", "Ngor", "Yoff", "Grand-Yoff", "Patte d?oie", "Parcelles Assainies", "Camb�r�ne" ], "Pikine" : ["Pikine- Est", "Pikine-Nord", "Pikine-Ouest", "Dalifort-Foirail", "Djeddha Thiaroye Kao", "Guinaw Rail-Nord", "Guinaw Rail-Sud", "Tivaoune-Diacksao", "Diamagueune-Sicap Mbao", "Mbao", "Keur Massar", "Malika", "Yeumbeul-Sud", "Yeumbeul-Nord"], "Gu�diawaye" : ["Golf-Sud", "Sam-Notaire", "Ndiar�me-Limamoulaye", "Wakhinane", "M�dina Gounass"], "Rufisque" : ["Bargny","S�bikotane","Sendou","Rufisque-Est","Rufisque-Nord","Rufisque-Ouest","Bambylor","Y�ne","Tivaouane Peulh-Niaga","Diamniadio","Sangalkam","Jaxaay-Parcelles-Niakoul Rap"]
          },                                                          
        "Thies" :  { 
             "Thies" : ["Khombole", "Pout", "Thi�s-Ouest", "Thi�s-Est","Thi�s-Nord","Thi�naba","Ngoudiane","Ndi�y�ne Sirakh","Touba Toul","Keur Moussa","Diender","Fand�ne","Kayar","Notto","Tass�te"], "Tivaouane" : ["Tivaouane", "M�kh�", "Mboro", "M�ouane", "Darou Khoudoss", "Ta�ba Ndiaye", "M�rina Dakhar", "Koul", "P�k�sse", "Niakh�ne", "Mbay�ne", "Thilmakha", "Ngandiouf", "Notto Gouye Diama", "Mont Rolland", "Pire Goureye", "Ch�rif Lo", "Pambal"], "Mbour" : ["Mbour", "Joal Fadiouth", "Fissel", "Ndiaganiao", "Sessene", "Sandiara", "Ngu�ni�ne", "Thiadiaye", "Sindia", "Malicounda", "Diass", "Ngu�khokh", "Saly Portudal", "Ngaparou", "Somone", "Popenguine-Ndayane"]
          },
        "Louga" :  { 
             "Louga" : ["Coki", "Ndiagne", "Guet Ardo", "Thiam�ne Cayor", "P�t� Ouarack", "Keur Momar Sarr", "Nguer Malal", "Syer", "Gande", "Mb�diene", "Niomr�", "Nguidil�", "K�le Gueye", "L�ona", "Sakal", "Ngueune Sarr"], "K�b�mer" : ["Bandegne Ouolof", "Diokoul Diawrigne", "Kab Gaye", "Ndande", "Thieppe", "Gu�oul", "Mback� Cajor", "Darou Marnane", "Darou Mousty", "Mbadiane", "Ndoyene", "Sam Yabal", "Touba M�rina", "Ngourane Ouolof", "Thiolom Fall", "Sagatta Gueth", "Kan�ne Ndiob", "Loro"], "Lingu�re" : ["Lingu�re", "Dahra", "Bark�dji", "Gassane", "Thiargny", "Thiel", "Boulal", "Dealy", "Thiam�ne Pass", "Sagatta Djolof", "Aff� Djiolof", "Dodji", "Labgar", "Ouarkhokh", "Kamb", "Mboula", "T�ss�k�r� Forage", "Yang-Yang"]
          },
          "Kaolack" : { 
             "Kaolack" : ["Kaolack", "Kahone", "Keur Baka", "Latmingu�", "Thiar�", "Ndoffane", "Keur Soc�", "Ndiaffate", "Ndiedieng", "Dya", "Ndi�bel", "Thiomby", "Gandiaye", "Sibassor"], "Guinguin�o" : ["Guinguin�o", "Khelcom ? Birane", "Mbadakhoune", "Ndiago", "Ngathie Naoud�", "Fass", "Gagnick", "Dara Mboss", "Ngu�lou", "Ngu�lou", "Ourour", "Panal Ouolof", "Mboss"], "Nioro du Rip" : ["Kayemor", "M�dina Sabakh", "Ngayene", "Gainthe Kaye", "Dabaly", "Darou Salam", "Paos Koto", "Porokhane", "Ta�ba Niass�ne", "Keur Maba Diakhou", "Keur Madongo", "Ndram� Escale", "Wack Ngouna", "Keur Madiabel"]
          },
         "Diourbel" : { 
             "Diourbel" : ["Diourbel", "Ndoulo", "Ngohe", "Pattar", "Tocky Gare", "Tour� Mbond�", "Ndankh S�ne", "Gade Escale", "Touba Lapp�", "Keur Ngalgou", "Ndindy", "Ta�ba Moutoupha"], "Bambey" : ["Bambey", "Dinguiraye", "Baba Garage", "Keur Samba Kane", "Ngoye", "Thiakhar", "Ndondol", "Ndangalma", "Lambaye", "R�fane", "Gawane", "Ngogom"], "Mback�" : ["Ngogom", "Touba Mosqu�e", "Dalla Ngabou", "Missirah" , "Nghaye", "Touba Fall", "Darou Salam Typ" , "Darou Nahim", "Kael", "Madina" , "Touba Mboul", "Ta�ba Thi�k�ne", "Dend�ye Gouy Gui" , "Ndioumane", "Ta�f", "Sadio" ]
          }, 
          "Fatick" : { 
             "Fatick" : ["Dioffior", "Thiar� Ndialgui", "Diaoul�", "Mb�llacadiao", "Ndiop", "Ndiop", "Diakhao", "Djilasse", "Djilasse", "Loul Sess�ne", "Palmarin Facao", "Niakhar", "Ngayokh�me", "Patar", "Diarr�re", "Diouroup", "Tattaguine"], "Foundiougne" : ["Foundiougne", "Sokone", "Keur Saloum Dian�", "Keur Samba Gueye", "Toubacouta", "Nioro Alassane Tall", "Karang Poste", "Passy", "Soum", "Diossong", "Djilor", "Niass�ne", "Diagane Barka", "Diagane Barka", "Mbam", "Bassoul", "Dionewar", "Djirnda"], "Gossas" : ["Gossas", "Colobane", "Mbar", "Ndiene Lagane", "Ouadiour", "Patar Lia"]
          }, 
          "Kaffrine" : { 
             "Kaffrine" : ["Nganda", "Diamagadio", "Diokoul Belbouck", "Kathiotte", "M�dinatoul Salam 2", "Gniby", "Boulel", "Kahi"], "Birkilane" : ["Birkelane", "Keur Mboucki", "Touba Mbella", "Diamal", "Mabo", "Ndiognick", "S�gr�-gatta", "Mbeuleup"], "Mal�me-Hodar" : ["Mal�me-Hodar", "Darou Miname II", "Khelcom", "Ndioum Ngainth", "Ndiob�ne Samba Lamo", "Sagna", "Diank� Souf "],  "Koungheul" : ["Koungheul", "Missirah Wad�ne", "Maka Yop", "Ngainthe Path�", "Fass Thi�k�ne", "Saly Escale", "Ida Mouride", "Ribot Escale", "Lour Escale"]
          }, 
          "Saint-Louis" : { 
             "Saint-Louis" : ["Saint-Louis", "Mpal", "Fass Ngom", "Ndi�b�ne Gandiol", "Gandon"], "Dagana" : ["Dagana", "Richard Toll", "Ross-B�thio", "Rosso-S�n�gal", "Ngnith", "Diama", "Ronkh", "Ndombo Sandjiry", "Gae", "Bokhol", "Mbane"], "Podor" : ["Podor", "M�ry", "Doumga Lao", "Madina Diathb�", "Goll�r�", "Mboumba", "Walald�", "A�r� Lao", "Gamadji Sar�", "Dodel", "Gued� Village", "Gu�d� Chantier", "D�mette", "Bod� Lao", "Fanaye", "Ndiayene Peindao", "Ndiandane", "Mbolo Birane", "Bok� Dialloub�", "Galoya Toucouleur", "P�t�"]
          }, 
          "Matam" : { 
             "Matam" : ["Matam", "Ourossogui", "Thilogne", "Nguidjilone", "Dabia", "Des Agnam Civol", "Or�fond�", "Bokidiaw�", "Nabadji Civol", "Ogo"], "Kanel" : ["Kanel", "Odob�r�", "Wouro Sidy", "Ndendory", "Sinthiou Bamamb� Banadji", "Hamady Hounar�", "Aour�", "Bokiladji", "Orkadi�r�", "Ouaound�", "Semm�", "Dembancan�"], "Ran�rou" : ["Ran�rou", "Lougr� Thioly", "Oudalaye", "V�lingara"]
          }, 
          "K�dougou" : { 
             "K�dougou" : ["K�dougou", "Nin�f�cha", "Bandafassi", "Tomboroncoto", "Dindefelo", "Fongolimbi", "Dimboli"], "Sal�mata" : ["Sal�mata", "K�voye", "Dakat�li", "Ethiolo", "Oubadji", "Dar salam"], "Saraya" : ["Saraya", "Bembou", "M�dina Baff�", "Sabodala", "Khossanto", "Missirah Sirimana"]
          }, 

          "Tambacounda" : { 
             "Tambacounda" : ["Tambacounda", "Niani Toucouleur", "Makacolibantang", "Ndoga Babacar", "Missirah", "N�tt�boulou", "Dialacoto", "Sinthiou Mal�me", "Sinthiou Mal�me"], "Goudiry" : ["Goudiry", "Boynguel Bamba", "Sinthiou Mamadou Boubou", "Koussan", "Dougu�", "Diank� Makha", "Boutoucoufara", "Bani Israel", "Sinthiou Bocar Aly", "Koulor", "Bala", "Koar", "Goumbayel"], "Bakel" : ["Bakel", "B�l�", "Sinthiou Fissa", "Kidira", "Toumboura", "Sadatou", "Madina Foulb�", "Gathiary", "Gathiary", "Ballou", "Gabou", "Diawara"],  "Koumpentoum" : ["Koumpentoum", "Ndame", "M�r�to", "Kah�ne", "Bamba Thial�ne", "Payar", "Kouthiaba Wolof", "Kouthia Gaydi", "Pass Coto", "Malem Niany"]
          }, 
          "Kolda" : { 
             "Kolda" : ["Kolda", "Dialamb�r�", "M�dina Ch�rif", "Mampatim", "Coumbacara", "Coumbacara", "Bagadadji", "Dabo", "Thi�tty", "Sar� Bidji", "Guiro Y�ro Bocar", "Dioulacolon", "Tankanto Escale", "M�dina El hadj", "Salyk�gn�", "Sar� Yoba Di�ga"], "M�dina Yoro Foulah " : ["M�dina Yoro Foulah", "Badion", "Fafacourou", "Bourouco", "Bignarab�", "Ndorna", "Koulinto", "Niaming", "Dinguiraye", "Pata", "K�r�wane"], "V�lingara" : ["V�lingara", "Diaob�-Kabendou", "Kounkan�", "Kandia", "Sar� Coly Sall�", "Kandiaye", "N�mataba", "Pakour", "Paroumba", "Ouassadou", "Bonconto", "Linkering", "M�dina Gounass", "Sinthiang Koundara"]
          }, 
          "S�dhiou" : { 
             "S�dhiou" : ["S�dhiou", "Marssassoum", "Djiredji", "Bambaly", "Oudoucar", "Sama Kanta Peulh", "Diannah Ba", "Koussy", "Sakar", "Diend�", "Diannah Malary", "San Samba", "B�met Bidjini", "Djibabouya"], "Bounkiling" : ["Bounkiling", "Ndiamacouta", "Boghal", "Tankon", "Ndiamalathiel", "Djinany", "Diacounda", "Inor", "Kandion Mangana", "Bona", "Diambati", "Faoune", "Diaroum�", "Madina Wandifa"], "Goudomp" : ["Goudomp", "Diattacounda", "Samine", "Yarang Balante", "Mangaroungou Santo", "Simbandi Balante", "Djibanar", "Kaour", "Diouboudou", "Simbandi Brassou", "Bagh�re", "Niagh", "Tanaff", "Karantaba", "Kolibantang"]
          }, 

          "Ziguinchor" : { 
             "Ziguinchor" : ["Ziguinchor", "Niaguis", "Ad�ane", "Boutoupa Camaracounda", "Niassia", "Enampore" ], "Bignona" : ["Bignona", "Thionck Essyl", "Kataba 1", "Djinaky", "Kafountine", "Diouloulou", "Tenghori", "Niamone", "Ouonck", "Coubalan", "Balinghore", "Di�goune", "Kartiack", "Mangagoulack", "Mlomp", "Djibidione", "Oulampane", "Sindian", "Sindian"], "Oussouye" : ["Oussouye", "Diemb�ring", "Santhiaba Manjack", "Oukout", "Mlomp"]
          }
      }
               
               
               window.onload = function(){
                    var reg = document.getElementById("region"),
                        dept =  document.getElementById("departement"),  
                        comm  = document.getElementById("commune");
              
              for (var region in Localite ){
                  reg.options[reg.options.length] = new Option (region, region);
              }
          
              
              reg.onchange = function(){
                  dept.length = 1;
                  comm.length = 1;
                  if (this.selectedIndex < 1 )return;
                   for ( var departement in Localite[this.value]){
                       dept.options[dept.options.length] = new Option (departement, departement);
                   }
              }
              
              reg.onchange();
              dept.onchange = function(){
                  comm.length = 1;
                    if(this.selectedIndex < 1) return;
                    
                    var communes = Localite[reg.value][this.value];
                    for(var i = 0; i< communes.length; i++){
                        comm.options[comm.options.length] = new Option(communes[i], communes[i]);
                    }
    } 
}  
                           
</script>
                                   
                                              
                                                 <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left"> <!-- Champ ajout� -->
                                                        <div class="form-group">
                                                            <input type="text" name="quartier_exp_prof" class="form-control" id="qtr_village" placeholder="- 16- Dans quel quartier ou village avez-vous des activit�s ?**" required>
                                                        </div>
                                                    </div>
                                               <script>
                                                function changeStatus00(){

                                                        var lc = document.getElementById("lieu_Collectif");
                                                        var pec = document.getElementById("pe");
                                                        var rec = document.getElementById("re");
                                                        var dec = document.getElementById("de");
                                                        var qvec = document.getElementById("qve");

                                                var rg = document.getElementById("region");
                                                var dpt = document.getElementById("departement");
                                                var comm = document.getElementById("commune");
                                                var qv = document.getElementById("qtr_village");

                                                    if(lc.value=="NON"){
                                                        pec.disabled=true; rec.disabled=true; dec.disabled=true; qvec.disabled=true;

                                                    }else{
                                                        rg.disabled=true; dpt.disabled=true;  comm.disabled=true; qv.disabled=true; 
                                                    }
                                                }

                                      </script>
                                            </fieldset>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="autre_region_exp_prof" class="form-control" placeholder="17- Autre R&eacute;gion d'activit� :">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="hors_senegal" class="form-control" placeholder="18- Activit&eacute; hors S&eacute;n&eacute;gal :">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="situation_prof" id="demo-category" required>
                                                                <option value="">19- Quelle est votre situation professionnelle actuelle ?** -</option>
                                                                <option value="El�ve - Etudiant">El&egrave;ve/Etudiant</option>                                                       
                                                                <option value="En Chomage">En Ch&ocirc;mage</option>
                                                                <option value="A mon propre compte">A mon propre compte</option>
                                                                <option value="Employ�/Salari�">Employ&eacute;/Salari&eacute;</option>
                                                                <option value="autres">Autre (&agrave; pr&eacute;ciser)</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <!--Champs Soutien immediat de la 3e Form est d�place dans la 1e Form maintenant-->
                                            <fieldset>
                                                <hr/>
                                                    <h3>
                                                        <center> Vous sollicitez un soutien imm&eacute;diat &agrave; quel titre ? </center>
                                                    </h3>
                                                <hr/>
                                                    <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                <div class="form-group">
                                                    <input type="text" name="soutien_immediat" id="soutien_immediat"  class="form-control" placeholder="-20-  Quel soutien d�sirez-vous disposer dans l'imm�diat?**" required>
                                                </div>
                                                    </div>
                                            <fieldset>
                                                    <fieldset>
                                                        <div class="row">
                                                            <hr/>
                                                            <h3>
                                                                <center> Vous sollicitez un accompagnement &agrave; quel titre ? </center>
                                                            </h3>
                                                            <hr/>
                                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                                <div class="form-group">
                                                                    <select class="form-control" name="titre_accompagnement" id="demo-category" required>
                                                                        <option value="">- 21- Titre Accompagnement :** -</option>
                                                                        <option value="Personnel">Personnel</option>
                                                                        <option value="Collectif">Collectif</option>
                                                                        <option value="Collectif et Personnel">Collectif et Personnel</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    <br>
                                                </div>
                                            </fieldset>

                                            <input type="hidden" value="<%=idx%>" name="id">  
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                <center><button type="submit" name="type2" class="at-btn">ENREGISTRER & RETOURNER...</button>&nbsp;<button type="submit" name="type1" class="at-btn">ENREGISTRER & POURSUIVRE...</button></center>
                                            </div>
                                    </div>
                                    </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </section>
            </main>
            <!--************************************
                                        Main End
                        *************************************-->
            <!--************************************
                                        Footer Start
                        *************************************-->
            <footer id="at-footer" class="at-footer at-haslayout">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                          <!--  <div class="at-emailsubscribearea">
                                <p>Recevez nos derni�res informations</p>
                                <form class="at-formtheme at-formnewsletter">
                                    <fieldset>
                                        <input type="email" name="email" class="form-control" placeholder="Votre adresse e-mail">
                                        <button class="at-btn" type="submit">Souscrire</button>
                                    </fieldset>
                                </form>
                            </div> 
                          -->
                           <!--    <div class="at-threecolumns">
                                <div class="at-fcolumn">
                                    <div class="at-widget at-widgettext">
                                        <strong class="at-logo"><a href="javascript:void(0);"><img src="images/logof.png" alt="image description"></a></strong>
                                          <div class="at-description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adi pisi cing elit, sed do eiusmod tempor Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, the consectetur.</p>
                                            </div> 
                                        <ul class="at-socialicons">
                                            <li class="at-facebook"><a href="www.facebook.com/taataan"><i class="fa fa-facebook"></i></a></li>
                                            <li class="at-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li class="at-instagram"><a href="www.youtube.com/taataan"><i class="fa fa-youtube"></i></a></li>
                                        </ul>
                                       
                                    </div>
                                </div>
                                <div class="at-fcolumn">
                                    <div class="at-widget at-widgetusefullinks">
                                        <div class="at-fwidgettitle">
                                            <h3>Liens Utiles</h3>
                                        </div>
                                        <div class="at-widgetcontent">
                                            <ul>
                                                <li><a href="https://www.adel-invest.com">Adel-invest</a></li>
                                                <li><a href="https://www.taataan.sn">Taataan</a></li>
                                                <li>
                                                    <p>Email: contact@taataan.sn</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div> 
                              <div class="at-fcolumn">
                                    <div class="at-widget">
                                        <div class="at-fwidgettitle">
                                            <h3>Recent News</h3>
                                        </div>
                                        <div class="at-widgetcontent">
                                          <ul>
                                                <li>
                                                       <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> 
                                                    <time datetime="2018-01-12">January 28, 2018</time>
                                                </li>
                                                <li>
                                                      <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> 
                                                    <time datetime="2020-24-11">Novembre 24, 2020</time>
                                                </li>
                                            </ul> 
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                            <div class="at-copyright">
                                <p>Adresse: ZAC MBAO villa N�3 4i�me Etage Cit� Socidak 1 en face Brioche Dor�e, Rufisque Ouvert de 08H � 18H</p>
                                <p>Copyright @ 2020. <a href="javascript:void(0);">Badel</a> All rights reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!--************************************
                                        Footer End
                        *************************************-->
            <%
                    }
                    con.close();
                    System.out.println("Connection Closed");
                } catch (SQLException ex) {%>

            <main id="at-main" class="at-main at-haslayout">

                <div class="clearfix"></div>
                <section class="at-sectionspace at-haslayout">
                    <div class="container">
                        <h1 style="text-align: center;">Erreur id Conect1</h1>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="at-content">
                                    <div class="at-contactusvone">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
            <%
                }
            %>
        </div>
        <!--************************************
                            Wrapper End
            *************************************-->
        <script src="js/vendor/jquery-library.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcvAXp35fi4q7HXm7vcG9JMtzQbMzjRe8"></script>
        <script src="js/vendor/jquery-migrate.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/Chart.bundle.min.js"></script>
        <script src="js/isotope.pkgd.js"></script>
        <script src="js/prettyPhoto.js"></script>
        <script src="js/jquery.vide.js"></script>
        <script src="js/pogoslider.js"></script>
        <script src="js/countTo.js"></script>
        <script src="js/appear.js"></script>
        <script src="js/gmap3.js"></script>
        <script src="js/function.js"></script>
        <script>
                                                                function changementType(type) {
                                                                    if (type == "autre") {
                                                                        document.getElementById("inscritParAutre").style = "display:block";
                                                                    } else {
                                                                        document.getElementById("inscritParAutre").style = "display:none";
                                                                    }
                                                                }

                                                                function changementType1(type) {
                                                                    if (type == "Non") {
                                                                        document.getElementById("niveau").style = "display:none";
                                                                    } else {
                                                                        document.getElementById("niveau").style = "display:block";
                                                                    }
                                                                }
        </script>


    </body>

</html>