<%-- 
    Document   : inscriptionIndividuelle2
    Created on : 23 déc. 2020, 14:25:30
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
    <title>Inscription Individuelle 2</title>
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
        String formulaire_idx = request.getParameter("formulaire_id");
        String formulaire_id = (String) request.getAttribute("formulaire_id");

            if (formulaire_id == null) {
                formulaire_id = formulaire_idx;
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
                    <h1 style="text-align: center;">Inscription Individuelle 2 form = <%=formulaire_id%></h1>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="at-content">
                                <div class="at-contactusvone">
                                    <form class="at-formtheme at-formcontacus" action="ServInd2" method="post" >
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
                                            <h2><center>Veuillez remplir ce formulaire : <strong>Étape 2</strong> </center></h2>
                                         <hr/>
                                         <br/>
                                         <hr/>
                                            <h3><center>ORIENTATION PROFESSIONNELLE :<strong>OPTION INITIALE DEMANDEUR</strong> </center></h3>
                                            <hr/>
                                        </div> 
                                        <fieldset>
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="categories" id="categories" onchange="changeStatus01()" required="">
                                                        <option value="">- CATEGORIES :** -</option>
                                                        <option value="Insertion_emploi" id="c1" >Insertion à l'emploi</option>
                                                        <option value="Insertion_ou_Reconversion_par_autoemploi" id="c2" >Insertion ou Reconversion par l'auto-emploi</option>
                                                        <option value="Renforcement_ou_Extension_Activite" id="c3">Renforcement ou Extension Activité</option>
                                                        <option value="Migrants" id="c4">Migrants</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="sous_categories" id="sous_categories"required=""  >
                                                        <option value="">- SOUS-CATEGORIES :** -</option>
                                                        <option value="Recherche_de_Qualification_Professionnelle" id="sc1">Recherche de Qualification Professionnelle</option>
                                                        <option value="Qualifié_à_la_recherche_d'un_emploi" id="sc2">Qualifié à la recherche d'un emploi</option>
                                                        <option value="Primo_demandeur_auto_emploi" id="sc3">Primo demandeur auto emploi</option>
                                                        <option value="Déflate_Licence" id="sc4">Déflaté-Licencé</option>
                                                        <option value="Reconversion_Professionnelle" id="sc5">Reconversion Professionnelle</option>
                                                        <option value="Informelle/Formelle" id="sc6">Informelle/Formelle</option>
                                                        <option value="Résident/Non_Résident" id="sc7">Résident/Non-Résident</option>
                                                        <option value="Migrants_en_Préparation_de_son_retour" id="sc8">Migrants en Préparation de son retour</option>
                                                        <option value="Migrants_de_retour" id="sc9">Migrants de retour</option>
                                                        <option value="Migrants_Retourné" id="sc10">Migrants Retourné</option>
                                                    </select>
                                                </div>
                                            </div>            
                                        </fieldset>
                                        <fieldset>
                                        <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="parcours" id="parcours" required="" >
                                                    <option value="">- PARCOURS :** -</option>
                                                    <option value="parcours1" id="p1">Parcours-1</option>
                                                    <option value="parcours2" id="p2">Parcours-2</option>
                                                    <option value="parcours3" id="p3">Parcours-3</option>
                                                    <option value="parcours4" id="p4">Parcours-4</option>
                                                    <option value="parcours1_2" id="p12">Parcours-1_2</option>
                                                    <option value="parcours1_3" id="p13">Parcours-1_3</option>
                                                    <option value="parcours1_4" id="p14">Parcours-1_4</option>
                                                    <option value="parcours2_3" id="p23">Parcours-2_3</option>
                                                    <option value="parcours2_4" id="p24">Parcours-2_4</option>
                                                    <option value="parcours3_4" id="p34">Parcours-3_4</option>
                                                    <option value="parcours1_2_3" id="p123">Parcours-1_2_3</option>
                                                    <option value="parcours1_2_4" id="p124">Parcours-1_2_4</option>
                                                    <option value="parcours1_2_3_4" id="p234">Parcours-1_2_3_4</option>
                                                    <option value="audit_org_financier" id="paof">Audit organisationnel et financier</option>
                                                    <option value="contrat_accompagnement" id="pca">Contrat d'accompagnement</option>
                                                    <option value="accomp_distant" id="pad">Accompagnement distant</option>
                                                    <option value="accomp_distant_et_parcours1_2_3_4" id="pad_p234">Accompagnement distant et Parcours-1_2_3_4</option>
                                                </select>   
                                            </div>
                                        </div>     
                                        </fieldset>
                                        <fieldset>
                                        <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="marqueurs" id="marqueurs"  required="">
                                                    <option value="">- MARQUEURS :** -</option>
                                                    <option value="Définition_et_accompagnement_du_projet_personnel" id="m1">Définition et accompagnement du projet personnel</option>
                                                    <option value="Accompagnement_le_recherche_d'emploi/stage" id="m2">Accompagnement le recherche d'emploi/stage</option>
                                                    <option value="Accompagnement_de_Groupe" id="m3">Accompagnement de Groupe</option>
                                                    <option value="Accompagnement_Individualisé" id="m4">Accompagnement Individualisé</option>
                                                    <option value="Définition_et_Accompagnement_du_projet_personnel" id="m5">Définition et Accompagnement du projet personnel</option>
                                                    <option value="Accompagnements_de_Groupe_et_individualisé" id="m6">Accompagnements de Groupe et individualisé</option>
                                                   </select>
                                            </div>                      
                                        </div>    
                                            <input type="hidden" value="<%=idx%>" name="id">  
                                            <input type="hidden" value="<%=formulaire_id%>" name="formulaire_id">
                                        </fieldset>    
                                        
                                        <script>
                                                        function changeStatus01(){
                                    var catg = document.getElementById("categories");
                                    
                                    var varc1 = document.getElementById("c1"), varc2 = document.getElementById("c2"), varc3 = document.getElementById("c3"), varc4 = document.getElementById("c4");
                                    
                                    var varsc1 = document.getElementById("sc1"), varsc2 = document.getElementById("sc2"), varsc3 = document.getElementById("sc3"), varsc4 = document.getElementById("sc4"), varsc5 = document.getElementById("sc5"),
                                        varsc6 = document.getElementById("sc6"), varsc7 = document.getElementById("sc7"), varsc8 = document.getElementById("sc8"), varsc9 = document.getElementById("sc9"), varsc10 = document.getElementById("sc10");
                                
                                    var varp1 = document.getElementById("p1"), varp2 = document.getElementById("p2"), varp3 = document.getElementById("p3"), varp4 = document.getElementById("p4"), varp12 = document.getElementById("p12"),varp13 = document.getElementById("p13"),
                                        varp14 = document.getElementById("p14"), varp23 = document.getElementById("p23"), varp24 = document.getElementById("p24"), varp34 = document.getElementById("p34"), varp123 = document.getElementById("p123"), varp124 = document.getElementById("p124"),
                                        varp234 = document.getElementById("p234"),varpaof = document.getElementById("paof"),varpca = document.getElementById("pca"),varpad = document.getElementById("pad"), varpp1 = document.getElementById("pad_p234");                        
                                                             
                                    var varm1 = document.getElementById("m1"), varm2 = document.getElementById("m2"), varm3 = document.getElementById("m3"), 
                                        varm4 = document.getElementById("m4"), varm5 = document.getElementById("m5"), varm6 = document.getElementById("m6");    
        
        
        
                                                            if(catg.value=="Insertion_emploi"){
                                                                
                                                                varsc3.disabled = true; varsc4.disabled = true;
                                                                varsc5.disabled = true; varsc6.disabled = true;
                                                                varsc7.disabled = true; varsc8.disabled = true;
                                                                varsc9.disabled = true; varsc10.disabled = true;

                                                                    varp2.disabled = true; varp3.disabled = true; varp12.disabled = true; varp13.disabled = true;
                                                                    varp14.disabled = true; varp23.disabled = true; varp24.disabled = true; varp34.disabled = true;
                                                                    varp123.disabled = true; varp124.disabled = true; varp234.disabled = true; varpaof.disabled = true, 
                                                                    varpca.disabled = true, varpad.disabled = true;

                                                                        varm3.disabled = true; varm4.disabled = true; 
                                                                        varm5.disabled = true; varm6.disabled = true; 
                                                                        
                                                            }else if(catg.value=="Insertion_ou_Reconversion_par_autoemploi"){
                                                                
                                                                varsc1.disabled = true; varsc2.disabled = true;
                                                                varsc6.disabled = true; varsc7.disabled = true; 
                                                                varsc8.disabled = true; varsc9.disabled = true; varsc10.disabled = true;  
                                                               
                                                                    varp1.disabled = true; varp2.disabled = true; varp4.disabled = true; varp12.disabled = true;  
                                                                    varp13.disabled = true; varp14.disabled = true; varp23.disabled = true;  varp24.disabled = true;  
                                                                    varp34.disabled = true; varp123.disabled = true; varp124.disabled = true; varp234.disabled = true; 
                                                                    varpaof.disabled = true,  varpca.disabled = true,   varpad.disabled = true;
                                                                       
                                                                        varm1.disabled = true; varm2.disabled = true; varm6.disabled = true;
                                                            }
                                                            else if(catg.value=="Renforcement_ou_Extension_Activite"){
                                                                
                                                                 varsc1.disabled = true; varsc2.disabled = true; varsc3.disabled = true; varsc4.disabled = true; 
                                                                  varsc5.disabled = true;  varsc8.disabled = true; varsc9.disabled = true; varsc10.disabled = true; 
                                                                 
                                                                    varp1.disabled = true;   varp2.disabled = true;   varp3.disabled = true;   varp4.disabled = true;    varp12.disabled = true;  
                                                                    varp13.disabled = true;  varp14.disabled = true;  varp23.disabled = true;  varp24.disabled = true;  
                                                                    varp34.disabled = true;  varp123.disabled = true; varp124.disabled = true; varp234.disabled = true;  varpad.disabled = true; 
                                                                    
                                                                      varm1.disabled = true; varm2.disabled = true; varm3.disabled = true;
                                                                      varm4.disabled = true; varm5.disabled = true;
                                                                      
                                                            }else{
                                                                
                                                                 varsc1.disabled = true; varsc2.disabled = true;
                                                                 varsc3.disabled = true; varsc4.disabled = true;
                                                                 varsc5.disabled = true; varsc6.disabled = true;
                                                                 varsc7.disabled = true; 
                                                                 
                                                                   
                                                                    varp1.disabled = true;   varp2.disabled = true;   varp3.disabled = true;   varp4.disabled = true;    varp12.disabled = true;  
                                                                    varp13.disabled = true;  varp14.disabled = true;  varp23.disabled = true;  varp24.disabled = true;   varpaof.disabled = true; 
                                                                    varp34.disabled = true;  varp123.disabled = true; varp124.disabled = true; varpca.disabled = true; 
                                                                    
                                                                   
                                                                        varm1.disabled = true; varm2.disabled = true;
                                                                        varm3.disabled = true; varm5.disabled = true;
                                                                                                                             
                                                            }
                                                        }
                                                    </script>
                                                    
                                        
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                <center><button type="submit" name="type2" class="at-btn">ENREGISTRER & RETOURNER</button>&nbsp;<button type="submit" name="type1" class="at-btn">ENREGISTRER & POURSUIVRE...</button></center>
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