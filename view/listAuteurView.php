<table>
    <thead>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Date de naissance</th>
            <th>Nom pays</th>
            <th>En Savoir Plus</th>
        </tr>
    </thead>
    <tbody>

    <?php
    foreach ($authors_p as $value) {
        echo "
            <tr>
                <td>".$value['nom_a']."</td>
                <td>".$value['prenom_a']."</td>
                <td>".$value['date_naissance_a']."</td>
                <td>".$value['nom_p']."</td>
                <td><a href='index.php?action=auteur&id=".$value['id_a']."'>En Savoir Plus</a></td>
            </tr> 
        ";
    }
    ?>

    </tbody>
</table>