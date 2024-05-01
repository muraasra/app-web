<?php
require "database.php";
$name_admin = null;
$matricule = null;
$password = null;
$erreur= null;

if (isset($_POST['login'])) {
    $name_admin = $_POST['name_admin'];
    $matricule = $_POST['matricule'];
    $password = $_POST['password'];

$db = database::connect();

$checkUser = $db->query("SELECT * FROM surveillant WHERE  cle_sur='$password' AND  nom_sur = '$name_admin' AND matricule_sur = '$matricule'  ");
if(!$checkUser){
    die("ça n'a pas marché 1 :(");
  };
$checkUser2 = $db->query("SELECT * FROM enseignant WHERE nom_ens = '$name_admin' AND matricule_ens = '$matricule' AND cle_ens = '$password' ");
if(!$checkUser2){
    die("ça n'a pas marché 2  :(");
  };
  if ($checkUser->rowCount() > 0) {
    echo "Connexion reussie pour ";
    $redirect = $checkUser->fetch()['matricule_sur'];
    //session_start();
    //session_destroy();
    
    
    //$_SESSION['matricule_sur']=$redirect;
   
    header("location:surveillant.html");
    exit;
}
 elseif ($checkUser2->rowCount() > 0) {
        echo "Connexion reussie pour ";
        $redirect = $checkUser2->fetch()['matricule_ens'];
        //session_start();
        
        //$_SESSION['matricule_ens']=$redirect;
       
        header("location:enseignant.html");
        exit;
    }
     else $erreur="Donnees incorrect";
    }


?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>ADMIN</title>
</head>
<body>
    
    <form action="" method="post">
        <h2>WELCOME ADMIN</h2>
        <p>LOGIN TO CONTINUE</p>

        <label for="name">NAME</label>
        <input type="text" id="name" name="name_admin"
        value="<?php echo$name_admin?>">

        <label for="matricule">REGISTRATION NUMBER</label>
        <input type="text" id="matricule" name="matricule"
         value="<?php echo$matricule?>">

        <label for="key">SECRET KEY</label>
        <input type="password" id="key" name="password">
        <br> <span class="erreur" > <?php echo $erreur ?></span>
        <button type="submit" name="login">LOGIN</button>
    </form>
    
</body>
</html>
