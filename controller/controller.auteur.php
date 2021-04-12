<?php
require_once 'model/auteur.model.php';

function listAuthors () {
    $authorManager = new AuteurManager ();
    $authors = $authorManager->getAuthors();
    $authors_p = $authorManager->getPays();
    require 'view/listAuteurView.php';
}

function author () {
    $authorManager = new AuteurManager ();
    $author = $authorManager->getAuthorView($_GET ['id']);
    require 'view/auteurView.php';
}

?>