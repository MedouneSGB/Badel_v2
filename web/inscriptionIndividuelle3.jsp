<%-- 
    Document   : inscriptionIndividuelle3
    Created on : 23 déc. 2020, 14:27:12
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
    <title>Inscription Individuelle 3</title>
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
                    <h1 style="text-align: center;">Inscription Individuelle 3 form = <%=formulaire_id%></h1>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="at-content">
                                <div class="at-contactusvone">
                                    <form class="at-formtheme at-formcontacus" action="ServInd3" method="post" >
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
                                            <h2><center>Veuillez remplir ce formulaire : <strong>Étape 3</strong> </center></h2>
                                         <hr/>
                                        </div>
                                        <br/>
                                            
                                        <fieldset>

                                  <!--          <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <input type="text" name="soutien_immediat" id="soutien_immediat"  class="form-control" placeholder=" Quel soutien désirez-vous disposer dans l'immédiat?**" required>
                                                </div>
                                            </div>
                                  -->
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="regi_commerce" id="regi_commerce" onchange="changeStatus0()" required>
                                                        <option value="">- Avez-vous un Régi de Commerce ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                    </select> 
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <input type="text" name="numero_regi_comm" id="numero_regi_comm" class="form-control" placeholder=" Et quelle est le numéro du REGI DE COMMERCE ?">
                                                </div>
                                            </div>
                                                     <script>
                                                        function changeStatus0(){
                                                            var rcd = document.getElementById("regi_commerce");
                                                            var nrcd = document.getElementById("numero_regi_comm");
                                                            if(rcd.value=="NON"){
                                                                nrcd.disabled=true;
                                                            }else{
                                                                nrcd.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                            
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="ninea" id="ninea" onchange=" changeStatus1()" required>
                                                        <option value="">- Avez-vous votre NINEA ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                    </select>   
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <input type="text" name="numero_ninea" id="numero_ninea" class="form-control" placeholder=" Et quelle est le numéro du NINEA ?">
                                                </div>
                                            </div>
                                            
                                                   <script>
                                                        function changeStatus1(){
                                                            var ninead = document.getElementById("ninea");
                                                            var nnd = document.getElementById("numero_ninea");
                                                            if(ninead.value=="NON"){
                                                                nnd.disabled=true;
                                                            }else{
                                                                nnd.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                            
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="reference_prof" onchange=" changeStatus2();" id="Ref_Prof" required>
                                                        <option value="">- Avez-vous d'autres références professionnelles ?** -</option>
                                                        <option value="carte_artisanat">Carte Artisanat</option>
                                                        <option value="agrement">Agrément</option>
                                                        <option value="licence">Licence</option>
                                                        <option value="autorisation">Autorisation</option>
                                                        <option value="autre">Autres à préciser</option>
                                                        <option value="NON">NON</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <input type="text" name="numero_reference_prof" id="num_ref_prof" class="form-control" placeholder=" Et quelle est le numéro du Référence ?">
                                                </div>
                                            </div>
                                                    
                                                     <script>
                                                        function changeStatus2(){
                                                            var rfd = document.getElementById("Ref_Prof");
                                                            var nrpd = document.getElementById("num_ref_prof");
                                                            if(rfd.value=="NON"){
                                                                nrpd.disabled=true;
                                                            }else{
                                                                nrpd.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                        <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="compte_bancaire_sfd" onchange="changeStatus3();"  id="compte_bancaire_sfd" required>
                                                        <option value="">- Disposez-vous d'un compte ?** -</option>
                                                        <option value="oui_banque">OUI dans une Banque</option>
                                                        <option value="oui_sfd">OUI dans une SFD</option>
                                                        <option value="NON">NON</option>
                                                    </select>
                                                </div>
                                        </div>
                                       <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <input type="text" name="nom_banque_sfd" id="nom_banque_sfd" class="form-control" placeholder="Si OUI dans quelle banque ou SFD ? ( - Ne pas remplir si NON - )">
                                                </div>
                                       </div>
                                        <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <input type="text" name="numero_compte_banque_sfd" id="numero_compte_banque_sfd" class="form-control" placeholder=" Et quelle est le numéro du Compte ? ( - Ne pas remplir si NON - )">
                                                </div>
                                            </div>  
                                                <script>
                                                        function changeStatus3(){
                                                            var cbsd = document.getElementById("compte_bancaire_sfd");
                                                            var nbsd = document.getElementById("nom_banque_sfd");
                                                            var ncbsd = document.getElementById("numero_compte_banque_sfd");       
                                                            if(cbsd.value=="NON"){
                                                                nbsd.disabled = true;
                                                                ncbsd.disabled = true;
                                                            }else{
                                                                 nbsd.disabled = false;
                                                                ncbsd.disabled = false;
                                                            }
                                                        }
                                                    </script>     
                                                    
                                       <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                        <div class="form-group">
                                            <select class="form-control" name="soutien_partenaire" onchange="changeStatus4();" id="soutien_partenaire"> <!--Ici parent a ete remplacé par Partenaire...-->
                                                <option value="">- Pour mener à bien votre projet avez-vous le soutien d'un partenaire ? -</option>
                                                <option value="OUI">OUI</option>
                                                <option value="NON">NON</option>
                                            </select>
                                        </div>
                                     </div>
                                                    <!-- Code Cript OK 
                                                     <script>
                                                        function changeStatus4(){
                                                            var status = document.getElementById("soutien_partenaire");
                                                            if(status.value=="NON"){
                                                                document.getElementById("ville_partenaire").style.visibility="hidden";
                                                                document.getElementById("pays_partenaire").style.visibility="hidden";
                                                            }else{
                                                                document.getElementById("ville_partenaire").style.visibility="visible";
                                                                 document.getElementById("pays_partenaire").style.visibility="visible";
                                                            }
                                                        }
                                                    </script>   
                                                    -->
                                                    <script>
                                                        function changeStatus4(){
                                                            var spd = document.getElementById("soutien_partenaire");
                                                            var vpd = document.getElementById("ville_partenaire");
                                                            var ppd = document.getElementById("pays_partenaire");   
                                                            
                                                            if(spd.value=="NON"){
                                                                vpd.disabled=true;
                                                                ppd.disabled=true;
                                                            }else{
                                                               vpd.disabled=false;
                                                                ppd.disabled=false;
                                                            }
                                                        }
                                                    </script>    
                                     <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                        <div class="form-group">
                                            <input type="text" name="ville_partenaire" id="ville_partenaire" class="form-control" placeholder="Si OUI dans quelle ville réside-t-il ? ">
                                        </div>
                                   </div>
                                   <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                    <div class="form-group">
                                        <input type="text" name="pays_partenaire" id="pays_partenaire" class="form-control" placeholder="Si OUI dans quel pays réside-t-il ? ">
                                    </div>
                               </div>
                                            <input type="hidden" value="<%=idx%>" name="id">  
                                            <input type="hidden" value="<%=formulaire_id%>" name="formulaire_id">           
                                        </fieldset>                                      
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                <center><button type="submit" class="at-btn">AJOUTER PIECES JOINTES</button>&nbsp;<button type="submit" class="at-btn">ENREGISTRER & RETOURNER</button></center>
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