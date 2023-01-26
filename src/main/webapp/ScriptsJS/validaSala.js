/**
 * 
 */
 
  function validadorSala() {
	let nome = frmSala.nome.value
	let matricula = frmSala.matricula.value
	let telefone = frmSala.telefone.value
	let email = frmSala.email.value
	let periodo = frmSala.periodo.value

	if (nome === "") {
		alert('Preencha o campo nome')
		frmSala.nome.focus()
		return false
	} else if (matricula === "") {
		alert('Preencha o campo matricula')
		frmSala.matricula.focus()
		return false
	}  else if (telefone === "") {
		alert('Preencha o campo telefone')
		frmSala.telefone.focus()
		return false
	} else if (email === "") {
		alert('Preencha o campo email')
		frmSala.email.focus()
		return false
	}else if (periodo === "") {
		alert('Preencha o campo periodo')
		frmSala.periodo.focus()
		return false
	} else {
        alert('Requerimento Enviado!!');
		document.forms["frmProjetor"].submit
	}
}