<?php
  session_start() ;
  if(isset($_SESSION['statut']) && $_SESSION['statut']=='simple'){
    header("Location: src/pages/simple/accueil.php") ;
  }
  elseif(isset($_SESSION['statut']) && $_SESSION['statut']=='pro'){
    header("Location: src/pages/pro/accueil.php") ;
  } 
   elseif(isset($_SESSION['statut']) && $_SESSION['statut']=='admin'){
    header("Location: src/pages/admin/accueil.php") ;
  }

?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sante</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/slide.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="src/css/gotop.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" rel="stylesheet">

  </head>
  <body>
<div  id="header" style="height:35%;">  
            <div >
            <form action="">
              <br><br><br><br>
              <input class="input is-success" type="text" placeholder="ecrire ici" style="margin-top:6%; margin-left:auto; margin-right: auto;width:30%;display:block;border-radius:60px;">
            <button class="button is-success" style="margin-top:1%; margin-left:auto; margin-right: auto;width:10%;display:block;">Rechercher</button>
            </form>
            </div> 
</div>

<div id="main" class="block">
        
            <!--  -->
     <?php
     $bdd = new PDO('mysql:host=localhost;dbname=dbsante;charset=utf8', 'root', '');
     $requete = $bdd->query("SELECT * FROM article,categorie,users where article.idCategorie=categorie.idCategorie AND article.idUser=users.idUser") ; 
        while($donnees = $requete->fetch()){
          ?>
      
        <button class="button is-light" style="display:block;margin-left:auto;margin-right:auto;margin-top:2%;"><?php echo $donnees['nomCategorie'] ; ?></button>
        <div class="box" style="width:60%;margin-left:auto;margin-right:auto;margin-top:0.5%;">
                  
            <article class="media">
              <div class="media-left" style="display:block;width:50%;">
                <figure class="image is-256x256" >
                  <img src="uploads/<?php echo $donnees['images'] ;?>"  alt="Image">
                </figure>
              </div>
              <div class="media-content">
              <div class="content">
         <p>
            <strong><?php echo $donnees['pseudo'] ; ?></strong> <small><?php echo $donnees['dates'] ; ?></small> 
            <br>
         </p>
         <p>
            <h3 style="text-align : center ; "><strong><?php echo $donnees['titreArticle'] ; ?></strong></h3>
         </p>
         <p id="test">
            <?php 
            $arr = $donnees['contenuArticle'] ;
            $ligne = 0 ;
            for($i = 0 ; $i <strlen($donnees['contenuArticle']) ; $i++){
              echo $arr[$i] ;
              $ligne++ ;
              if($ligne == 100){
                $ligne = 0 ;
                echo "</br>" ;
              }
            }
           ?>
        
        </p>
              </div>

            </article>
        </div>
            <?php 
               }
           ?>
               <!-- test commentaire -->
    
         
          </div> <!--Fin section articles-->
      </div> <!-- Fin main -->

            <!-- Footer-->
            <div class="block" id="pied_page">


                <div class="block" id="block_footer_1" style="margin-bottom:0;">
                    <ul>
                      <lh class="title is-3">Contact</lh>
                      <a href="mailto:contac@sante.sn"><li><img src="src/images/icones/icons8-email-24.png" alt="">contact@sante.sn</li></a>
                      <li><img src="src/images/icones/icons8-phone-24.png" alt="">33 000 00 00</li>
                      <li><img src="src/images/icones/icons8-home-24.png" alt="home">Senegal, dakar, Liberte<br></li>
                      
                    </ul>

                </div>
                <div class="block" id="block_footer_2" style="margin-bottom:0;">
                    <ul>
                        <lh class="title is-3">Suivez nous </lh>
                       <li> <a href=""><i class="fab fa-facebook" style="color:white;font-size:50px;margin:3px;"></i></a>
                        <a href=""><i class="fab fa-twitter" style="color:white;font-size:50px;margin:3px;"></i></a>
                        <a href=""><i class="fab fa-instagram" style="color:white;font-size:50px;margin:3px;"></i> </li></a>
                        
                      </ul>

                </div>
                <div class="block" id="block_footer_3" style="margin-bottom:0;">
                    <ul>
                        <lh class="title is-3">A propos</lh>
                        <a href="#" style="color: aliceblue;" ><li >Univers De La Performance</li></a>
                        <a href="#" style="color: aliceblue;"><li>Entreprendre Durablement</li></a>
                        <a href="#" style="color: aliceblue;" ><li>Nos Valeurs et Engagements</li></a>
                        <a href="#" style="color: aliceblue;" ><li>Creativeté Communication </li></a>
                        
                        
                      </ul>
                
                </div>
            </div>

            <div id="topBtn"><i class="fas fa-arrow-circle-up"></i></div>
            <script src="src/js/gotop.js"></script> 


            
  <!--Debut Menu-->
  <div class="block" id="menu" style="position:fixed;top:0;width:100%;background-color:white;">
        <nav class="navbar" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
              <a class="navbar-item" href="index.php">
                <img src="src/images/logo.png" height="100" >
              </a>
              
              <!--Nav burger pour gerer le menu burger en responsive-->
            <script type="text/javascript" src="src/js/menuBurger.js"></script>
            <!---->
              <a role="button" class="navbar-burger" onclick="mask()"  aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
              </a>
            </div>
            

            <div id="navbarBasicExample" class="navbar-menu">
              <div class="navbar-start">
                <a class="navbar-item" href="index.php">
                  Accueil 
                </a>
                <div class="navbar-item has-dropdown is-hoverable">
                  <a class="navbar-link" href="src/pages/categorie.php?i=1">
                    Catégories
                  </a>
          
                  <div class="navbar-dropdown"  id="drop_1">
                  <a class="navbar-item" href="src/pages/categorie.php?i=1">
                       Nutrition
                    </a>
                    
                    <a class="navbar-item" href="src/pages/categorie.php?i=2">
                      Sport
                    </a>
                    <a class="navbar-item" href="src/pages/categorie.php?i=3">
                      Dermatologie
                    </a>
                    <a class="navbar-item" href="src/pages/categorie.php?i=4">
                      Psychologie
                    </a>
                    
                   
                    <hr class="navbar-divider">
                    
                  </div>
                    <!--################################################-->

                </div>

                <a class="navbar-item" href="src/pages/apropos.php">
                    A Propos
                </a>
              </div>
              <div class="navbar-end">
          <div class="navbar-item">
            <div class="buttons">
              <a class="button is-primary" href="src/pages/inscription.php">
                <strong>Sign up</strong>
              </a>
              <a class="button is-light" href="src/pages/login.php">
                Log in
              </a>
            </div>
          </div>
        </div>
              
          </nav>
    </div > <!--Fin menu-->
  
  </body>
</html>