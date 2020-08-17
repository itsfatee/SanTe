<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Accueil forum</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
    <!--  lien permettant d'accéder à la page contenant le formulaire d'insertion d'un nouveau sujet -->
    <a href="insert-sujet.php">Insérer un sujet</a>
    <br /><br />
    <?php
        // connexion bd
        require_once("connexion.php");

        // requete
        $sql = 'SELECT idtopic, auteur, titre, date_reponse FROM forum_topics ORDER BY date_reponse DESC';

        $req = mysqli_query($connect,$sql) ;
        if ($req==false) {
            echo 'Erreur SQL : '.mysql_error();
        }
       // or die('Erreur SQL !<br />'.$sql.'<br />'.mysql_error());

        // on compte le nombre de sujets du forum
        $nb_sujets = mysqli_num_rows ($req);
        if ($nb_sujets == 0) 
        {
	        echo 'Aucun sujet';
        }
    else {
    ?>
	    <table width="500" border="1">
            <tr>
                <td>Auteur</td>
                <td>Titre du sujet</td>
                <td>Date dernière réponse</td>
            </tr>
	        <?php
	        // on scanne tous les tuples 
	            while ($data = mysql_fetch_array($req)) {
                    // on décompose la date
                    sscanf($data['date_reponse'], "%4s-%2s-%2s %2s:%2s:%2s", $annee, $mois, $jour, $heure, $minute, $seconde);
                        
	                // on affiche les résultats
	                echo '<tr>';
	                echo '<td>';

	                // on affiche le nom de l'auteur du sujet
	                echo htmlentities(trim($data['auteur']));
	                echo '</td><td>';

	                // on affiche le titre du sujet, et sur ce sujet, on insère le lien qui nous permettra de lire les différentes réponses du sujet
	                echo '<a href="lire-sujet.php?id_sujet_a_lire=' , $data['idtopic'] , '">' , htmlentities(trim($data['titre'])) , '</a>';

	                echo '</td><td>';

	                // on affiche la date de la dernière réponse de ce sujet
	                echo $jour , '-' , $mois , '-' , $annee , ' ' , $heure , ':' , $minute;
	            }
	        ?>
	       
        </table>
	    <?php
    }          
        ?>  
    </body>
</html>

<?php 

?>
