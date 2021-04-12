<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Model_MVC</title>
    <link href="public/css/style.css" rel="stylesheet">
</head>

<body>
    <header>
        <nav>
            <a href="index.php">Accueil</a>
            <?php

            if (!isset($_SESSION['user_pseudo'])) {
                echo'
                        <a href="./index.php?action=login">S\'idendifier</a>
                        <a href="./index.php?action=register" >S\'enregistrer</a>
                    ';
            } else {
                echo'
                        <a href="./index.php?action=listUser">Liste des utlisateurs</a>
                        <a href="./index.php?action=listAuteur">Liste des Auteurs</a>
                        <a href="./index.php?action=deconnexion">Déconnexion</a>
                    ';
            }

            ?>
        </nav>
    </header>