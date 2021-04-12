<!--==============-->
<!-- AJOUTER USER -->
<!--==============-->






<!--===============-->
<!-- MODIFIER USER -->
<!--===============-->

<?php
    require './bdd.php';
    require '../model/user.model.php';
    $id=$_GET ['id'] ;
    $userManager = new UserManager ($bdd);
    $myUser=$userManager->get ($id);
    

    if (isset ($_POST ['submit'])) {
        if ($_POST ['nom'] !='') {
            if ($_POST ['prenom'] != '') {
                if ($_POST ['mail'] != '') {
                    if (($_POST ['oldPassword'] != '')&& ($_POST ['pasword'] != '')&& ($_POST ['verifPasword'] != '')) {
                        if (password_verify ($_POST ['oldPasword'] ,$myUser->user_pasword ())) {
                            if (empty ($_POST ['pasword'] ) || ($_POST ['pasword'] == $_POST ['verifPasword'])) {

                                $myUser->setUser_pseudo ($_POST ['pseudo']);
                                $myUser->setUser_mail ($_POST ['mail']);
                                $myUser->setUser_pasword (sha1 ($_POST ['pasword']));
                                $userManager->update ($myUser);

                                header ('Location: ./index.php?action=listUser');

                            } else {
                                header ("Location: ./index.php?action=formModif&err=1&id=".$_GET ['id']);
                            }

                        } else {
                            header ("Location: ./index.php?action=formModif&err=2&id=".$_GET ['id']);
                        }

                    } else {
                        header ("Location: ./index.php?action=formModif&err=3&id=".$_GET ['id']);
                    }

                } else {
                    header ("Location: ./index.php?action=formModif&err=4&id=".$_GET ['id']);
                }

            } else {
                header ("Location: ./index.php?action=formModif&err=5&id=".$_GET ['id']);
            }

        } else {
            header ("Location: ./index.php?action=formModif&err=6&id=".$_GET ['id']);
        }
        
    }
?>




<!--================-->
<!-- SUPPRIMER USER -->
<!--================-->

<?php
    require './bdd.php';
    require './model/user.model.php';
?>

<?php
    $login = $_SESSION['id_users'];
    $id=$_GET['id'];
    $userManager = new UserManager($bdd);
    $myUser=$userManager->get($id);
?>
    <div>
<?php
        if($login==$id)
        {
?>    
            <div>
                <h3>Voulez-vous supprimer votre compte ?<h3>
            </div>
            <div>
                <a href="./index.php?action=suppr&rep=oui&id=<?php echo $_GET["id"] ?>">oui</a> 
                <a href="./index.php?action=suppr&rep=non&id=<?php echo $_GET["id"] ?>">non</a>
            </div>
<?php
            if (isset ($_GET ["rep"])) {

                switch ($_GET ["rep"]) {

                    case "oui":
                        $userManager->delete ($myUser);

                        header('Location: ./public/pages/deconnexion.php');
                    break;

                    case "non":
                        header('Location: ./index.php?action=listUser');
                    break;
                }
            }

        } else {
            ?>
                <div>
                    <h3>Supprimer : <?php echo $myUser->user_pseudo()." - ".$myUser->user_mail(); ?>?<h3> 
                </div>
                <div>
                    <a href="./index.php?action=suppr&rep=oui&id=<?php echo $_GET["id"] ?>">oui</a> 
                    <a href="./index.php?action=suppr&rep=non&id=<?php echo $_GET["id"] ?>">non</a>
                </div>
<?php
                    if (isset ($_GET ["rep"])) {

                        switch ($_GET ["rep"]) {

                            case "oui":
                                $userManager->delete ($myUser);
                                header ('Location: ./index.php?action=listUser');
                            break;

                            case "non":
                                header ('Location: ./index.php?action=listUser');
                            break;
                        }
                    }
                }
?>
</div>