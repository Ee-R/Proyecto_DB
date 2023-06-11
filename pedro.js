const URL = "http://localhost:8000"
const CHECKBOX = "checkbox";
const FIRST_ID = "1";
const form = document.querySelector('#formulario');
const botonTrabajadores = document.querySelector('#num-trabajadores');
const botonAgregarTitulos = document.querySelector('.agregar-titulo');
const botonSacarTitulo = document.querySelector('.sacar-titulo');



botonSacarTitulo.addEventListener('click', function(event) {
    event.preventDefault();
    const divTitulosAlternativos = document.querySelector('.titulos-alternativos');
    if (divTitulosAlternativos.childElementCount > 0)
        divTitulosAlternativos.removeChild(divTitulosAlternativos.lastElementChild);
});


botonAgregarTitulos.addEventListener('click', function(event) {
    event.preventDefault();
    const peliculaRef = document.querySelector('.pelicula-ref');
    const divTitulosAlternativos = document.querySelector('.titulos-alternativos');
    const clon = peliculaRef.cloneNode(true);
    const ultimo = divTitulosAlternativos.lastElementChild;
    clon.id = ultimo ? String((Number(ultimo.id) + 1)) : FIRST_ID;
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
    await fetch(URL, {
        method: "POST", // *GET, POST, PUT, DELETE, etc.
        mode: "no-cors", // no-cors, *cors, same-origin
        cache: "no-cache", // *default, no-cache, reload, force-cache, only-if-cached
        credentials: "same-origin", // include, *same-origin, omit
        headers: {
            "Content-Type": "application/json",
        },
        redirect: "follow", // manual, *follow, error
        referrerPolicy: "no-referrer", // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: JSON.stringify(jsonPelicula()), // body data type must match "Content-Type" header
    });

});

function jsonTitulo(divTitulo) {
    const hijosDivIdiomasTitulo = Array.from(divTitulo.getElementsByClassName("idiomas-del-titulo")[0].children);
    const idiomas = hijosDivIdiomasTitulo.reduce((arr, currentChild) => {
        if (currentChild.type === CHECKBOX && currentChild.checked) {
            arr.push(currentChild.id);
        }
        return arr;
    }, []);

    return {
        titulo: divTitulo.getElementsByClassName("titulo-pelicula")[0].value,
        idiomas,
    }
}

function jsonTrabajador(trabajador) {
    const [inputNombre, inputApellido] = trabajador.getElementsByClassName("nombre-apellido");
    const rol = trabajador.getElementsByClassName("rol")[0].value;
    const fechaNacimiento = trabajador.getElementsByClassName("fecha-nacimiento")[0].value;
    // las fechas de nacimiento son una string
    return {
        nombre: inputNombre.value,
        apellido: inputApellido.value,
        rol,
        fechaNacimiento
    };
}

function jsonPelicula() {
    const arrTitulos = Array.from(document.getElementsByClassName("pelicula-ref"));
    const arrTrabajadores = Array.from(document.getElementsByClassName("trabajadores")[0].children);
    const oscar = document.getElementById("oscar").checked;
    const duracion = Number(document.getElementById("duracion").value);
    const precuela = document.getElementById("precuela").value;
    const secuela = document.getElementById("secuela").value;
    const estreno = document.getElementById("estreno").value;
    const idiomaOriginal = document.getElementById("idioma-original").value;
    const titulos = [];
    const trabajadores = []

    for (let titulo of arrTitulos) {
        titulos.push(jsonTitulo(titulo));
    }
    for (let trabajador of arrTrabajadores) {
        trabajadores.push(jsonTrabajador(trabajador));
    }

    return {
        'idioma-original': idiomaOriginal,
        titulos,
        trabajadores,
        oscar,
        estreno,
        duracion: duracion > 0 ? duracion : 0,
        precuela: precuela === '' ? titulos[0].titulo : precuela,
        secuela: secuela === '' ? titulos[0].titulo : secuela
        // mando la parte uno como precuela y secuela de si misma
    }

}
