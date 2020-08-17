<?php
session_start();
require_once("conn_db.php");
$id_session=$_SESSION["id"];
extract($_POST);

$sql="INSERT INTO trajet VALUES(null,'$pays_dest','$lieu_dep','$lieu_arr','$date_dep','$date_arr')";
$sqlRequete=mysqli_query($conn,$sql) or die(mysqli_error($conn));
$sql="SELECT id_trajet FROM trajet WHERE id_trajet=(SELECT max(id_trajet) FROM trajet)";
$sqlRequete=mysqli_query($conn,$sql) or die(mysqli_error($conn));
$ligne_trajet=mysqli_fetch_row($sqlRequete);
$sql="INSERT INTO annonce VALUES(null,'$id_session','$ligne_trajet[0]','$date_clot','$type_bien','$service_add','$nb_kilo','$prix_kilo','$moy_trans','$moy_pay')";
$sqlRequete=mysqli_query($conn,$sql) or die(mysqli_error($conn));

header("Location: ../pages/transporteur/annonce.php");
?>