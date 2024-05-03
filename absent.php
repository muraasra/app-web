<?php 
require "database.php";
session_start();
$matricule_ens=$_SESSION["matricule_ens"];
$db= database::connect();
$matricule_etd=$_GET['matricule_etd'];
$date= date('y-m-d');

$query = $db->query("INSERT INTO fiche_abs (matricule_etd, heure_abs, date_abs, matricule_ens) VALUES ('$matricule_etd',1, '$date','$matricule_ens') ");
if(!$query){
    die("ça n'a pas marché :(");
  };
  header("location:enseignant.php");





?>