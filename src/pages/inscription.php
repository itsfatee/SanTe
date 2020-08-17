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



  <div class="bloc_form" style="width:70%;margin-left:auto;margin-right:auto;height:600px;background-color:aliceblue;border-radius:20px;margin-top:10%;">
  
  <form action="../script/inscription.php" method="POST">
        <p style="text-align: center;font-size:30px;color: #00669;font-family:arial;">I N S C R I P T I O N</p>
        <label style="width:100px;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-top:2%;">Pseudo</label><input type="text" name="pseudo" required="" style="width:100px;border-bottom:2px solid green; background-color:white;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-bottom:2%; ">
        
         <input type="hidden" name="statut" value="simple">   
        <label style="width:100px;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-top:2%;">E-mail</label><input type="email" name="email" required="" style="width:100px;border-bottom:2px solid green; background-color:white;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-bottom:2%; ">
        <label style="width:100px;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-top:2%;">Mot de passe</label><input type="password" name="passw" required="" style="width:100px;border-bottom:2px solid green; background-color:white;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-bottom:2%; ">
       <!-- <label style="width:100px;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-top:2%;">Statut</label>
        <select name="statut" style="width:100px;border-bottom:2px solid green; background-color:white;display:block;margin-left:auto;margin-right:auto;height:35px;width:350px;margin-bottom:2%; ">
            <option value="client" selected="">Client</option>
            <option value="transporteur">Transporteur</option>
        </select> -->
        <input type="submit" value="inscrire" id="se_connecter">
        
        </form>
 

</div>
  <!-- fin form -->

 
  <!--Debut Menu-->
  <div class="block" id="menu" style="position:fixed;top:0;width:100%;background-color:white;">
        <nav class="navbar" role="navigation" aria-label="main navigation" style="width:100%;">
            <div class="navbar-brand">
              <a class="navbar-item" href="index.php">
                <img src="../../src/images/logo.png" height="100" >
              </a>
              
              <!--Nav burger pour gerer le menu burger en responsive-->
            <script type="text/javascript" src="../src/js/menuBurger.js"></script>
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
                
                    <div class="navbar-end" style="float:right;display:block">
                    <div class="navbar-item">
                        <div class="buttons">
                        <a class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a href = "login.php" class="button is-light">
                            Log in
                        </a>
                        </div>
                    </div>
                    </div>


              </div>
          
              
          </nav>
    </div > <!--Fin menu-->
  
  </body>
</html>