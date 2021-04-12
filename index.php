<?php
    include './partials/header.php';
?>



<body>
    <h1>Les livres</h1>
    <a href="index.php?action=listAuteur">Liste des Auteurs</a>

    <?php
    require 'controller/controller.auteur.php';
    require 'controller/controller.user.php';

    if (isset ($_GET ['action'])) {
        $action = $_GET['action'];
        switch ($action) {
            case 'accueil': 
                include './index.php';
                break;
            case 'listAuteur':
                listAuthors();
                break;
            case 'listUser':
                listUsers();
                break;
            case 'deconnexion': 
                include './functions/deconnexion.php';
                break;
            case 'auteur': {
                    if (isset($_GET['id'])) {
                        author();

                    } else {
                        echo "Erreur identifiant";
                    }
                    break;
                }
            case 'login':
                include("./view/login.php");
                break;
    
            case 'register':
                include("./view/register.php");
                break;
    
            default:
                echo 'Erreur lors du chargement de la page';
                break;
        }
    }
    ?>



<?php
    include './partials/footer.php';
?>