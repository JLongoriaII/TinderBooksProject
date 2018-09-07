var xhr = new XMLHttpRequest();
var xhr2 = new XMLHttpRequest();

window.onload = ()=>{
    var btnActualizarInformacion = document.getElementById("btnInformacion");
    btnActualizarInformacion.addEventListener("click", guardarInformacion);

    var btnAbrirEditor = document.getElementById("btnEditar");
    btnAbrirEditor.addEventListener("click", recogerInformacion);

    if(navigator.geolocation){
		// Para obtener la ubicación actual llama getCurrentPosition.
        navigator.geolocation.getCurrentPosition(muestraMiUbicacion, muestraError); 
        }
    else{ //de lo contrario
		    alert("Los servicios de geolocalizaci\363n  no est\341n disponibles");
    }
}

/*function initMap(){
    if(navigator.geolocation){
		// Para obtener la ubicación actual llama getCurrentPosition.
        navigator.geolocation.getCurrentPosition(muestraMiUbicacion, muestraError); 
        }
    else{ //de lo contrario
		alert("Los servicios de geolocalizaci\363n  no est\341n disponibles");
    }
}*/

function muestraMiUbicacion(position){
    /*var latitud = position.coords.latitude;
    var longitud = position.coords.longitude;*/  
    var option = {lat: position.coords.latitude,lng: position.coords.longitude};
    var map = new google.maps.Map(document.getElementById("divLocationMap"), {zoom: 12, center: option});
    var marker = new google.maps.Marker(map);
}

function muestraError(error){
    {
        switch(error.code) 
          {
          case error.PERMISSION_DENIED:
            posicionDiv.innerHTML="El usuario denego la petición de geolocalización.";
            break;
          case error.POSITION_UNAVAILABLE:
            posicionDiv.innerHTML="Información de localización no disponible.";
            break;
          case error.TIMEOUT:
            posicionDiv.innerHTML="La petición para obtener la ubicación del usuario expiró.";
            break;
          case error.UNKNOWN_ERROR:
            posicionDiv.innerHTML="Error desconocido.";
            break;
          }
        }
}

function guardarInformacion(){
    var descripcion = document.getElementById("txtDescripcion").value;
    var edad = document.getElementById("txtEdad").value;
    var nacionalidad = document.getElementById("txtNacionalidad").value;
    var ciudad = document.getElementById("txtCiudad").value;
    var academica = document.getElementById("txtAcademica").value;

    var miForma = new FormData();
    miForma.append("descripcion",descripcion);
    miForma.append("edad",edad);
    miForma.append("nacionalidad",nacionalidad);
    miForma.append("ciudad",ciudad);
    miForma.append("academica",academica);
    
    xhr.open("POST","ActualizarInformacionServlet",true);

    xhr.onload = callback;

    xhr.send(miForma);
}

function callback(){
    document.getElementById("").innerHTML = xhr.responseText;
}

function recogerInformacion(){
	  xhr2.open("POST","ActualizarInformacionServlet",true);

	  xhr2.onload = callback;

	  xhr2.send();
}