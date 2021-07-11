<%-- 
    Document   : inscriptionCollective2
    Created on : 7 d?c. 2020, 02:58:53
    Author     : MSGB
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
        <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Inscription Collective 2</title>
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
                                        <a href="connection.html">Se d&eacute;cnnecter</a>
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
                    <h1 style="text-align: center;">Inscription Collective form = <%=formulaire_id%></h1>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="at-content">
                                <div class="at-contactusvone">
                                    <form class="at-formtheme at-formcontacus"  action="ServCol2" method="post">
                                        
                                        <div class="at-sectiontitleborder">
                                            <br/>
                                        <hr/>
                                            <h2><center>Veuillez remplir ce formulaire : <strong>&eacute;tape 2</strong> </center></h2>   
                                         <hr/>
                                        </div>
                                        <br/>
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h3><center>IDENTIFICATION PROFIL ECONOMIQUE DU COLLECTIF-DEMANDEUR </center></h3> 
                                              <h4><center><strong> Avez-vous des activit&eacute;s ou &eacute;quipements dans le Pays? </strong></center></h4>   
                                        <hr/>
                                         
                                         <div class="col-xs-12 col-sm-4 col-md-4 col-lg-12 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ1_equip" id="activ_equip_primaire" onchange="changeStatus();" required="Champ Obligatoire">
                                                <option value="">1- Avez-vous des activit&eacute;s ou &eacute;quipements dans le pays ?** -</option>
                                                <option value="OUI">OUI</option>
                                                <option value="NON">NON</option>
                                                </select>
                                            </div>
                                        </div>
                                        <fieldset>
                                               <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="activ_equip_region" id="region" required="Champ Obligatoire"> 
                                                        <option value="">- 2- Dans quelle r&eacute;gion avez-vous vos activit&eacute;s ?** -</option>
                                               
                                                        </select>
                                                    </div>
                                                </div>
                                                                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="activ_equip_depart" id="departement"  required="Champ Obligatoire"> 
                                                        <option value="">- 3- Dans quel d&eacute;partement avez-vous vos activit&eacute;s ?** -</option>
                                                                                                          
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                       <select class="form-control" name="activ_equip_commune" id="commune" required="Champ Obligatoire"> 
                                                        <option value="">- 4- Dans quelle commune avez-vous vos activit&eacute;s ?** -</option>
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
                                                            <input type="text" name="activ_equip_qtr" class="form-control" id="qtr_village" placeholder="- 5- Dans quel quartier ou village avez-vous des activités ?**" required>
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
                                        
                                        
                                        <script>
                                                        function changeStatus(){
                                                            var aepd = document.getElementById("activ_equip_primaire");
                                                            var aecd = document.getElementById("commune");
                                                            var aedd = document.getElementById("departement");
                                                            var aerd = document.getElementById("region");
                                                            var aqvd = document.getElementById("qtr_village");
                                                            if(aepd.value=="NON"){
                                                                 aecd.disabled=true; aedd.disabled=true;  aerd.disabled=true;  aqvd.disabled=true;  
                                                            }else{
                                                                 aecd.disabled=false; aedd.disabled=false;  aerd.disabled=false;  aqvd.disabled=false; 
                                                            }
                                                        }
                                                    </script>
                                         <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres communes ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="a_activ_equip" id="activ_equip_secondaire" onchange="changeStatus0();"  required> <!--Champ ajouté-->
                                                <option value="">1- Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres localités ?** -</option>
                                                <option value="OUI">OUI</option>
                                                <option value="NON">NON</option>
                                                </select>
                                            </div>
                                          </div>
                                                   <script>
                                                        function changeStatus0(){
                                                            var aaed = document.getElementById("activ_equip_secondaire");
                                                            var aeld1 = document.getElementById("a2_activ_equip");
                                                            var aeld2 = document.getElementById("a2_activ_equip_lieu");
                                                            if(aaed.value=="NON"){
                                                                aeld1.disabled=true;
                                                                 aeld2.disabled=true;
                                                            }else{
                                                                aeld1.disabled=false;
                                                                 aeld2.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                                    
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a2_activ_equip" id="a2_activ_equip" class="form-control" placeholder="2- Citez les activités secondaires menées par le Collectif ?"> <!--Champ ajouté-->
                                            </div>
                                        </div>  
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a2_activ_equip_lieu" id="a2_activ_equip_lieu" class="form-control" placeholder="3- Citez par ordre les localités secondaires ?" > <!--Champ ajouté-->
                                            </div>
                                        </div>  
                                       
                                        
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Quelle activit&eacute; &eacute;conomique primaire est men&eacute;e par le Collectif ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-12 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ_economique" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                <option value="">- Quelles activit&eacute;s &eacute;conomiques sont men&eacute;es par le Collectif ?** -</option>
                                                <option value="Epargne">Epargne</option>
                                                <option value="Production">Production</option>
                                                <option value="Transformation">Transformation</option>
                                                <option value="Distribution - Commerce">Distribution - Commerce</option>
                                                <option value="Transport et Manutention">Transport et Manutention</option>
                                                <option value="Autres services">Autres services</option>
                                                </select>
                                            </div>
                                        </div>
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Citez les activités secondaires menees par le collectif ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                                     <div class="col-xs-12 col-sm-4 col-md-4 col-lg-12 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ_eco_second" id="activ_second" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                <option value="">- Quelles activit&eacute;s &eacute;conomiques secondaires sont men&eacute;es par le Collectif ?** -</option>
                                                <option value="Epargne">Epargne</option>
                                                <option value="Production">Production</option>
                                                <option value="Transformation">Transformation</option>
                                                <option value="Distribution - Commerce">Distribution - Commerce</option>
                                                <option value="Transport et Manutention">Transport et Manutention</option>
                                                <option value="Autres services">Autres services</option>
                                                <option value="Pas Activites Secondaires">Pas d'Activites Secondaires</option>
                                                </select>
                                            </div>
                                        </div>
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres pays ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ_equip_etrang" id="activ_equip_secondaire" onchange="changeStatus0();"  required=> <!--Champ ajouté-->
                                                <option value="">1- Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres pays ?** -</option>
                                                <option value="OUI">OUI</option>
                                                <option value="NON">NON</option>
                                                </select>
                                            </div>
                                          </div>
                                                   <script>
                                                        function changeStatus0(){
                                                            var aaed = document.getElementById("activ_equip_secondaire");
                                                            var aeld1 = document.getElementById("activ_equip_localite1");
                                                            var aeld2 = document.getElementById("activ_equip_localite2");
                                                            if(aaed.value=="NON"){
                                                                aeld1.disabled=true;
                                                                 aeld2.disabled=true;
                                                            }else{
                                                                aeld1.disabled=false;
                                                                 aeld2.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                                    
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a1_equip_etrang" id="activ_equip_localite1" class="form-control" placeholder="2- Citez les activités secondaires menées par le Collectif dans les pays étrangers ?"> <!--Champ ajouté-->
                                            </div>
                                        </div>  
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a1_equip_etrang_lieu" id="activ_equip_localite2" class="form-control" placeholder="3- Citez par ordre les localités secondaires des pays étrangers ?" > <!--Champ ajouté-->
                                            </div>
                                        </div>  
                                       
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Quelle est la situation economique du Collectif ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                         
                                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_cap_social" class="form-control" placeholder=" 1- Quel est le montant Capital social ?**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="nbre_empl_perman" class="form-control" placeholder=" 2- Quel est le nombre d'employ&eacute;s permanents actuellement ?** " required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="nbre_empl_tempor" class="form-control" placeholder=" 3-  Quel est le nombre d'employ&eacute;s temporaires actuellement ?** " required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_eparg_mob" class="form-control" placeholder=" 4- Quel est le montant &eacute;agn&eacute; mobilis&eacute; ces trois (3ans) derni&egrave;res ann&eacute;es ? ">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_endettement" class="form-control" placeholder=" 5- Quel est le montant endettement ces trois (3ans) derni?res ann&eacute;es ? ">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_sub_recu" class="form-control" placeholder=" 6- Quel est le montant subvention re?u ces trois (3ans) derni?res ann&eacute;es ?">
                                                    </div>
                                                </div>
                                        
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h3><center>IDENTIFICATION PROFIL GOUVERNANCE DU COLLECTIF-DEMANDEUR</center></h3>
                                              <h4><center><strong>Quelle est la situation de la gouvernance du Collectif ?</strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="fonctionnalite" class="form-control" placeholder="1- Fonctionnalit&eacute; des organes?**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                                
                                                
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="prise_decision" class="form-control" placeholder="2- Mode prise de d&eacute;cision?**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                               
                                              <!--  <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="charte_relationnelle" class="form-control" placeholder="3- Disponibilit? d'une charte des membres ?">
                                                    </div>
                                                </div>
                                        -->
                                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="charte_relationnelle" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value=""> 3- Disponibilit&eacute; d'une charte des membres ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                              <!--  <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="plan_developpement" class="form-control" placeholder="4- Disponibilit? d'un plan de developpement ? ">
                                                    </div>
                                                </div>  
                                           -->
                                         <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="plan_developpement" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value=""> 4- Disponibilit&eacute; d'un plan de d&eacute;veloppement ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                              <!-- <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="manuel_procedure" class="form-control" placeholder="5- Disponibilit? d'un manuel de proc?dure ? ">
                                                    </div>
                                                </div> 
                                              -->
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="manuel_procedure" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value=""> 5- Disponibilit&eacute; d'un manuel de proc&eacute;dure ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            </fieldset>
                                            <br />
                                            <hr />

                                            <fieldset>
                                            <div class="row">
                                                      
                                                    <hr />
                                                    <h4><center><strong> Quelle Est La strat&eacute;gie partenariale Du Collectif ? </strong></center></h4> 
                                                    <hr />
                                        
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="part_princ_technique" class="form-control" placeholder="1- Principal Partenaire technique ?** -" required="Champ Obligatoire">
                                                    </div>
                                                </div>  
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="part_princ_financier" class="form-control" placeholder="2- Principal Partenaire financier ?** -" required="Champ Obligatoire">
                                                    </div>
                                                </div>     
                                                
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="app_reseau" id="app_reseau" onchange="changeStatus00();">
                                                        <option value="">3 - Appartenance &agrave; un r&eacute;seau ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                    <br />
                                                    
                                                      <script>
                                                        function changeStatus00(){
                                                            var ard = document.getElementById("app_reseau");
                                                            var nrd = document.getElementById("nature_reseau");
                                                            var lrd = document.getElementById("localite_reseau");
                                                            var drd = document.getElementById("departement_reseau");
                                                            if(ard.value=="NON"){
                                                                 nrd.disabled=true;
                                                                 lrd.disabled=true;
                                                                 drd.disabled=true;
                                                            }else{
                                                                nrd.disabled=false;
                                                                 lrd.disabled=false;
                                                                 drd.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                                    
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="nature_reseau" id="nature_reseau" class="form-control" placeholder="4- Nature R&eacute;seau ?** -" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                                 
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="localite_reseau" id="localite_reseau" class="form-control" placeholder="5- Localit&eacute; du R&eacute;seau ? -">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="departement_reseau" id="departement_reseau"class="form-control" placeholder="6- Departement R&eacute;seau ? -">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="nat_intern_reseau" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="">7- National ou International ?** -</option>
                                                        <option value="national">National</option>
                                                        <option value="international">International</option>
                                                        </select>
                                                    </div>
                                                </div> 
                                                <hr/>
                                            </fieldset>
                                        <fieldset>
                                            <hr/>
                                            <input type="hidden" value="<%=formulaire_id%>" name="formulaire_id">  
                                            <input type="hidden" value="<%=idx%>" name="id">  
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                    <center><button type="submit" class="at-btn">AJOUTER PIECES JOINTES</button>&nbsp;<button type="submit" class="at-btn">ENREGISTRER & RETOURNER...</button></center>
                                                </div>
                                            </div>
                                            <hr/>
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
                            <p>Recevez nos derni?res informations</p>
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
                            <p>Adresse: ZAC MBAO villa N?3 4i?me Etage Cit? Socidak 1 en face Brioche Dor?e, Rufisque Ouvert de 08H ? 18H</p>
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