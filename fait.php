<?php 
require "database.php";

$db= database::connect();
$matricule_etd=$_GET['matricule_etd'];
$hour= date('y-m-d' );
$date= date('h:i:s');
$dateRetard= '3:30:00';

if( strtotime($date) > strtotime($dateRetard))
{
    $query = $db->query("SELECT nbr_rtd FROM fiche_rtd WHERE matricule_etd='$matricule_etd' ");
    if(!$query){
        die("ça n'a pas marché 1 :(");
      };
    $nbr_rtd= $query->fetch();
    $nbr_rtd=+1;
    $query = $db->query("INSERT INTO fiche_rtd (date_arrivee, matricule_etd,nbr_rtd) VALUES ('$hour','$matricule_etd','$nbr_rtd') ");
if(!$query){
    die("ça n'a pas marché 2:(");
  };
  header("location:surveillant.php");

}else{

$query = $db->query("INSERT INTO fiche_rtd (date_arrivee, matricule_etd) VALUES ('$hour','$matricule_etd') ");
if(!$query){
    die("ça n'a pas marché :(");
  };
  header("location:surveillant.php");
}




?>