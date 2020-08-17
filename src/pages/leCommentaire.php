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
            history.go(-1)          }
          else{
            if(confirm("Voulez-vous vraiment Quitter ??") ){
                history.go(-1)            }  
           }
        }
        </script>
               
                <!--fin test commentaire -->


      </div> <!-- Fin main -->
      <div class="modal is-active" id="commentM"  >
  <div class="modal-background" onclick="cancel()"></div>
  <div class="modal-card">
    <header class="modal-card-head">
      <p class="modal-card-title" >Commentaire</p>
      <button class="delete" onclick="cancel()" aria-label="close"></button>
    </header>
    <section class="modal-card-body">
        <?php
            $idArticle = $_GET['idArticle'] ; 
            $bdd= new PDO ('mysql:host=localhost;dbname=dbsante','root','');
            $requete = $bdd->query('SELECT * FROM article,commentaire,users where commentaire.idArticle = article.idArticle and article.idUser=users.idUser AND article.idArticle = "'.$idArticle.'" ');
            while($comment = $requete->fetch()){
        ?>
    <h6 style="display:inline"> <strong><?php echo $comment['pseudo'] ;  ?> &nbsp</strong><small style="font-size:12px;"><?php echo "publié le : ". $comment['dateCommentaire'] ; ?> </small></h6><br>
    <p><?php echo $comment['contenu'] ;  ?> </p>
    <hr style="border:1px solid gray;opacity:0.25">
    <?php
        }
    ?>
    
      <!-- Content ... -->
      <div class="control">
      <form method="POST" action="../script/ajoutComment.php">
         <textarea class="textarea is-primary" id="commentaire" placeholder="commentaire"  name="commentaire" cols="10" rows="2"></textarea>
        <input type="hidden" name="idArticle" value="<?php echo $_GET['idArticle'] ; ?>" >
        <footer class="modal-card-foot">
        <a href="../script/ajoutComment.php?"> <button class="button is-success" >envoyer</button></a>
     </form>
     <button class="button" onclick="cancel()">Cancel</button>
     </div>
     </section>
    </footer>
  </div>
</div>
        
  </body>
</html>