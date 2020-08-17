<?php
session_start() ; 
    if( $_SESSION["statut"]==='simple' ){
        header('Location: simple/accueil.php') ; 
    }
    elseif($_SESSION["statut"]==='pro'){
        header('Location: pro/accueil.php') ; 
    }
    else{
        header('Location: ../../index.php') ; 
    }
?>