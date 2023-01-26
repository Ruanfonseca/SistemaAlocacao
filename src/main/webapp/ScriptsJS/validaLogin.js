/**
 * 
 */

function validadorLogin() {
	let cpf = frmLogin.cpf.value
	let matricula = frmLogin.matricula.value

	if (cpf === "" || !validarCPF(cpf)) {
		document.getElementById("mensagem").innerHTML = "CPF incorreto!";
		alert('CPF incorreto!')
		frmLogin.cpf.focus()
		return false
	} else if (matricula === "") {
		document.getElementById("mensagem").innerHTML = "Matrícula  incorreto!";
		setTimeout(function() {
			document.getElementById("mensagem").style.display = "none";
		}, 3000);
		frmLogin.matricula.focus()
		return false
	} else {
		limparDados()
		return true;
	}
}
function limparDados() {
		frmAluno.nome.value = "";
		frmAluno.matricula.value = "";
		frmAluno.cpf.value = "";
		frmAluno.telefone.value = "";
		frmAluno.email.value = "";
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
