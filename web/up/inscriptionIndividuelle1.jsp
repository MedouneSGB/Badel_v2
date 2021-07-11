<%-- 
    Document   : inscriptionIndividuelle1
    Created on : 23 déc. 2020, 15:07:51
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
                                <ul class="at-socialicons">
                                    <li class="at-facebook"><a href="https://www.facebook.com/badel"><i class="fa fa-facebook"></i></a></li>
                                    <li class="at-twitter"><a href="https://www.twitter.com/badel"><i class="fa fa-twitter"></i></a></li>
                                    <li class="at-instagram"><a href="https://www.instagram.com/badel"><i class="fa fa-instagram"></i></a></li>
                                </ul>
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
                                                            <option value="">- Qui êtes vous ? -</option>
                                                            <option value="Demandeur">Je suis moi même le demandeur</option>
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
                                                    <center>Veuillez remplir ce formulaire : <strong>Étape 1</strong> </center>
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
                                                            <input type="text" name="prenom" class="form-control" placeholder="1- Prénom" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="nom" class="form-control" placeholder="2- Nom" required>
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="tel1" class="form-control" placeholder="3- Numéro de Téléphone 1" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="tel2" class="form-control" placeholder="4- Numéro de Téléphone 2" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="commune_rattach" class="form-control" placeholder="5- Commune de Rattachement" required>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="commune_actuelle" class="form-control" placeholder="6- Commune actuelle" required>
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
                                                                <option value="">1- Sexe : -</option>                                                     
                                                                <option value="masculin">Masculin</option>
                                                                <option value="feminin">Féminin</option>  
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="tranche_age" id="demo-category" required>
                                                                <option value="">2- Tranche d'âge: -</option>
                                                                <option value="15-25 ans">15 à 25 ans</option>
                                                                <option value="26-35 ans">26 à 35 ans</option>
                                                                <option value="36-45 ans">36 à 45 ans</option>
                                                                <option value="46-55 ans">46 à 55 ans</option>
                                                                <option value="+55 ans">Plus de 55 ans</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="etude" id="demo-category" onchange="changementType1(this.value);" required>
                                                                <option value="">3- Avez vous fait des études: -</option>
                                                                <option value="Ecole Française">Oui - Ecole Française</option>
                                                                <option value="Ecole Arabe">Oui - Ecole Arabe</option>
                                                                <option value="NON">Non</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group" id="niveau">
                                                            <select class="form-control" name="niveau_etude">
                                                                <option value="">4- Niveau d'études: -</option>
                                                                <option value="Francais Primaire">Ecole Française - Primaire</option>
                                                                <option value="Francais Secondaire">Ecole Française - Secondaire</option>
                                                                <option value="Francais Universitaire">Ecole Française - Universitaire</option>
                                                                <option value="Arabe General">Ecole Arabe - Etudes générales de base</option>
                                                                <option value="Arabe Approfondi de Spécilisation">Ecole Arabe - Etudes approfondies de spécialisation</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="formation_prof" id="demo-category" required>
                                                                <option value="">5- Formation Technique Professionnelle : -</option>
                                                                <option value="OUI">OUI</option>                                                       
                                                                <option value="NON">NON</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="sejour" id="demo-category" required>
                                                                <option value="">6- Avez-vous séjourné dans un pays étrangers ?-</option>
                                                                <option value="OUI">OUI</option>                                                       
                                                                <option value="NON">NON</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="pays_sejourne" class="form-control" placeholder="7- SI OUI dans quel pays ?">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="motif_sejour" class="form-control" placeholder="8- Et quel est le motif du séjour ?">
                                                        </div>
                                                    </div>

                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="experience_prof" id="demo-category">
                                                                <option value="">9- Expérience Professionnelle : -</option>
                                                                <option value="OUI">OUI</option>                                                       
                                                                <option value="NON">NON</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="domaine_exp_prof" id="demo-category">
                                                                <option value="">10- Domaine d'activité : -</option>
                                                                <option value="Production">Production</option>                                                       
                                                                <option value="Transformation">Transformation</option>
                                                                <option value="Distribution_Commerce">Distribution - Commerce</option>
                                                                <option value="Transport_Manutention">Transport et Manutention</option>
                                                                <option value="Prestations_Intellectuelles">Prestations Intellectuelles</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="duree_exp_prof" id="demo-category" required> 
                                                                <option value="">11- Durée Expérience Professionnelle : -</option>
                                                                <option value="3mois-1an">3mois à 1an</option>                                                       
                                                                <option value="+1an-3ans">+1an à 3ans</option>
                                                                <option value="+3ans-5ans">+3ans à 5ans</option>
                                                                <option value="+5ans">+5ans</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="statut_exp_prof" id="demo-category">
                                                                <option value="">12- Statut : -</option>
                                                                <option value="Journalier">Journalier</option>                                                       
                                                                <option value="Apprenti">Apprenti</option>
                                                                <option value="Stagiaire">Stagiaire</option>
                                                                <option value="Contrat">Contrat</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="commune_exp_prof" class="form-control" placeholder="13- Commune d'activité">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="departement_exp_prof" class="form-control" placeholder="14- Département d'activité">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="region_exp_prof" class="form-control" placeholder="15- Région d'activité">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="autre_region_exp_prof" class="form-control" placeholder="16- Autre Région d'activité">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <input type="text" name="hors_senegal" class="form-control" placeholder="17- Activité hors Sénégal">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                        <div class="form-group">
                                                            <select class="form-control" name="situation_prof" id="demo-category">
                                                                <option value="">18- Quelle est votre situation professionnelle actuelle ? -</option>
                                                                <option value="Elève - Etudiant">Elève/Etudiant</option>                                                       
                                                                <option value="En Chomage">En Chomage</option>
                                                                <option value="A mon propre compte">A mon propre compte</option>
                                                                <option value="Employé/Salarié">Employé/Salarié</option>
                                                                <option value="autres">Autre (à préciser)</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <fieldset>
                                                        <div class="row">
                                                            <hr/>
                                                            <h3>
                                                                <center> Vous sollicitez un accompagnement à quel titre ? </center>
                                                            </h3>
                                                            <hr/>
                                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                                <div class="form-group">
                                                                    <select class="form-control" name="titre_accompagnement" id="demo-category">
                                                                        <option value="">- Titre Accompagnement : -</option>
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
                            <div class="at-emailsubscribearea">
                                <p>Recevez nos dernières informations</p>
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
                                <p>Adresse: ZAC MBAO villa N°3 4ième Etage Cité Socidak 1 en face Brioche Dorée, Rufisque Ouvert de 08H à 18H</p>
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