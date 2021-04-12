<?php
require_once 'model/user.model.php';

function listUsers () {
    if(isset($_SESSION['user_pseudo'])) {
        $userManager = new UserManager ();
        $users = $userManager->getAll();
        require 'view/listUserView.php';
    } else {
        header('Location: ./index.php');
    }
}

function user () {
    if(isset($_SESSION['user_pseudo'])) {
        $userManager = new UserManager ();
        $user = $userManager->get($_GET ['id']);
        require 'view/userView.php';
    } else {
        header('Location: ./index.php');
    }
}

?>