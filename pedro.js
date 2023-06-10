let URL = "http://localhost:8000"
let form = document.querySelector('#formulario');
let botonTrabajadores = document.querySelector('#num-trabajadores');
let botonTitulos = document.querySelector('.agregar-titulo');

botonTitulos.addEventListener('click', function(event) {
    event.preventDefault();
    const peliculaRef = document.querySelector('.pelicula-ref');
    const divTitulosAlternativos = document.querySelector('.titulos-alternativos');
    const clon = peliculaRef.cloneNode(true);
    const ultimo = divTitulosAlternativos.lastElementChild;
    clon.id = ultimo ? String((Number(ultimo.id) + 1)) : "1";
    divTitulosAlternativos.appendChild(clon);
});


botonTrabajadores.addEventListener('click', function(event) {
    event.preventDefault();
    let numTrabajadores = document.querySelector("#numero-deseado-trabajadores").value;
    let trabajadores = document.querySelector(".trabajadores");
    cuentaActualTrabajadores = trabajadores.childElementCount;
    if (cuentaActualTrabajadores <= numTrabajadores) {
        for (let i = 0; i < (numTrabajadores - cuentaActualTrabajadores); i++) {
            let newId = `actor-${i}`;
            let divActorBase = document.querySelector('#trabajador-ref');
            let clon = divActorBase.cloneNode(true);
            clon.classList.add(newId);
            clon.hidden = false;
            trabajadores.appendChild(clon);
        }
        return;
    }

    while (numTrabajadores < cuentaActualTrabajadores) {
        trabajadores.removeChild(trabajadores.lastChild);
        cuentaActualTrabajadores--;
    }
});


form.addEventListener('submit', async function(event) {
    event.preventDefault();

    const arrTitulos = Array.from(document.getElementsByClassName("pelicula-ref"));
    const titulos = [];
    for (let titulo of arrTitulos) {
        titulos.push(jsonTitulo(titulo));
    }

});

async function postData(url = "", data = {}) {
    // Default options are marked with *
    const response = await fetch(url, {
        method: "POST", // *GET, POST, PUT, DELETE, etc.
        mode: "no-cors", // no-cors, *cors, same-origin
        cache: "no-cache", // *default, no-cache, reload, force-cache, only-if-cached
        credentials: "same-origin", // include, *same-origin, omit
        headers: {
            "Content-Type": "application/json",
            // 'Content-Type': 'application/x-www-form-urlencoded',
        },
        redirect: "follow", // manual, *follow, error
        referrerPolicy: "no-referrer", // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: JSON.stringify(data), // body data type must match "Content-Type" header
    });
    return response.json(); // parses JSON response into native JavaScript objects
}

function jsonTitulo(divTitulo) {
    const hijosDivIdiomasTitulo = Array.from(divTitulo.getElementsByClassName("idiomas-del-titulo")[0].children);
    const idiomas = hijosDivIdiomasTitulo.reduce((arr, currentChild) => {
        if (currentChild.type === "checkbox" && currentChild.checked) {
            arr.push(currentChild.id);
        }
        return arr;
    }, []);

    return {
        titulo: divTitulo.getElementsByClassName("titulo-pelicula")[0].value,
        idiomas,
    }

}

