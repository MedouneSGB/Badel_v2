<%-- 
    Document   : Principal
    Created on : 21 nov. 2020, 23:45:07
    Author     : user
--%>

<%@page import="dao.dataAccess"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="dbutil.JavaConnect"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>



<!doctype html>

<html class="no-js" lang="">


    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Se connecter</title>
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
        <script>
            function myFunction() {
                var x = document.getElementById("myDIV");
                var y = document.getElementById("myAff");

                if (x.style.display === "none") {
                    x.style.display = "block";
                } else {
                    x.style.display = "none";
                }

                if (y.style.display === "block") {
                    y.style.display = "none";
                } else {
                    y.style.display = "block";
                }
            }
            function myFunction1() {
                var a = document.getElementById("myDIV");
                var b = document.getElementById("myDIVIns");

                if (a.style.display === "none") {
                    a.style.display = "block";
                } else {
                    a.style.display = "none";
                }

                if (b.style.display === "block") {
                    b.style.display = "none";
                } else {
                    b.style.display = "block";
                }
            }
        </script>
    </head>

    <body>

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
                    pst.setString(1, idx);
                    ResultSet rs = pst.executeQuery();

                    while (rs.next()) {
                        System.out.println("hello 4");
                        String id = rs.getString(1);
                        String Prenom = rs.getString(2);
                        String nom = rs.getString(3);
                        String Civilite = rs.getString(4);
            %>
            <main id="at-main" class="at-main at-haslayout">

                <div class="clearfix"></div>
                <section class="at-sectionspace at-haslayout">
                    <div class="container">
                        <h1 style="text-align: center;">Bonjour <%=Civilite%> <%=nom%></h1>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="at-content">
                                    <div class="at-contactusvone">
                                        <div id="myDIV" class="row">
                                            <br>  
                                            <br>
                                            <center><button style="width: 300px; height: 70px" onclick="myFunction()" type="submit" class="at-btn" >Afficher les Inscriptions</button></center>

                                            <br>
                                                <center><button style="width: 300px; height: 70px" onclick="myFunction1()" type="submit" class="at-btn">Faire une Inscription</button></center>
                                          
                                            <br>
                                            <form action="connection.html" method="post">
                                                <center><button style="width: 300px; height: 70px" type="submit" class="at-btn">Se Déconnecter</button></center>
                                            </form>


                                        </div>
                                        <div id="myAff" class="row" style="display: none">
                                            <br>  
                                            <br>
                                            <center><button style="width: 320px; height: 70px" onclick="myFunction()" type="submit" class="at-btn" >Menu Pricipal</button></center>

                                            <br>
                                            <form  action="AfficherDemandeInd.jsp" method="post">
                                                <input type="hidden" value="<%=idx%>" name="id">  
                                                <center><button style="width: 320px; height: 70px" type="submit" class="at-btn" > Afficher Inscription Individuelle</button></center>
                                            </form>
                                            <br>
                                            <form action="AfficherDemandeCol.jsp" method="post">
                                                <input type="hidden" value="<%=idx%>" name="id">
                                                <center><button style="width: 320px; height: 70px" type="submit" class="at-btn">Afficher Inscription Collective</button></center>
                                            </form>
                                        </div>
                                                
                                        <div id="myDIVIns" class="row" style="display: none">
                                            <br>  
                                            <br>
                                            <center><button style="width: 300px; height: 70px" onclick="myFunction1()" type="submit" class="at-btn" >Menu Pricipal</button></center>

                                            <br>
                                            <form  action="inscriptionIndividuelle1.jsp" method="post">
                                                <input type="hidden" value="<%=idx%>" name="id">  
                                                <center><button style="width: 300px; height: 70px" type="submit" class="at-btn" >Inscription Individuelle</button></center>
                                            </form>
                                            <br>
                                            <form action="inscriptionCollective1.jsp" method="post">
                                                <input type="hidden" value="<%=idx%>" name="id">
                                                <center><button style="width: 300px; height: 70px" type="submit" class="at-btn">Inscription Collective</button></center>
                                            </form>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
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
                                                <li> ix = <%=ix%> </li>
                                                <li> idx = <%=idx%> </li>
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