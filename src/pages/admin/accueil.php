<?php
session_start() ;
if(!(isset($_SESSION['id']))){
  header("Location: ../../../index.php") ;
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
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/slide.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="../../css/gotop.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
  </head>
  <body>

           


            
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
                  <a class="navbar-link" href="../categorie.php?i=1">
                    Catégories
                  </a>
          
                  <div class="navbar-dropdown"  id="drop_1">
                  <a class="navbar-item" href="../categorie.php?i=1">
                       Nutrition
                    </a>
                    
                    <a class="navbar-item" href="../categorie.php?i=2">
                      Sport
                    </a>
                    <a class="navbar-item" href="../categorie.php?i=3">
                      Dermatologie
                    </a>
                    <a class="navbar-item" href="../categorie.php?i=4">
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


  

            
  <!--Debut Menu-->
  <div class="block" id="menu" style="position:fixed;top:0;width:100%;background-color:white;">
        <nav class="navbar" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
              <a class="navbar-item" href="accueil.php">
                <img src="../../images/logo.png" height="100" >
              </a>
              
              <!--Nav burger pour gerer le menu burger en responsive-->
            <script type="text/javascript" src="../../js/menuBurger.js"></script>
            <!---->
              <a role="button" class="navbar-burger" onclick="mask()"  aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
              </a>
            </div>
            

            <div id="navbarBasicExample" class="navbar-menu">
              <div class="navbar-start">
                <a class="navbar-item" href="accueil.php">
                  Accueil 
                </a>
                <div class="navbar-item has-dropdown is-hoverable">
                  <a class="navbar-link" href="../categorie.php?i=1">
                    Catégories
                  </a>
          
                  <div class="navbar-dropdown"  id="drop_1">
                    <a class="navbar-item" href="../categorie.php?i=1">
                       Nutrition
                    </a>
                    
                    <a class="navbar-item" href="../categorie.php?i=2">
                      Sport
                    </a>
                    <a class="navbar-item" href="../categorie.php?i=3">
                      Dermatologie
                    </a>
                    <a class="navbar-item" href="../categorie.php?i=4">
                      Psychologie
                    </a>
                    
                    
                   
                    <hr class="navbar-divider">
                    
                  </div>
                    <!--################################################-->

                </div>
                <a class="navbar-item" href="../categorie.php?i=5">
                    Annonces
                </a>
                <a class="navbar-item" href="../apropos.php">
                    A Propos
                </a>
              </div>
              <div class="navbar-end">
          <div class="navbar-item">
            <div class="buttons">
              <h2 class="button is-primary">
                <strong><?php echo $_SESSION["pseudo"] ; ?></strong>
              </h2>
              <a class="button is-danger" href="../../script/logout.php">
                Log out
              </a>
              
            </div>
          </div>
        </div>
              
          </nav>
    </div > <!--Fin menu-->
  </body>
</html>