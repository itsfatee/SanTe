<?php
    session_start();
    require_once("conn_db.php");
    extract($_POST);
    $sql="DELETE FROM annonce WHERE id_annonce=$id_annonce";
    $sqlRequete=mysqli_query($conn,$sql) or die(mysqli_error($conn));
    $sql="DELETE FROM trajet WHERE id_trajet=$id_trajet";
    $sqlRequete=mysqli_query($conn,$sql) or die(mysqli_error($conn));
    header("Location: ../pages/transporteur/annonce.php");
?>