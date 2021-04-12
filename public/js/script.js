window.onload = () =>{
    let btn=document.querySelector ('#book');
    let tabBook=document.querySelector ('#tabBook');
    let tab=document.querySelector ('#tabListBook');


    function getLivre () {

        let myHeaders = new Headers ();

        let url = `./public/js/traitement.php?id=${btn.getAttribute('data-id')}`;

        let options = {
            method: 'GET',
            headers: myHeaders,
            mode: 'cors',
            cache: 'default'
        };

        fetch(url, options)
        .then ((res) => {
            if (res.ok) { 
                return res.json ();
            }
        })
        
        .then ((response) => {

            console.log (response);
            tab.innerHTML = '';

            for (let livre of response) {
                tab.innerHTML +=`
                                    <tr>
                                        <td>${livre.titre_l}</td>
                                        <td>${livre.annee_l}</td>
                                        <td>${livre.resume_l}</td>
                                    </tr>
                                `;
            }
        })

        .then (() => {
            tabBook.classList.remove ('hide');
        })

        .catch ((error) => {
            console.log ('Error: '+ error);
        })
    }

    btn.addEventListener ('click', getLivre);
}
