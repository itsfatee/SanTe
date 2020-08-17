<?php
  session_start() ;
  if(!(isset($_SESSION['id']))){
    header("Location: login.php") ;
  }    

if(!isset($_GET['idCategorie'])){
  ?>
  <script type="text/javascript">
      location.assign('redirection.php') ; 
  </script>
  <?php
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
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/slide.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <link rel="stylesheet" href="../css/gotop.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
  </head>
  <body>
<div class="block" id="header" style="height:35%;"> 
</div>



<div id="main" class="block">
<script type="text/javascript">
var ouvre = "non" ;
 function oarticle(){
    
    var blocArticle= document.getElementById('pubarticle') ;

    if(ouvre=="non"){
      blocArticle.style.display="block" ;
      document.getElementById("bAjout").innerHTML="-" ;
      ouvre="oui" ;
    }else if(ouvre=="oui"){
      blocArticle.style.display="none" ;
      document.getElementById("bAjout").innerHTML="+" ;
      ouvre="non" ;
    }
    
}
</script>
<br>
<?php
  if($_SESSION['statut']=="professionnel"){
    ?>
    <button id="bAjout"  onclick="oarticle()" class="button is-link" style="display:block;width:25%;height:50px;margin-left:auto;margin-right:auto;">+</button>
  <?php  } ?>

<div id="pubarticle"  style="margin-left:auto;margin-right:auto;width:50%;display:none;border-top:2px solid blue;border-bottom:2px solid blue;border-radius:20px;margin-top:15px;">

     <form  action="../../../insert.php" method="POST" enctype="multipart/form-data">
        <legend style="text-align:center;font-weight:bold;color:blue;font-size:25px;">Publication Article</legend><br>
         <label for="titre">Titre </label><input type="text" require id="titre"  style="width:30%;" name="titre">
          
          <div class="select" style="float:right;" >
          
            <select name="categorie"> 
            <?php
              $bdd = new PDO('mysql:host=localhost;dbname=dbsante;charset=utf8', 'root', '');
              $requete = $bdd->query("SELECT * FROM categorie") ; 
              while($donnees = $requete->fetch()){
                ?>
              <option selected ><?php echo $donnees['nomCategorie'] ; ?></option>
              <?php } ?>
            </select>
            </div>

           <div class="file is-boxed" style="margin-top:2%;">
              <label class="file-label">
                <input class="file-input" type="file" name="fileToUpload">
                <span class="file-cta">
                  <span class="file-icon">
                    <i class="fas fa-upload"></i>
                  </span>
                  <span class="file-label">
                    Choisir image
                  </span>
                </span>
              </label>
          </div>
          <div class="field" style="margin-top:2%;">
              <div class="control">
                <textarea class="textarea is-primary" placeholder="contenue article"  name="contenu"></textarea>
              </div>
          </div>
          <input type="submit" name="ajouter" style="margin-top:2%;margin-left:auto;margin-right:auto;width:12%;display:block;margin-bottom:1%;" class="button is-success" value="Publier">
    </form>      
      </div>
        <!-- fin publier article  et debut   
        
              ARTICLE
-->  <?php
         $count = false ;
        $idCategorie = $_GET['idCategorie'] ;
        $bdd= new PDO ('mysql:host=localhost;dbname=dbsante','root','');
        $requete = $bdd->query('SELECT * FROM article,categorie,users where categorie.idCategorie="'.$idCategorie.'" AND article.idCategorie=categorie.idCategorie  AND article.idUser=users.idUser') ; 
        while($donnees = $requete->fetch()){
        $count = true ;
          ?>
      
        <button class="button is-light" style="display:block;margin-left:auto;margin-right:auto;margin-top:2%;"><?php echo $donnees['nomCategorie'] ; ?></button>
        <div class="box" style="width:60%;margin-left:auto;margin-right:auto;margin-top:0.5%;">
                  
            <article class="media">
              <div class="media-left" style="display:block;width:50%;">
                <figure class="image is-256x256" >
                  <img src="../../uploads/<?php echo $donnees['images'] ;?>"  alt="Image">
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
                <nav class="level is-mobile">
                  <div class="level-left">
                    
                  <a href="leCommentaire.php?idArticle=<?php echo $donnees['idArticle'] ; ?>"><button class="button is-link"   onclick="aComment()">Commentaire</button></a>
                    
                  </div>
                </nav>
              </div>

            </article>
        </div>
            <?php 
               }
           ?>
               <!-- test commentaire -->
        <script type="text/javascript">
        
        var commentC ; 
        function aComment(){
          commentC =   document.getElementById("commentM");
          commentC.className = "modal is-active";
          location.assign("accueil.php") ; 
          
        }

        function cancel(){
          commentC =   document.getElementById("commentM");
          if(document.getElementById("commentaire").value=="" ){
            commentC.className = "modal";
          }
          else{
            if(confirm("Voulez-vous vraiment Quitter ??") ){

              commentC.className = "modal";
            }  
           }
        }
        </script>
            
                <!--fin test commentaire -->


      </div> <!-- Fin main -->

  

            <!-- Footer-->
            <div class="block" id="pied_page">
                <div class="block" id="block_footer_1" style="margin-bottom:0;">
                    <ul>
                      <lh class="title is-3">Contact</lh>
                      <a href="mailto:contac@sante.sn"><li><img src="../images/icones/icons8-email-24.png" alt="">contact@sante.sn</li></a>
                      <li><img src="../images/icones/icons8-phone-24.png" alt="">33 000 00 00</li>
                      <li><img src="../images/icones/icons8-home-24.png" alt="home">Senegal, dakar, Liberte<br></li>
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
            <script src="../js/gotop.js"></script>

  <!--Debut Menu-->
  <div class="block" id="menu" style="position:fixed;top:0;width:100%;background-color:white;">
        <nav class="navbar" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
              <a class="navbar-item" href="index.php">
                <img src="../images/logo.png" height="100" >
              </a>
              
              <!--Nav burger pour gerer le menu burger en responsive-->
            <script type="text/javascript" src="../js/menuBurger.js"></script>
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
                  <a class="navbar-link">
                    Catégories
                  </a>
          
                  <div class="navbar-dropdown"  id="drop_1">
                  <?php 
                  $bdd= new PDO ('mysql:host=localhost;dbname=dbsante','root','');
                  $requete = $bdd->query("SELECT * FROM categorie") ; 
                  while($donnees = $requete->fetch()){      
                    ?>
                    <a class="navbar-item" href="categorie.php?idCategorie=<?php echo $donnees['idCategorie'] ; ?>">
                    <?php echo $donnees['nomCategorie'] ?>
                  </a>
                  <?php
                  }
                  ?>
                    
                         
                    <hr class="navbar-divider">
                    
                  </div>
                    <!--################################################-->

                </div>
                <a class="navbar-item" href="categorie.php?idCategorie=5">
                    Annonces
                </a>
                <a class="navbar-item" href="../../forum.php">
                    Forum
                </a>
              </div>
              <div class="navbar-end">
          <div class="navbar-item">
            <div class="buttons">
              <h2 class="button is-primary">
                <strong><?php echo $_SESSION["pseudo"] ; ?></strong>
              </h2>
              <a class="button is-danger" href="../script/logout.php">
                log out
              </a>
              
            </div>
          </div>
        </div>
              
          </nav>
    </div > <!--Fin menu-->
  </body>
</html>