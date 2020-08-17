<?php
  session_start() ;
  if(isset($_SESSION['statut']) && $_SESSION['statut']=='simple'){
    header("Location: ../pages/simple/accueil.php") ;
  }
  elseif(isset($_SESSION['statut']) && $_SESSION['statut']=='pro'){
    header("Location: ../pages/pro/accueil.php") ;
  }

extract($_POST);
require_once("conn_db.php");
$hach=sha1($passw);

    $sqlSelect="select * from users where email='$email' and password='$hach'";
    $sql_requete=mysqli_query($conn,$sqlSelect) or die(mysqli_error($conn));
    $ligne=mysqli_fetch_array($sql_requete);
    if($ligne["email"]==$email && $ligne["password"]==$hach){
        
        $_SESSION["id"]=$ligne["idUser"];
        $_SESSION["pseudo"]=$ligne["pseudo"];
        $_SESSION["statut"]=$ligne["statut"];

        if($ligne['statut']=="simple" )
        {
            header("Location: ../pages/simple/accueil.php");
        }
        else if( $ligne['statut']=="pro"){
            header("Location: ../pages/pro/accueil.php");
        }
        else if($ligne['statut']=="admin" ){
            header("Location: ../pages/admin/accueil.php");
        }
        
        
    }else{
?>
        <script>
            alert("Email, mot de passe et/ou statut non reconnu(s)!\nVeuillez vérifier les informations saisies.");
            window.location.href="../pages/login.php";
        </script>
<?php
    }


?>