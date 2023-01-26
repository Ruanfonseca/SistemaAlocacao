/**
 * 
 */
function validador() {
	let matr = frmValidaProf.matricula.value

	if (nome === "") {
		alert('Preencha o campo matricula!')
		frmValidaProf.matr.focus()
		return false
	} else {
		document.forms["frmValidaProf"].submit
	}
}