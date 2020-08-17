<?php
    session_start();
    require_once("conn_db.php");
    extract($_POST);
    $mdphach=sha1($passw);
    
        $slqInsert="INSERT INTO users VALUES(null,'$pseudo','$email','$mdphach','$statut')";
        $sqlRequete=mysqli_query($conn,$slqInsert) or die(mysqli_error($conn));

        header("Location: ../pages/simple/accueil.php");


    
    
   
  // echo "Réussie!"; 
?>