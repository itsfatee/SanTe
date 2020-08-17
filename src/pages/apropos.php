<?php
session_start() ;
if(!(isset($_SESSION['id']))){
  header("Location: ../../index.php") ;
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
    <link rel="stylesheet" href="../../src/css/main.css">
    <link rel="stylesheet" href="../../src/css/slide.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="../../src/css/gotop.css">
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    
  
      
  </head>
  <body>

  <div class="block" id="header" style="height:35%;">  
            <div class="block" >
            <form action="">
              <br><br><br><br>
              <input class="input is-success" type="text" placeholder="ecrire ici" style="margin-top:6%; margin-left:auto; margin-right: auto;width:30%;display:block;border-radius:60px;">
            <button class="button is-success" style="margin-top:1%; margin-left:auto; margin-right: auto;width:10%;display:block;">Rechercher</button>
            </form>
            </div> 
</div><br><br><br>
<h1 style="text-align:center; font-size:25px"> About us</h1>
  


 
   <!--Debut Menu-->
   <div class="block" id="menu" style="position:fixed;top:0;width:100%;background-color:white;">
        <nav class="navbar" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
              <a class="navbar-item" href="accueil.php">
                <img src="../../src/images/logo.png" height="100" >
              </a>
              
              <!--Nav burger pour gerer le menu burger en responsive-->
            <script type="text/javascript" src="../../src/js/menuBurger.js"></script>
            <!---->
              <a role="button" class="navbar-burger" onclick="mask()"  aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
              </a>
            </div>
            

            <div id="navbarBasicExample" class="navbar-menu">
              <div class="navbar-start">
                <a class="navbar-item" href="redirection.php">
                  Accueil 
                </a>
                <div class="navbar-item has-dropdown is-hoverable">
                  <a class="navbar-link" href="categorie.php?i=1">
                    Catégories
                  </a>
          
                  <div class="navbar-dropdown"  id="drop_1">
                  <a class="navbar-item" href="categorie.php?i=1">
                       Nutrition
                    </a>
                    
                    <a class="navbar-item" href="categorie.php?i=2">
                      Sport
                    </a>
                    <a class="navbar-item" href="categorie.php?i=3">
                      Dermatologie
                    </a>
                    <a class="navbar-item" href="categorie.php?i=4">
                      Psychologie
                    </a>
                    
                    
                   
                    <hr class="navbar-divider">
                    
                  </div>
                    <!--################################################-->

                </div>


                <a class="navbar-item" href="categorie.php?i=5">
                    Annonces
                </a>
                <a class="navbar-item" href="apropos.php">
                    A Propos
                </a>
                
              </div>
          

              
          </nav>
          
    </div > 
    
    <!--Fin menu-->

    <!-- debut formulaire-->

    

    <!-- fin formulaire -->
  
  </body>
</html>