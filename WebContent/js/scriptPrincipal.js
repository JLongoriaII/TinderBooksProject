var xhr = new XMLHttpRequest();

window.onload = ()=>{
    var btnSignUp = document.getElementById("btnSignUp");
    btnSignUp.addEventListener("click",enviarDatos);
}

function enviarDatos(){
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

    if(passwordUser == passwordUser2){
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
    else{
        alert("Las contraseñas no coinciden");
    }
    /*
    console.log(firstName);
    console.log(lastName);
    console.log(email);
    console.log(passwordUser);
    console.log(passwordUser2);
    console.log(birthday);
    console.log(sex);*/
}

function callback(){
    document.getElementById("resultado").innerHTML = xhr.responseText;
}