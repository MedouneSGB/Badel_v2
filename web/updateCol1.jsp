<%-- 
    Document   : inscriptionCollective1
    Created on : 23 déc. 2020, 15:07:34
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


    <head>
        <meta charset="ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Inscription Collective 1</title>
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
            String formulaire_id = (String) request.getAttribute("formulaire_id");
            String idform = request.getParameter("formulaire_id");

            if (idform == null) {
                idform = formulaire_id;
            }
            String ix = request.getParameter("id");
            String idx = (String) request.getAttribute("id");
            String tpe = (String) request.getAttribute("tpe");
            if (idx == null) {
                idx = ix;
            }
            String sql = "SELECT * FROM loginadmin where Id=?";
            try {
                Connection con = new JavaConnect().createConnection();
                PreparedStatement pst, pst1;

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
                                            <a href="connection.html">Se déconnecter</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                            <div class="at-contactsocial">
                                <span class="at-contactnumber">
                                    <i class="icon-telephone114"></i>
                                    <em>+00221 33 837 80 09</em>
                                </span>
                                
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
            <%
                /* Récupération des données de p1demandCol */
                //int compte = 1;
                String formCon1 = "";
                String formCon2 = "";
                String formCon3 = "";
                String formCon4 = "";
                String formCon5 = "";
                String formCon6 = "";
                String formCon7 = "";
                String formCon8 = "";
                String formCon9 = "";
                String formCon10 = "";
                String formCon11 = "";
                String formCon12 = "";
                String formCon13 = "";
                String formCon14 = "";
                String formCon15 = "";
                String formCon16 = "";
                String formCon17 = "";
                String formCon18 = "";
                String formCon19 = "";
                String formCon20 = "";
                String formCon21 = "";
                String formCon22 = "";
                String formCon23 = "";
                String formCon24 = "";
                String formCon25 = "";
                String formCon26 = "";

                try {

                    String sql1 = "SELECT * FROM `p1demandeurcollectif` WHERE `formulaire_id` LIKE '" + idform + "' and supp = 0";
                    // String idx = "0";
                    pst1 = con.prepareStatement(sql1);
                    ResultSet rs1 = pst1.executeQuery();

                    while (rs1.next()) {
                        formCon1 = rs1.getString(1);
                        formCon2 = rs1.getString(2);
                        formCon3 = rs1.getString(3);
                        formCon4 = rs1.getString(4);
                        formCon5 = rs1.getString(5);
                        formCon6 = rs1.getString(6);
                        formCon7 = rs1.getString(7);
                        formCon8 = rs1.getString(8);
                        formCon9 = rs1.getString(9);
                        formCon10 = rs1.getString(10);
                        formCon11 = rs1.getString(11);
                        formCon12 = rs1.getString(12);
                        formCon13 = rs1.getString(13);
                        formCon14 = rs1.getString(14);
                        formCon15 = rs1.getString(15);
                        formCon16 = rs1.getString(16);
                        formCon17 = rs1.getString(17);
                        formCon18 = rs1.getString(18);
                        formCon19 = rs1.getString(19);
                        formCon20 = rs1.getString(20);
                        formCon21 = rs1.getString(21);
                        formCon22 = rs1.getString(22);
                        formCon23 = rs1.getString(23);
                        formCon24 = rs1.getString(24);
                        formCon25 = rs1.getString(25);
                        formCon26 = rs1.getString(26);
                        

                    }
                } catch (SQLException ex) {
                    System.out.println("Erreur recup col1 " + ex);
                }
            %>
            <main id="at-main" class="at-main at-haslayout">

                <div class="clearfix"></div>
                <section class="at-sectionspace at-haslayout">
                    <div class="container">
                        <h1 style="text-align: center;">Inscription Collective</h1>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="at-content">
                                    <div class="at-contactusvone">
                                        <form class="at-formtheme at-formcontacus" method="post" action="UpdateCol1">

                                            <div class="at-sectiontitleborder">
                                                <br>
                                                <h2><center>Veuillez remplir ce formulaire : <strong>étape 1</strong> </center></h2>
                                            </div>

                                              <fieldset>
                                <hr/>
                                    <h3><center>Identité du Représentant du Collectif </center></h3>  
                                <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="prenom_representant" value="<%=formCon3%>" class="form-control" placeholder="1- Prénom du représentant du Collectif ?**" required="Champ Obligatoire"> <!-- Champ ajouté -->
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="nom_representant" value="<%=formCon4%>" class="form-control" placeholder="2- Nom du représentant du Collectif ?**" required=""> <!-- Champ ajouté -->
                                                    </div>
                                                </div>
                                              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="sexe_representant" value="<%=formCon5%>" id="demo-category" required> <!-- Champ ajouté -->
                                                                <option value="">3- Sexe :** -</option>                                                     
                                                                <option value="masculin">Masculin</option>
                                                                <option value="feminin">Féminin</option>  
                                                            </select>
                                                        </div>
                                                    </div>
                                                 
                                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="adresse_representant" class="form-control" value="<%=formCon6%>" placeholder="4- Adresse du représentant du Collectif ?**" required=""> <!-- Champ ajouté -->
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="contact1_representant" class="form-control" value="<%=formCon7%>" placeholder="5- Téléphone 1 du représentant du Collectif**" required=""> <!-- Champ ajouté -->
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="contact2_representant" class="form-control" value="<%=formCon8%>" placeholder="6- Téléphone 2 du représentant du Collectif ?"> <!-- Champ ajouté -->
                                                    </div>
                                                </div>
                                            </fieldset>
                                        <fieldset>
                                            <div class="row">
                                            <hr/>
                                                <h3><center>Quel est votre titre dans le Collectif ? </center></h3>  
                                            <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="titre" value="<%=formCon9%>" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="">- Quel est votre titre dans le Collectif ?** -</option>
                                                        <option value="responsable_morale">Responsable Moral</option>
                                                        <option value="responsable_delegue">Responsable d&eacute;l&eacute;gu&eacute;</option>
                                                        <option value="membre">Membre</option>
                                                        <option value="partenaire">Partenaire</option>
                                                        <option value="autre">Autre</option>
                                                        </select>
                                                    </div>
                                                </div>
                                        </fieldset>
                                        <fieldset>
                                    <hr/>
                                      <h3><center>Quel est la nature juridique du Collectif ? </center></h3>  
                                    <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="nat_juridique" value="<%=formCon10%>" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="">- Nature Juridique** -</option>
                                                        <option value="gpf">GPF</option>
                                                        <option value="association">Association</option>
                                                        <option value="organisation_professionnelle">Organisation Professionnelle</option>
                                                        <option value="partenaire">Partenaire</option>
                                                        <option value="autre">Autre</option>
                                                        </select>
                                                    </div>
                                                </div>
                                         </fieldset>
                                         <fieldset>
                                <hr/>
                                     <h3><center>Quelle est la d&eacute;nomination du Collectif ? </center></h3>  
                                <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="denomination" value="<%=formCon11%>" class="form-control" placeholder="D&eacute;nomination**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>  
                                <hr/>
                                    <h3><center>La reconnaissance juridique du Collectif ? </center></h3>  
                                <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="reconnaisance_juridique"  value="<%=formCon12%>" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="">- Avez-vous une reconnaissance juridique** -</option>
                                                        <option value="oui">OUI</option>
                                                        <option value="non">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                <hr/>
                                    <h3><center>O&ubreve; se trouve le si&eacute;ge social du Collectif ? </center></h3>  
                                <hr/>
                                
                                <br/>   
                                       <hr/>
                                            <h3><center>  Collectif Exterieur ? </center></h3>  
                                        <hr/>
                                <br/> 
                                <fieldset>  
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                         <div class="form-group">
                                                             <select class="form-control" name="lieu_Collectif" value="<%=formCon13%>" onchange="changeStatus00()" id="lieu_Collectif" required> <!-- Champ ajouté -->
                                                                <option value="">1- Le Collectif se situe-t-il au Senegal?** -</option>                                                     
                                                                <option value="OUI">OUI</option>
                                                                <option value="NON">NON</option>  
                                                            </select>
                                                        </div>
                                                    </div>
                                              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="pays_exterieur" id="pe" value="<%=formCon14%>" class="form-control" placeholder="2- Dans quel pays extérieur se trouve le Collectif ?** " required="Champ Obligatoire">
                                                    </div>
                                              </div> 
                                             <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="region_exterieure"  id="re" value="<%=formCon15%>" class="form-control" placeholder="3- Dans quelle region extérieure se trouve le Collectif ?** " required="Champ Obligatoire">
                                                    </div>
                                              </div>
                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="departement_exterieur" id="de" value="<%=formCon16%>" class="form-control" placeholder="4- Dans quelle departement extérieur se trouve le Collectif ?** " required="Champ Obligatoire">
                                                    </div>
                                              </div>
                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="commune_exterieure" id="ce" value="<%=formCon17%>" class="form-control" placeholder="5- Dans quelle commune extérieure se trouve le Collectif ?** " required="Champ Obligatoire">
                                                    </div>
                                              </div>
                                           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="Qtr_Village_exterieur" value="<%=formCon18%>" class="form-control" id="qve" placeholder="6- Dans quel quartier ou village extérieur se trouve le Collectif ?** " required="Champ Obligatoire">
                                                    </div>
                                              </div>
                                             
                                 </fieldset>  
                                                                   
                             <br/>
                                                       <hr/>
                                                           <h3><center> Collectif Interieur ? </center></h3>  
                                                       <hr/>
                               <fieldset>
                                               <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="region_interieure" value="<%=formCon19%>" id="region" required="Champ Obligatoire"> 
                                                        <option value="">- 1- Dans quelle r&eacute;gion se trouve le Collectif ?** -</option>
                                               
                                                        </select>
                                                    </div>
                                                </div>
                                                                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="departement_interieur" value="<%=formCon20%>" id="departement"  required="Champ Obligatoire"> 
                                                        <option value="">- 2- Dans quel d&eacute;partement se trouve le Collectif ?** -</option>
                                                                                                          
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="commune_interieure" value="<%=formCon21%>" id="commune" required="Champ Obligatoire"> 
                                                        <option value="">- 3- Dans quelle commune se trouve le Collectif ?** -</option>
                                                                   </select>
                                                    </div>
                                                </div>
                                      <script>
                       var Localite = {
        "Dakar" :  { 
              "Dakar" : ["Gorée", "Dakar Plateau", "Gueule Tapée", "Fass", "Colobane", "Fann-Point E-Amitié", "Médina", "Grand-Dakar", "Biscuiterie", "Dieuppeul-Derklé", "Hann-Bel-Air", "Sicap-Liberté", "HLM", "Mermoz-Sacré Coeur", "Ouakam", "Ngor", "Yoff", "Grand-Yoff", "Patte d?oie", "Parcelles Assainies", "Cambérène" ], "Pikine" : ["Pikine- Est", "Pikine-Nord", "Pikine-Ouest", "Dalifort-Foirail", "Djeddha Thiaroye Kao", "Guinaw Rail-Nord", "Guinaw Rail-Sud", "Tivaoune-Diacksao", "Diamagueune-Sicap Mbao", "Mbao", "Keur Massar", "Malika", "Yeumbeul-Sud", "Yeumbeul-Nord"], "Guédiawaye" : ["Golf-Sud", "Sam-Notaire", "Ndiarème-Limamoulaye", "Wakhinane", "Médina Gounass"], "Rufisque" : ["Bargny","Sébikotane","Sendou","Rufisque-Est","Rufisque-Nord","Rufisque-Ouest","Bambylor","Yène","Tivaouane Peulh-Niaga","Diamniadio","Sangalkam","Jaxaay-Parcelles-Niakoul Rap"]
          },                                                          
        "Thies" :  { 
             "Thies" : ["Khombole", "Pout", "Thiès-Ouest", "Thiès-Est","Thiès-Nord","Thiénaba","Ngoudiane","Ndiéyène Sirakh","Touba Toul","Keur Moussa","Diender","Fandène","Kayar","Notto","Tassète"], "Tivaouane" : ["Tivaouane", "Mékhé", "Mboro", "Méouane", "Darou Khoudoss", "Taïba Ndiaye", "Mérina Dakhar", "Koul", "Pékèsse", "Niakhène", "Mbayène", "Thilmakha", "Ngandiouf", "Notto Gouye Diama", "Mont Rolland", "Pire Goureye", "Chérif Lo", "Pambal"], "Mbour" : ["Mbour", "Joal Fadiouth", "Fissel", "Ndiaganiao", "Sessene", "Sandiara", "Nguéniène", "Thiadiaye", "Sindia", "Malicounda", "Diass", "Nguékhokh", "Saly Portudal", "Ngaparou", "Somone", "Popenguine-Ndayane"]
          },
        "Louga" :  { 
             "Louga" : ["Coki", "Ndiagne", "Guet Ardo", "Thiamène Cayor", "Pété Ouarack", "Keur Momar Sarr", "Nguer Malal", "Syer", "Gande", "Mbédiene", "Niomré", "Nguidilé", "Kéle Gueye", "Léona", "Sakal", "Ngueune Sarr"], "Kébémer" : ["Bandegne Ouolof", "Diokoul Diawrigne", "Kab Gaye", "Ndande", "Thieppe", "Guéoul", "Mbacké Cajor", "Darou Marnane", "Darou Mousty", "Mbadiane", "Ndoyene", "Sam Yabal", "Touba Mérina", "Ngourane Ouolof", "Thiolom Fall", "Sagatta Gueth", "Kanène Ndiob", "Loro"], "Linguère" : ["Linguère", "Dahra", "Barkédji", "Gassane", "Thiargny", "Thiel", "Boulal", "Dealy", "Thiamène Pass", "Sagatta Djolof", "Affé Djiolof", "Dodji", "Labgar", "Ouarkhokh", "Kamb", "Mboula", "Téssékéré Forage", "Yang-Yang"]
          },
          "Kaolack" : { 
             "Kaolack" : ["Kaolack", "Kahone", "Keur Baka", "Latmingué", "Thiaré", "Ndoffane", "Keur Socé", "Ndiaffate", "Ndiedieng", "Dya", "Ndiébel", "Thiomby", "Gandiaye", "Sibassor"], "Guinguinéo" : ["Guinguinéo", "Khelcom ? Birane", "Mbadakhoune", "Ndiago", "Ngathie Naoudé", "Fass", "Gagnick", "Dara Mboss", "Nguélou", "Nguélou", "Ourour", "Panal Ouolof", "Mboss"], "Nioro du Rip" : ["Kayemor", "Médina Sabakh", "Ngayene", "Gainthe Kaye", "Dabaly", "Darou Salam", "Paos Koto", "Porokhane", "Taïba Niassène", "Keur Maba Diakhou", "Keur Madongo", "Ndramé Escale", "Wack Ngouna", "Keur Madiabel"]
          },
         "Diourbel" : { 
             "Diourbel" : ["Diourbel", "Ndoulo", "Ngohe", "Pattar", "Tocky Gare", "Touré Mbondé", "Ndankh Séne", "Gade Escale", "Touba Lappé", "Keur Ngalgou", "Ndindy", "Taïba Moutoupha"], "Bambey" : ["Bambey", "Dinguiraye", "Baba Garage", "Keur Samba Kane", "Ngoye", "Thiakhar", "Ndondol", "Ndangalma", "Lambaye", "Réfane", "Gawane", "Ngogom"], "Mbacké" : ["Ngogom", "Touba Mosquée", "Dalla Ngabou", "Missirah" , "Nghaye", "Touba Fall", "Darou Salam Typ" , "Darou Nahim", "Kael", "Madina" , "Touba Mboul", "Taïba Thièkène", "Dendèye Gouy Gui" , "Ndioumane", "Taïf", "Sadio" ]
          }, 
          "Fatick" : { 
             "Fatick" : ["Dioffior", "Thiaré Ndialgui", "Diaoulé", "Mbéllacadiao", "Ndiop", "Ndiop", "Diakhao", "Djilasse", "Djilasse", "Loul Sessène", "Palmarin Facao", "Niakhar", "Ngayokhème", "Patar", "Diarrère", "Diouroup", "Tattaguine"], "Foundiougne" : ["Foundiougne", "Sokone", "Keur Saloum Diané", "Keur Samba Gueye", "Toubacouta", "Nioro Alassane Tall", "Karang Poste", "Passy", "Soum", "Diossong", "Djilor", "Niassène", "Diagane Barka", "Diagane Barka", "Mbam", "Bassoul", "Dionewar", "Djirnda"], "Gossas" : ["Gossas", "Colobane", "Mbar", "Ndiene Lagane", "Ouadiour", "Patar Lia"]
          }, 
          "Kaffrine" : { 
             "Kaffrine" : ["Nganda", "Diamagadio", "Diokoul Belbouck", "Kathiotte", "Médinatoul Salam 2", "Gniby", "Boulel", "Kahi"], "Birkilane" : ["Birkelane", "Keur Mboucki", "Touba Mbella", "Diamal", "Mabo", "Ndiognick", "Ségré-gatta", "Mbeuleup"], "Malème-Hodar" : ["Malème-Hodar", "Darou Miname II", "Khelcom", "Ndioum Ngainth", "Ndiobène Samba Lamo", "Sagna", "Dianké Souf "],  "Koungheul" : ["Koungheul", "Missirah Wadène", "Maka Yop", "Ngainthe Pathé", "Fass Thièkène", "Saly Escale", "Ida Mouride", "Ribot Escale", "Lour Escale"]
          }, 
          "Saint-Louis" : { 
             "Saint-Louis" : ["Saint-Louis", "Mpal", "Fass Ngom", "Ndiébène Gandiol", "Gandon"], "Dagana" : ["Dagana", "Richard Toll", "Ross-Béthio", "Rosso-Sénégal", "Ngnith", "Diama", "Ronkh", "Ndombo Sandjiry", "Gae", "Bokhol", "Mbane"], "Podor" : ["Podor", "Méry", "Doumga Lao", "Madina Diathbé", "Golléré", "Mboumba", "Walaldé", "Aéré Lao", "Gamadji Saré", "Dodel", "Guedé Village", "Guédé Chantier", "Démette", "Bodé Lao", "Fanaye", "Ndiayene Peindao", "Ndiandane", "Mbolo Birane", "Boké Dialloubé", "Galoya Toucouleur", "Pété"]
          }, 
          "Matam" : { 
             "Matam" : ["Matam", "Ourossogui", "Thilogne", "Nguidjilone", "Dabia", "Des Agnam Civol", "Oréfondé", "Bokidiawé", "Nabadji Civol", "Ogo"], "Kanel" : ["Kanel", "Odobéré", "Wouro Sidy", "Ndendory", "Sinthiou Bamambé Banadji", "Hamady Hounaré", "Aouré", "Bokiladji", "Orkadiéré", "Ouaoundé", "Semmé", "Dembancané"], "Ranérou" : ["Ranérou", "Lougré Thioly", "Oudalaye", "Vélingara"]
          }, 
          "Kédougou" : { 
             "Kédougou" : ["Kédougou", "Ninéfécha", "Bandafassi", "Tomboroncoto", "Dindefelo", "Fongolimbi", "Dimboli"], "Salémata" : ["Salémata", "Kévoye", "Dakatéli", "Ethiolo", "Oubadji", "Dar salam"], "Saraya" : ["Saraya", "Bembou", "Médina Baffé", "Sabodala", "Khossanto", "Missirah Sirimana"]
          }, 

          "Tambacounda" : { 
             "Tambacounda" : ["Tambacounda", "Niani Toucouleur", "Makacolibantang", "Ndoga Babacar", "Missirah", "Néttéboulou", "Dialacoto", "Sinthiou Malème", "Sinthiou Malème"], "Goudiry" : ["Goudiry", "Boynguel Bamba", "Sinthiou Mamadou Boubou", "Koussan", "Dougué", "Dianké Makha", "Boutoucoufara", "Bani Israel", "Sinthiou Bocar Aly", "Koulor", "Bala", "Koar", "Goumbayel"], "Bakel" : ["Bakel", "Bélé", "Sinthiou Fissa", "Kidira", "Toumboura", "Sadatou", "Madina Foulbé", "Gathiary", "Gathiary", "Ballou", "Gabou", "Diawara"],  "Koumpentoum" : ["Koumpentoum", "Ndame", "Méréto", "Kahène", "Bamba Thialène", "Payar", "Kouthiaba Wolof", "Kouthia Gaydi", "Pass Coto", "Malem Niany"]
          }, 
          "Kolda" : { 
             "Kolda" : ["Kolda", "Dialambéré", "Médina Chérif", "Mampatim", "Coumbacara", "Coumbacara", "Bagadadji", "Dabo", "Thiétty", "Saré Bidji", "Guiro Yéro Bocar", "Dioulacolon", "Tankanto Escale", "Médina El hadj", "Salykégné", "Saré Yoba Diéga"], "Médina Yoro Foulah " : ["Médina Yoro Foulah", "Badion", "Fafacourou", "Bourouco", "Bignarabé", "Ndorna", "Koulinto", "Niaming", "Dinguiraye", "Pata", "Kéréwane"], "Vélingara" : ["Vélingara", "Diaobé-Kabendou", "Kounkané", "Kandia", "Saré Coly Sallé", "Kandiaye", "Némataba", "Pakour", "Paroumba", "Ouassadou", "Bonconto", "Linkering", "Médina Gounass", "Sinthiang Koundara"]
          }, 
          "Sédhiou" : { 
             "Sédhiou" : ["Sédhiou", "Marssassoum", "Djiredji", "Bambaly", "Oudoucar", "Sama Kanta Peulh", "Diannah Ba", "Koussy", "Sakar", "Diendé", "Diannah Malary", "San Samba", "Bémet Bidjini", "Djibabouya"], "Bounkiling" : ["Bounkiling", "Ndiamacouta", "Boghal", "Tankon", "Ndiamalathiel", "Djinany", "Diacounda", "Inor", "Kandion Mangana", "Bona", "Diambati", "Faoune", "Diaroumé", "Madina Wandifa"], "Goudomp" : ["Goudomp", "Diattacounda", "Samine", "Yarang Balante", "Mangaroungou Santo", "Simbandi Balante", "Djibanar", "Kaour", "Diouboudou", "Simbandi Brassou", "Baghère", "Niagh", "Tanaff", "Karantaba", "Kolibantang"]
          }, 

          "Ziguinchor" : { 
             "Ziguinchor" : ["Ziguinchor", "Niaguis", "Adéane", "Boutoupa Camaracounda", "Niassia", "Enampore" ], "Bignona" : ["Bignona", "Thionck Essyl", "Kataba 1", "Djinaky", "Kafountine", "Diouloulou", "Tenghori", "Niamone", "Ouonck", "Coubalan", "Balinghore", "Diégoune", "Kartiack", "Mangagoulack", "Mlomp", "Djibidione", "Oulampane", "Sindian", "Sindian"], "Oussouye" : ["Oussouye", "Diembéring", "Santhiaba Manjack", "Oukout", "Mlomp"]
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
                                                 <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left"> <!-- Champ ajouté -->
                                                        <div class="form-group">
                                                            <input type="text" name="Qtr_Village_interieur" value="<%=formCon22%>" class="form-control" id="qtr_village" placeholder="5- Dans quel quartier ou village se trouve le Collectif ?**" required>
                                                        </div>
                                                    </div>
                                               <script>
                                                function changeStatus00(){

                                                        var lc = document.getElementById("lieu_Collectif");
                                                        var pec = document.getElementById("pe");
                                                        var rec = document.getElementById("re");
                                                        var dec = document.getElementById("de");
                                                        var cec = document.getElementById("ce");
                                                        var qvec = document.getElementById("qve");

                                                var rg = document.getElementById("region");
                                                var dpt = document.getElementById("departement");
                                                var comm = document.getElementById("commune");
                                                var qv = document.getElementById("qtr_village");

                                                    if(lc.value=="OUI"){
                                                        pec.disabled=true; rec.disabled=true; dec.disabled=true; cec.disabled=true; qvec.disabled=true;

                                                    }else{
                                                        rg.disabled=true; dpt.disabled=true;  comm.disabled=true; qv.disabled=true; 
                                                    }
                                                }

                                      </script>
                                            </fieldset>
                                                       
                                                       
                                            <fieldset>
                                <hr/>
                                                <h3><center>Quelle est la date de cr&eacute;ation du Collectif ? </center></h3>  
                                <hr/>   
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <input type="date" name="date_creation" value="<%=formCon23%>" class="form-control" placeholder="Date de cr&eacute;ation du Collectif. (JJ/MM/AAAA)**" required="Champ Obligatoire" pattern=(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                <hr/>
                                    <h3><center>Combien de membres compte le Collectif ? </center></h3>  
                                <hr/>
                                
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="total_membre"  value="<%=formCon24%>" id="total_membre" class="form-control" placeholder="1- Combien de membres compte le Collectif ?**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="total_homme" value="<%=formCon25%>" id="total_homme" class="form-control" placeholder="2- Combien d'hommes dans le Collectif ?" required="">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="total_femme" value="<%=formCon26%>"  id="tf" onchange="calc()" class="form-control" placeholder="3- Combien de femmes dans le Collectif ?">
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>  
                                                <input type="hidden" value="<%=idx%>" name="id">  
                                                <input type="hidden" value="<%=idform%>" name="formulaire_id">  
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                    <center><button type="submit" name="type2" class="at-btn">ENREGISTRER LES MODIFICATIONS</button></center>
                                                </div>
                                                </div>
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
                            <div class="at-emailsubscribearea">
                                <p>Recevez nos derniéres informations</p>
                                <form class="at-formtheme at-formnewsletter">
                                    <fieldset>
                                        <input type="email" name="email" class="form-control" placeholder="Votre adresse e-mail">
                                        <button class="at-btn" type="submit">Souscrire</button>
                                    </fieldset>
                                </form>
                            </div>
                            <div class="at-threecolumns">
                                <div class="at-fcolumn">
                                    <div class="at-widget at-widgettext">
                                        <strong class="at-logo"><a href="javascript:void(0);"><img src="images/logof.png" alt="image description"></a></strong>
                                        <!--     <div class="at-description">
                                                 <p>Lorem ipsum dolor sit amet, consectetur adi pisi cing elit, sed do eiusmod tempor Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, the consectetur.</p>
                                             </div> -->
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
                                                <li><a href="index.html">Accueil</a></li>
                                                <li><a href="javascript:void(0);">S'INSCRIRE</a></li>
                                                <li><a href="https://www.adel-invest.com">Adel-invest</a></li>
                                                <li><a href="https://www.taataan.sn">Taataan</a></li>
                                                <li><p>Email: contact@taataan.sn</p></li>
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
                                                    <!--    <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> -->
                                                    <time datetime="2018-01-12">January 28, 2018</time>
                                                </li>
                                                <li>
                                                    <!--    <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> -->
                                                    <time datetime="2020-24-11">Novembre 24, 2020</time>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="at-copyright">
                                <p>Adresse: ZAC MBAO villa Né3 4iéme Etage Cité Socidak 1 en face Brioche Dorée, Rufisque Ouvert de 08H é 18H</p>
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
    </body>

</html>