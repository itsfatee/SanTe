<?php
    session_start();
    require_once("conn_db.php");
    extract($_POST);
    $id = $_SESSION['id']  ;
    $idUser = $_SESSION['id'] ; 
    $maintenant = new DateTime();
    $idArt = intval($idArticle) ;
    $dates = $maintenant->format('d/m/Y à H:i:s') ;
        $slqInsert="INSERT INTO commentaire VALUES(null,'$id','$idArt','$commentaire','$dates')";
        $sqlRequete=mysqli_query($conn,$slqInsert) or die(mysqli_error($conn));   
  // echo "Réussie!"; 
?>
<script type="text/javascript" >
  history.go(-2)
</script>