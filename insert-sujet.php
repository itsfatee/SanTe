    <?php
        // on teste si le formulaire a été soumis
        if (isset ($_POST['send']) && $_POST['send']=='Envoyer')
        {
	        // on teste le contenu de la variable $auteur
        if (!isset($_POST['auteur']) || !isset($_POST['msg']) || !isset($_GET['numero_du_sujet'])) 
        {
	            $erreur = 'Les variables nécessaires au script ne sont pas définies.';
	    }
	    else {
        if (empty($_POST['auteur']) || empty($_POST['msg']) || empty($_GET['numero_du_sujet']))
        {
		    $erreur = 'Un ou des champ(s) est/sont vide(s)';
	    }     
        
       
	    else {
		      
		    require_once("connexion.php");

		        // on recupere la date de l'instant présent
		        $ladate = date("Y-m-d H:i:s");

		        //  requête d'insertion (table forum_reponses)
		        $sql = 'INSERT INTO forum_reponses VALUES("", "'.mysql_escape_string($_POST['auteur']).'", "'.mysql_escape_string($_POST['msg']).'", "'.$date.'", "'.$_GET['numero_du_sujet'].'")';

		        
		        mysql_query($sql) or die('Erreur SQL !'.$sql.'<br />'.mysql_error());

		        // requête de modification de la date de la dernière réponse postée (dans la table forum_sujets)
		        $sql = 'UPDATE forum_topics SET date_reponse="'.$ladate.'" WHERE idtopic="'.$_GET['numero_du_sujet'].'"';
		        mysql_query($sql) or die('Erreur SQL !'.$sql.'<br />'.mysql_error());

		       

		        // on redirige vers la page de lecture du sujet en cours
		        header('Location: lire-sujet.php?id_sujet_a_lire='.$_GET['numero_du_sujet']);

		        // on termine le script courant
                exit;
                
	    }
	    }
        }
    ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
    <!-- on fait pointer le formulaire vers la page traitant les données -->
    <form action="insert-reponse.php?numero_du_sujet=<?php echo $_GET['numero_du_sujet']; ?>" method="post">
        <table>
            <tr>
                <td>Auteur :</td>
                <td><input required type="text" name="auteur" maxlength="30" size="48" value="<?php if (isset($_POST['auteur'])) echo htmlentities(trim($_POST['auteur'])); ?>"></td>
            </tr>
            <tr>
                <td>Message :</td>
                <td><textarea required name="msg" cols="50" rows="10"><?php if (isset($_POST['msg'])) echo htmlentities(trim($_POST['msg'])); ?></textarea></td>
            </tr>
            <tr>
                <td><td align="right"><input type="submit" name="send" value="Envoyer"></td>
            </tr>
        </table>
    </form>
    <?php
        if (isset($erreur)) echo '<br /><br />',$erreur;
    ?>
    </body>
</html>