
<?php 
require "database.php";
$db = database::connect(); // reconnexion a la base
session_start();
$matricule_ens=$_SESSION["matricule_ens"];
    $statement = $db->query('SELECT *  FROM etudiant ORDER BY nom_etd ASC'); 
    $statement3 = $db->query('SELECT *  FROM etudiant ORDER BY nom_etd ASC'); 
    $statement2 = $db->query("SELECT *  FROM enseignant WHERE matricule_ens='$matricule_ens'"); 
    $item2 = $statement2->fetch();
    
?>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Ensiegnant</title>
</head>
<body>
    <section class="header-containt" id="header-containt">
       
        <div class="horizontal-header-containt">
            <button id="btn-etat" class="button">Etat</button>
            <button id= "btn-verif" class="button">Verification</button>
            <button id="btn-modif" class="button">Modification</button>
            
            <div class="exit-button">
            <a href="deconnection.php">
                <span>log out</span>
                <button><img src="icon/logout_659988-removebg-preview.png" alt=""></button>
            </a>
            </div>
        </div>

        <div class="containt-body-navbar">
           
            <div class="vertical-header-containt">
                <div class="sub-title">
                    <h2> SGA</h2>
                </div>
                <div class="text-details">
                    <div class="text">
                    <h2><?php echo $item2["nom_ens"]; ?> </h2>
                <h4><?php echo $item2["matricule_ens"]; ?></h>
                <br>
                <h3>Matiere:</h3>
                <h2><?php echo $item2["matiere"]; ?></h2>
                    </div>
                    <div class="pp-img">
                        <img src="icon/user_456212.png" alt="">
                    </div>
                   
                </div>
            </div>
    

            <section class="tableau-containt" >
                <div class="containt-table" id="block1">
                    
                <table type="2">
                    <thead>
                        <tr>
                            <th>Nom</th>
                            <th>Matricule</th>
                            <th>Etat</th>
                            
            
                        </tr>
                    </thead>
                    <tbody>
                    <?php 
            
            while ($item = $statement->fetch()) {
                $hour= date('y-m-d' );
                $matricule_etd=$item['matricule_etd'];
    $query = $db->query("SELECT * FROM fiche_rtd WHERE matricule_etd='$matricule_etd' AND date_arrivee = '$hour'  "); 
    if(!$query){
        die("ça n'a pas marché :(");
      }; 
      $query1 = $db->query("SELECT * FROM fiche_abs WHERE matricule_etd='$matricule_etd' AND date_abs = '$hour' AND matricule_ens='$matricule_ens'  "); 
    if(!$query1){
        die("ça n'a pas marché :(");
      }; 
    if( $query->rowCount() > 0 AND $query1->rowCount()  <1  ) {
    echo '<tr>' ;
    echo '<td>'.$item["nom_etd"].'</td>' ;
    echo '<td>'.$item["matricule_etd"].'</td>' ;
    echo '' ;
    echo "<td class='check-containt'> <a class='btn btn-success' href='absent.php?matricule_etd=". $item['matricule_etd'] . "' ><span class='glyphicon glyphicon-ok'>Etat</span></a> </td>";
                
            
    echo '</tr>' ;
    }
            }
           
            
                //$hour= date('y-m-d' );
                //$query=$db->query("INSERT INTO fiche_rtd (date_arrivee, maticule_etd) VALUES ('$hour','$matricule_etd' ") ;
            
        
    ?>
           <tr>
                            <th>----------------------------</th>
                            <th>-------------------------</th>
                            <th>------------</th>
                            
            
                        </tr>              
                        
     <?php 
            while ($item = $statement3
            ->fetch()) {
                $hour= date('y-m-d' );
                $matricule_etd=$item['matricule_etd'];
    $query = $db->query("SELECT * FROM fiche_rtd WHERE matricule_etd='$matricule_etd' AND date_arrivee = '$hour'  "); 
    if(!$query){
        die("ça n'a pas marché :(");
      }; 
      $query1 = $db->query("SELECT * FROM fiche_abs WHERE matricule_etd='$matricule_etd' AND date_abs = '$hour' AND matricule_ens='$matricule_ens'  "); 
    if(!$query1){
        die("ça n'a pas marché :(");
      }; 
    if( $query->rowCount() > 0 AND $query1->rowCount()  >0  ) {
    echo '<tr>' ;
    echo '<td>'.$item["nom_etd"].'</td>' ;
    echo '<td>'.$item["matricule_etd"].'</td>' ;
    echo '' ;
    echo "<td class='check-containt'> <p>Absent</p> </td>";
                
            
    echo '</tr>' ;
    }
            }
           
            
                //$hour= date('y-m-d' );
                //$query=$db->query("INSERT INTO fiche_rtd (date_arrivee, maticule_etd) VALUES ('$hour','$matricule_etd' ") ;
            
        
    ?>
                        </tbody>
                    </table>
                    <br>
                    <br>
                    
        
                </div>
        
            <!-- section verification-->
                <div class="containt-table" id="block2">
                    
                <table type="2" >
                    <thead>
                        <tr>
                            <th>Nom</th>
                            <th>Matricule</th>
                            <th id="etat">Etat</th>
            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Lorem ipsum dolor</td>
                            <td>Lorem ipsum dolor</td>
                            <td class="check-containt">
                                <input type="checkbox" value="absent" class="check" name="checked">
                            </td>
                        </tr>
                        <tr>
                            <td>Lorem ipsum dolor</td>
                            <td>Lorem ipsum dolor</td>
                            <td class="check-containt">
                                <input type="checkbox" value="absent" class="check" name="checked">
                            </td>
                        </tr>
                        <tr>
                            <td>Lorem ipsum dolor</td>
                            <td>Lorem ipsum dolor</td>
                            <td class="check-containt">
                                <input type="checkbox" value="absent" class="check" name="checked">
                            </td>
                        </tr>
                        
                        </tbody>
                    </table>
        
                </div>
                
            <!-- section de modif -->
        
                <div class="containt-table" id="block3">
                    
                <table type="2" id="customise">
                    <thead>
                        <tr>
                            <th>Nom</th>
                            <th>Matricule</th>
                            <th id="etat">Editer</th>
            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Lorem ipsum dolor</td>
                            <td>Lorem ipsum dolor</td>
                            <td><button  onclick="openForm()"> <img src="icon/create-outline.svg" alt=""></button></td>
                        </tr>
                        
                        <tr>
                            <td>Lorem ipsum dolor</td>
                            <td>Lorem ipsum dolor</td>
                            <td><button  onclick="openForm()"> <img src="icon/create-outline.svg" alt=""></button></td>
                        </tr>
                        <tr>
                            <td>Lorem ipsum dolor</td>
                            <td>Lorem ipsum dolor</td>
                            <td><button  onclick="openForm()"> <img src="icon/create-outline.svg" alt=""></button></td>
                        </tr>
                       
                       
                        </tbody>
                    </table>
        
                </div>
            </section>
    
        </div>

       

    </section>

    <!-- pop-up -->

    <div class="login-popup">
        <div class="form-popup" id="popupForm">
          <form action="/action_page.php" class="form-container">
            <h2>Modifier</h2>
            
            <input type="text" id="nom" name="nom" required />
            <input type="text" id="matricule" name="matricule" required />
            
            <input type="number" id="retard"  name="retard" required />

            <button type="submit" class="btn">Valider</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Fermer</button>
          </form>
        </div>
      </div>

   
</body>

<script src="js/focusApp.js"></script>
</html>