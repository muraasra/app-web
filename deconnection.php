
<?php 
session_start();
$_SESSION['matricule_sur'] = $_SESSION['null'] ; 
$_SESSION['matricule_ens'] = $_SESSION['null'] ; 
session_destroy();

header("location:admin_form.php");


?>
