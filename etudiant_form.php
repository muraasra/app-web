
<?php
require "database.php";
$name_etudiant = null;
$matricule = null;
$erreur= null;

if (isset($_POST['login'])) {
    $name_etudiant = $_POST['name_etudiant'];
    $matricule = $_POST['matricule'];

$db = database::connect();
$checkUser = $db->query("SELECT * FROM etudiant WHERE nom_etd = '$name_etudiant' AND matricule_etd = '$matricule' ");
if(!$checkUser){
    die("ça n'a pas marché :(");
  };
if ($checkUser->rowCount() > 0) {
    // while ($user = $checkUser->fetch()) {
    //     echo $user['id_user'];
    //     echo $user['name_user'];
    //     echo $user['email'];
    //     echo $user['password'];
    // }
    echo "Connexion reussie pour ";
    $redirect = $checkUser->fetch()['matricule_etd'];
    session_start();
    
    $_SESSION['matricule_etd']=$redirect;
   
    header("location:etudiant.html");
    exit;
} else $erreur="Nom d'utilisateur ou matricule incorrect ";
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>ETUDIANT</title>
</head>
<body>
    
    <form action="" method="post">
        <h2>WELCOME STUDENT</h2>
        <p>LOGIN TO CONTINUE</p>

        <label for="name">NAME</label>
        <input type="text" id="name" name="name_etudiant"
        value="<?php echo$name_etudiant?>">

        <label for="matricule">REGISTRATION NUMBER</label>
        <input type="text" id="matricule" name="matricule"
         value="<?php echo$matricule?>">
         <br> <span class="erreur" > <?php echo $erreur ?></span>
        <button type="submit" name="login" >LOGIN</button>
    </form>
    
</body>
</html>
