<%-- 
    Document   : Admin
    Created on : 2 avr. 2019, 03:29:54
    Author     : M.DalandaBalde
--%>

<%@page import="dao.dataAccess"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="dbutil.JavaConnect"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="dao.dataAccess"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<!--
	Projection by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Page d'Acceuil</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="projection/assets/css/main.css" />
	</head>
	<body class="subpage">
<%

String ix = request.getParameter("id"); 
String idx = (String )request.getAttribute("id");
String tpe = (String )request.getAttribute("tpe");
%>
idx=<%=idx%>
tpe=<%=tpe%>
            <%
if("null".equals(idx)){idx = ix;}
String sql = "SELECT * FROM login where id=?";
if(tpe=="col"){sql = "SELECT * FROM login where id=?";}
         try {
             Connection con = new JavaConnect().createConnection();
             PreparedStatement pst;
             
           // String idx = "0";
              
            pst = con.prepareStatement(sql);
            pst.setString(1, idx);
            ResultSet rs = pst.executeQuery();
            
            
            
            if("col".equals(tpe)){
            while(rs.next()){
                     System.out.println("hello 4");
                           String id = rs.getString(1);
                           String Prenom = rs.getString(2);
                           String nom = rs.getString(3);
                           String identCol = rs.getString(4);
                %>


		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="../index.html" class="logo"><h2><strong>Badel</strong></h2></a>
					<nav id="nav">
						<a href="index.html">Acceuil</a>
						<a href="projection/ChoixFormulaire.html">Inscription</a>
						<%
                                                    String choixCon = ""; 
                                                if("null".equals(idx)){choixCon = "Se Connecter";}
                                                else{choixCon = "Déconnection";}
%>
						<a href="projection/login.html"><%=choixCon%></a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>Bienvenue Collectif <font color="#99ff33"><%=identCol%></font></h2>
					</header>

					<div class="container"> 
					<center>
					<div class="6u$ 12u$(medium)">

									<ul class="actions">
										<li><a href="projection/SelfConsClient.jsp?id=<%=idx%>&tpe=<%=tpe%>" class="button special fit small">Consuter vos informations</a></li>
										<!--<br>
                                                                                <li><a href="projection/AfficherClient.jsp" class="button special fit small">&nbsp;&nbsp;Liste Inscription Collective&nbsp;</a></li>
                                                                                -->
										<br>
										<li><a href="#" class="button special fit small">#</a></li>
									</ul>
								</div>
								</center>
								</div>
								


						</div>
					</div>
				</div>

			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">

					<h3>Get in touch</h3>

Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.
									<hr />

					<div class="copyright">
						&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.
					</div>

				</div>
			</footer>

		<!-- Scripts -->
			<script src="projection/assets/js/jquery.min.js"></script>
			<script src="projection/assets/js/skel.min.js"></script>
			<script src="projection/assets/js/util.js"></script>
			<script src="projection/assets/js/main.js"></script>

   
                        
                <%
                            }
            
}

            else{
            while(rs.next()){
                     System.out.println("hello 4");
                           String id = rs.getString(1);
                           String Prenom = rs.getString(2);
                           String nom = rs.getString(3);
                           String genre = rs.getString(4);
                %>


		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="../index.html" class="logo"><h2><strong>Badel</strong></h2></a>
					<nav id="nav">
						<a href="index.html">Acceuil</a>
						<a href="projection/ChoixFormulaire.html">Inscription</a>
						<%
                                                    String choixCon = ""; 
                                                if("null".equals(idx)){choixCon = "Se Connecter";}
                                                else{choixCon = "Déconnection";}
%>
						<a href="projection/login.html"><%=choixCon%></a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>Bienvenue <%=genre%> <font color="#99ff33"><%=nom%></font></h2>
					</header>

					<div class="container"> 
					<center>
					<div class="6u$ 12u$(medium)">

									<ul class="actions">
										<li><a href="projection/SelfConsClient.jsp?id=<%=idx%>&tpe=<%=tpe%>" class="button special fit small">Consuter vos informations</a></li>
										<!--<br>
                                                                                <li><a href="projection/AfficherClient.jsp" class="button special fit small">&nbsp;&nbsp;Liste Inscription Collective&nbsp;</a></li>
                                                                                -->
										<br>
										<li><a href="#" class="button special fit small">#</a></li>
									</ul>
								</div>
								</center>
								</div>
								


						</div>
					</div>
				</div>

			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">

					<h3>Get in touch</h3>

Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.
									<hr />

					<div class="copyright">
						&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.
					</div>

				</div>
			</footer>

		<!-- Scripts -->
			<script src="projection/assets/js/jquery.min.js"></script>
			<script src="projection/assets/js/skel.min.js"></script>
			<script src="projection/assets/js/util.js"></script>
			<script src="projection/assets/js/main.js"></script>

   
                        
                <%
                            }
                
            }
       } catch (SQLException ex) {
        }

                
%>

	</body>
</html>