var xhr = new XMLHttpRequest();

window.onload = ()=>{
    var btnSignUp = document.getElementById("btnSignUp");
    btnSignUp.addEventListener("click",validacionSignUp);
}

function validacionSignUp(){
    var firstName = document.getElementById("txtFirstName").value;
    var lastName = document.getElementById("txtLastName").value;
    var email = document.getElementById("txtEmail").value;
    var passwordUser = document.getElementById("txtPassword").value;
    var passwordUser2 = document.getElementById("txtPassword2").value;
    var birthday = document.getElementById("txtBirthday").value;
    var sex = document.getElementsByName("chkSex");
    if(sex[0].checked == true){
        sex = sex[0].value;
    }
    else{
        sex = sex[1].value;
    }

    if(firstName.length < 2 || firstName.length > 25){
        alert("Ingresa tu nombre real entre 3 y 25 caracteres");
        return false;
    }
    else if(lastName.length < 2 || lastName.length > 25){
        alert("Ingresa tu apellido real entre 2 y 25 caracteres");
        return false;
    }
    else if(passwordUser.length < 3 || passwordUser.length > 25){
        alert("Ingrese una contraseña entre 3 y 25 caracteres");
        return false;
    }
    else if(passwordUser2.length < 3 || passwordUser2.length > 25){
        alert("Ingresa la re-contraseña entre 3 y 25 caracteres");
        return false;
    }
    else if(passwordUser != passwordUser2){
        alert("Las contraseñas no coinciden");
        return false;
    }
    enviarDatosSignUp(firstName,lastName,email,passwordUser,birthday,sex);
}

function enviarDatosSignUp(firstName,lastName,email,passwordUser,birthday,sex){
    var miForma = new FormData();
    miForma.append("firstName",firstName);
    miForma.append("lastName",lastName);
    miForma.append("email",email);
    miForma.append("password",passwordUser);
    miForma.append("birthday",birthday);
    miForma.append("sex",sex);

    xhr.open("POST","SignUpServlet",true);

    xhr.onload = callback;

    xhr.send(miForma);
}

function callback(){
    document.getElementById("resultado").innerHTML = xhr.responseText;
}

