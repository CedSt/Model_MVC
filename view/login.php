<?php
    require './functions/bdd.php';

    $userManager = new UserManager($bdd);
?>


<section>

    <h1>Identification</h1>

        <form action="" method="post">

            <input type="text" name="pseudo" placeholder="Pseudo">

            <input type="password" name="pasword" placeholder="Mot de passe"> 

            <button type="submit" name="submit">Connexion</button>
        </form>


<?php
    if (isset ($_POST ['submit']) && isset ($_POST ['pseudo'])) {
        $user = $userManager->login ($_POST ['pseudo']);
        if (!$user) {
            echo '<h2>Erreur sur le pseudo</h2>';

        } else {

            if (password_verify ($_POST ['pasword'], $user->user_pasword ())) {
                $_SESSION['user_pseudo'] = $user->user_pseudo ();
                $_SESSION['id_users'] = $user->id_users ();

                header ('Location: ./index.php');

            } else {     
                    echo '<h2>Erreur sur le mot de passe</h2>';
            }
        }
    }
?>
</section>
