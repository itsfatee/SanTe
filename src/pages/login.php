<?php
  session_start() ;
  if(isset($_SESSION['statut']) && $_SESSION['statut']=='simple'){
    header("Location: simple/accueil.php") ;
  }
  elseif(isset($_SESSION['statut']) && $_SESSION['statut']=='pro'){
    header("Location: pro/accueil.php") ;
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


  <!-- debut form-->
  <div class="bloc_form" style="width:70%;margin-left:auto;margin-right:auto;height:400px;background-color:aliceblue;border-radius:20px;margin-top:10%;">
  <form action="../script/connexion.php" method="POST">
        <p style="text-align: center;font-size:30px;color: #00669;font-family:arial;">C O N N E X I O N</p>
        <label style="width:100px;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-top:2%;">Votre email</label><input type="email" name="email" required="" style="width:100px;border-bottom:2px solid green; background-color:white;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-bottom:2%; ">
        <label style="width:100px;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-top:2%;">Mot de passe</label><input type="password" name="passw" required="" style="width:100px;border-bottom:2px solid green; background-color:white;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-bottom:2%; ">
      <!--  <select name="statut">
            <option value="client" selected="">Client</option>
            <option value="transporteur">Transporteur</option>
        </select> 

        -->
        <input type="submit" value="Se Connecter" id="se_connecter">
        <p style="color: black;text-align:center;">Vous n'avez pas de compte ?</p>
        <a href="inscription.php"><p style="text-align:center;">Inscription</p></a>
        </form>

    </div>



  <!-- fin form-->
 
   <!--Debut Menu-->
   <div class="block" id="menu" style="position:fixed;top:0;width:100%;background-color:white;">
        <nav class="navbar" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
              <a class="navbar-item" href="index.php">
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
                <a class="navbar-item" href="../../index.php">
                  Accueil 
                </a>
                <div class="navbar-item has-dropdown is-hoverable">
                  <a class="navbar-link" href="categories.php?i=1">
                    Catégories
                  </a>
          
                  <div class="navbar-dropdown"  id="drop_1">
                    <a class="navbar-item" href="categories.php?i=1">
                       c1
                    </a>
                    
                    <a class="navbar-item" href="categories.php?i=2">
                      c2
                    </a>
                    <a class="navbar-item" href="categories.php?i=3">
                      c3
                    </a>
                    <a class="navbar-item" href="categories.php?i=4">
                      c4
                    </a>
                    <a class="navbar-item" href="categories.php?i=5">
                      c5
                    </a>
                    
                   
                    <hr class="navbar-divider">
                    
                  </div>
                    <!--################################################-->

                </div>

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