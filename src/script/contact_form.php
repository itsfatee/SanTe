<?php
    session_start();
    require_once("conn_db.php");
    $id_ann=$_SESSION["id_ann"];
    $id_cli=$_SESSION["id"];
    extract($_POST);
    $sql="INSERT INTO contacter VALUES(null,'$id_cli','$id_ann',$cni,'$prenom_dest','$nom_dest','$tel_dest','$civilite_dest','$mail_dest')";
    $sqlRequete=mysqli_query($conn,$sql) or die(mysqli_error($conn));
    header("Location: ../pages/client/annonce.php");
?>