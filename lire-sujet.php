<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
    <?php
        if (!isset($_GET['id_sujet_a_lire']))
        {
	        echo 'Sujet non défini.';
        }
        else {
    ?>
	<table width="500" border="1">
    <tr>
	    <td>Auteur</td>
        <td>Messages</td>
    </tr>
	<?php
	
	    require_once("connexion.php");
	
	    $sql = 'SELECT auteur,reponse, date_reponse FROM forum_reponses WHERE sujet_liee="'.$_GET['id_sujet_a_lire'].'" ORDER BY date_reponse ASC';
	    $req = mysql_query($sql) or die('Erreur SQL !<br />'.$sql.'<br />'.mysql_error());
	    while ($data = mysql_fetch_array($req)) {

	        sscanf($data['date_reponse'], "%4s-%2s-%2s %2s:%2s:%2s", $annee, $mois, $jour, $heure, $minute, $seconde);
	        echo '<tr>';
	        echo '<td>';
	        echo htmlentities(trim($data['auteur']));
	        echo '<br />';
	        echo $jour , '-' , $mois , '-' , $annee , ' ' , $heure , ':' , $minute;
	        echo '</td><td>';

	    
	        echo nl2br(htmlentities(trim($data['msg'])));
	        echo '</td></tr>';
	    }
	       /* mysql_free_result ($req);
            mysql_close ();*/
            
    ?>
	</table><br /><br />
	<!-- on insère un lien qui nous permettra de rajouter des réponses au sujet -->
	<a href="insert-reponse.php?numero_du_sujet=<?php echo $_GET['id_sujet_a_lire']; ?>">Répondre</a>
	<?php
    }
    ?><br /><br />
    <!-- on insère un lien qui nous permettra de retourner à l'accueil du forum -->
    <a href="forum.php">Retourner à l'accueil</a>
    
    </body>
</html>