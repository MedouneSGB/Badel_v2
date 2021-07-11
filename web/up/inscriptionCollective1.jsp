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
                                <li class="at-instagram"><a href="https://www.youtube.com/badel"><i class="fa fa-youtube"></i></a></li>
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
                    <h1 style="text-align: center;">Inscription Collective</h1>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="at-content">
                                <div class="at-contactusvone">
                                    <form class="at-formtheme at-formcontacus" method="post" action="ServCol1">
                                        
                                        <div class="at-sectiontitleborder">
                                            <br>
                                            <h2><center>Veuillez remplir ce formulaire : <strong>étape 1</strong> </center></h2>
                                        </div>

                                        <fieldset>
                                            <div class="row">
                                            <hr/>
                                                <h3><center>Quel est votre titre dans le Collectif ? </center></h3>  
                                            <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="titre" id="demo-category" onchange="changementType( this.value);">
                                                        <option value="">- Quel est votre titre dans le Collectif -</option>
                                                        <option value="responsable_morale">Responsable Moral</option>
                                                        <option value="responsable_delegue">Responsable délégué</option>
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
                                                        <select class="form-control" name="nat_juridique" id="demo-category" onchange="changementType( this.value);">
                                                        <option value="">- Nature Juridique -</option>
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
                                     <h3><center>Quelle est la dénomination du Collectif ? </center></h3>  
                                <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="denomination" class="form-control" placeholder="Dénomination">
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>  
                                <hr/>
                                    <h3><center>La reconnaissance juridique du Collectif ? </center></h3>  
                                <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="reconnaisance_juridique" id="demo-category" onchange="changementType( this.value);">
                                                        <option value="">- Avez-vous une reconnaissance juridique -</option>
                                                        <option value="oui">OUI</option>
                                                        <option value="non">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                <hr/>
                                    <h3><center>Oé se trouve le siége social du Collectif ? </center></h3>  
                                <hr/>
                                                <br/>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="pays" class="form-control" placeholder="1- Dans quel pays se trouve le Collectif ? ">
                                                    </div>
                                                </div>   
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="region" class="form-control" placeholder="2- Dans quelle région se trouve le Collectif ? ">
                                                    </div>
                                                </div>  
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="departement" class="form-control" placeholder="3- Dans quel département se trouve le Collectif ? ">
                                                    </div>
                                                </div>  
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="commune" class="form-control" placeholder="4- Dans quelle commune se trouve le Collectif ? ">
                                                    </div>
                                                </div>   
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="hors_senegal" class="form-control" placeholder="5- Précisez si hors Sénégal ? ">
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                <hr/>
                                                <h3><center>Quelle est la date de création du Collectif ? </center></h3>  
                                <hr/>   
                                                <div class="col-xs-12 col-sm-4 col-md-10 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <input type="date" name="date_creation" class="form-control" placeholder="Date de création du Collectif.">
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                <hr/>
                                    <h3><center>Combien de membres compte le Collectif ? </center></h3>  
                                <hr/>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="total_membre" class="form-control" placeholder="1- Combien de membres compte le Collectif ?">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="total_homme" class="form-control" placeholder="2- Combien d'hommes dans le Collectif ?">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="total_femme" class="form-control" placeholder="3- Combien de femmes dans le Collectif ?">
                                                    </div>
                                                </div>
                                            </fieldset>
                                        <fieldset>  
                                            <input type="hidden" value="<%=idx%>" name="id">  
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                    <center><button type="submit" name="type2" class="at-btn">ENREGISTRER & RETOURNER...</button>&nbsp;<button type="submit" name="type1" class="at-btn">ENREGISTRER & SUIVRE...</button></center>
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