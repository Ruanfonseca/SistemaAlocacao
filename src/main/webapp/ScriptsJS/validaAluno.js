/**
 * 
 */
function validadorAluno() {

	let nome = frmAluno.nome.value
	let matricula = frmAluno.matricula.value
	let cpf = frmAluno.cpf.value
	let telefone = frmAluno.telefone.value
	let email = frmAluno.email.value

	if (nome === "") {
		setTimeout(function() {
			document.getElementById("mensagem").innerHTML = "Nome incorreto!";
		}, 100);
		frmAluno.nome.focus()
		return false
	} else if (matricula === "") {
		document.getElementById("mensagem").innerHTML = "Matrícula  incorreta!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 100);
		frmAluno.matricula.focus()
		return false
	} else if (cpf === ""|| !validarCPF(cpf)) {
		document.getElementById("mensagem").innerHTML = "CPF incorreto!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 100);
		frmAluno.cpf.focus()
		return false
	} else if (telefone === "") {
		document.getElementById("mensagem").innerHTML = "Telefone incorreto!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 100);
		
		frmAluno.telefone.focus()
		return false
	} else if (email === "") {
		document.getElementById("mensagem").innerHTML = "Email incorreto!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 100);
		frmAluno.email.focus()
		return false
	} else {
		
		alert('Requerimento Enviado!!')
		limparDados()
		return true;
	}

function validarCPF(cpf) {
    cpf = cpf.replace(/[^\d]+/g, '');
    if (cpf === '') return false;
    if (cpf.length !== 11 || cpf === "00000000000" || cpf === "11111111111" || cpf === "22222222222" || cpf === "33333333333" || cpf === "44444444444" || cpf === "55555555555" || cpf === "66666666666" || cpf === "77777777777" || cpf === "88888888888" || cpf === "99999999999") return false;
    let add = 0;
    for (let i = 0; i < 9; i++) add += parseInt(cpf.substring(i, i + 1)) * (10 - i);
    let rev = 11 - (add % 11);
    if (rev === 10 || rev === 11) rev = 0;
    if (rev !== parseInt(cpf.substring(9, 10))) return false;
    add = 0;
    for (let i = 0; i < 10; i++) add += parseInt(cpf.substring(i, i + 1)) * (11 - i);
    rev = 11 - (add % 11);
    if (rev === 10 || rev === 11) rev = 0;
    if (rev !== parseInt(cpf.substring(10, 11))) return false;
    return true;
}
	function limparDados() {
		frmAluno.nome.value = "";
		frmAluno.matricula.value = "";
		frmAluno.cpf.value = "";
		frmAluno.telefone.value = "";
		frmAluno.email.value = "";
	}
}