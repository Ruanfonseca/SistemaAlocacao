/**
 * 
 */
 function validadorProjetor() {
	let nome = frmProjetor.nome.value
	let matricula = frmProjetor.matricula.value
	let telefone = frmProjetor.telefone.value
	let email = frmProjetor.email.value

	if (nome === "") {
	
		setTimeout(function() {
			document.getElementById("mensagem").innerHTML = "Nome incorreto!";
		}, 100);
		frmProjetor.nome.focus()
		return false
	
	} else if (matricula === "") {
		
		document.getElementById("mensagem").innerHTML = "Matrícula  incorreta!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 100);
		frmProjetor.matricula.focus()
		return false
		
	}  else if (telefone === "") {
		
		document.getElementById("mensagem").innerHTML = "Telefone incorreto!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 100);
		
		frmProjetor.telefone.focus()
		return false
	
	} else if (email === "") {
		
		document.getElementById("mensagem").innerHTML = "Email incorreto!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 100);
		frmProjetor.email.focus()
		return false
	
	} else {
        alert('Requerimento Enviado!!')
		limparDados()
		return true;
	}

function limparDados() {
		frmProjetor.nome.value = "";
		frmProjetor.matricula.value = "";
		frmProjetor.cpf.value = "";
		frmProjetor.telefone.value = "";
		frmProjetor.email.value = "";
	}
}