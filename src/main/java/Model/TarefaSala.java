package Model;

public class TarefaSala {
	private String nome;
	private String matricula;
	private String email;
	private String telefone;
	private String periodo;
	private String msg_Aviso = "Tarefa inserida, aguarde o retorno da área responsável!!";
	public TarefaSala() {
		super();
	}
	public TarefaSala(String nome, String matricula, String email, String telefone, String periodo) {
		super();
		this.nome = nome;
		this.matricula = matricula;
		this.email = email;
		this.telefone = telefone;
		this.periodo = periodo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getPeriodo() {
		return periodo;
	}

	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}
	public String getMsg_Aviso() {
		return msg_Aviso;
	}
}
