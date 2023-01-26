package Model;

public class TarefaAluno {
	private String nome;
	private String matricula;
	private String cpf;
	private String email;
	private String telefone;
	private String senha;
	private String msg_Aviso = "Tarefa inserida, aguarde o retorno da área responsável!!";
	
	


	public TarefaAluno() {
		super();
	}

	public TarefaAluno(String nome, String matricula, String cpf, String email, String telefone, String senha) {
		super();
		this.nome = nome;
		this.matricula = matricula;
		this.cpf = cpf;
		this.email = email;
		this.telefone = telefone;
		this.senha = senha;
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

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
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

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getMsg_Aviso() {
		return msg_Aviso;
	}
}
