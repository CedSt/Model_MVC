<?php
    require './functions/bdd.php';

    $userManager = new UserManager($bdd);
?>
<div class="corps">

    <a href="../index.php">Accueil</a>

    <h1>Identification</h1>


    <form action=""  method="post">

        <div>
            <input type="text" name="pseudo" placeholder="Pseudo">
        </div>

        <div>
            <input type="mail" name="mail" placeholder="Mail">
        </div>

        <div>
            <input type="password" name="pasword" placeholder="Mot de passe">
        </div>

        <div>
            <input type="password" name="verifPasword" placeholder="Confirmez mot de passe">
        </div>
        
        <div>
            <button type="submit" name="submit">Enregistrer</button>
        </div>
    </form>


    <?php
        if (isset ($_POST ['submit'])) {

            if ($_POST ['pasword'] != '' && $_POST['verifPasword'] != '') {

                if (($_POST ['pasword'] == $_POST ['verifPasword'])) {
                    $post = [
                        'user_pseudo' => $_POST['pseudo'],
                        'user_mail' => $_POST['mail'],
                        'user_pasword' => sha1 ($_POST['pasword'])
                        ];

                    $user=new User();
                    $user->hydrate($post);
            
                    $userManager->add($user);

                    $_SESSION['id_users']=$user->id_users();
                    $_SESSION['user_pseudo']=$user->user_pseudo();

                    header("Location: ./index.php");

                } else {
                    echo 'Les mots de passe ne correspondent pas';
                }

            } else {
                echo 'Vous avez oublié le mot de passe';
            }
        }
    ?>
</div>