package Controller;

import java.io.IOException;
import java.util.stream.Collectors;
import com.fasterxml.jackson.databind.ObjectMapper;
import Dao.DAO;
import Model.Funcionario;
import Model.Professor;
import Model.TarefaAluno;
import Model.TarefaProjetor;
import Model.TarefaSala;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/ValidaProf", "/LoginFunc", "/Servlet", "/tfAlunoServ", "/tfProfProjetor", "/tfProfSala" })

public class Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();
	TarefaAluno tfAluno = new TarefaAluno();
	TarefaProjetor tfProjetor = new TarefaProjetor();
	TarefaSala tfSala = new TarefaSala();
	Funcionario func = new Funcionario();
	Professor prof = new Professor();
	String data;

	public Servlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String acao = request.getServletPath();

		if (acao.equals("/tfAlunoServ")) {
			inserirTarefaAluno(request, response);
		} else if (acao.equals("/tfProfProjetor")) {
			inserirTarefaProfProjetor(request, response);
		} else if (acao.equals("/tfProfSala")) {
			inserirTarefaProfSala(request, response);
		} else if (acao.equals("/LoginFunc")) {
			loginFunc(request, response);
		} else if (acao.equals("/ValidaProf")) {

			loginProf(request, response, data);
		}

	}

	protected void loginProf(HttpServletRequest request, HttpServletResponse response, String data)
			throws ServletException, IOException {

		prof.setMatricula(request.getParameter("matricula"));

		if (dao.validacaoProf(prof)) {
			RequestDispatcher redirecionar = request.getRequestDispatcher("TelaFormProjetor.jsp");
			redirecionar.forward(request, response);
		} else {
			RequestDispatcher redirecionar = request.getRequestDispatcher("TelaValidaProf.jsp");
			redirecionar.forward(request, response);
		}

	}

	protected void loginFunc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		func.setMatricula(request.getParameter("matricula"));
		func.setCpf(request.getParameter("cpf"));

		if (dao.validacaoFunc(func)) {
			RequestDispatcher redirecionar = request.getRequestDispatcher("TelaBaixaRequerimento.jsp");
			redirecionar.forward(request, response);
		} else {
			RequestDispatcher redirecionar = request.getRequestDispatcher("TelaLogin.jsp");
			redirecionar.forward(request, response);
		}
	}

	/* Servlets correspondente a aluno */
	protected void inserirTarefaAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			tfAluno.setNome(request.getParameter("nome"));
			tfAluno.setMatricula(request.getParameter("matricula"));
			tfAluno.setCpf(request.getParameter("cpf"));
			tfAluno.setEmail(request.getParameter("email"));
			tfAluno.setTelefone(request.getParameter("telefone"));
			tfAluno.setSenha(request.getParameter("senha"));

			// inserindo contato
			dao.inserirTarefaDeAluno(tfAluno);
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("TelaTipoReq.jsp");

			redirecionar.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/*****************************************************************/
	/* Servlets correspondente a professor */
	protected void inserirTarefaProfProjetor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			tfProjetor.setNome(request.getParameter("nome"));
			tfProjetor.setMatricula(request.getParameter("matricula"));
			tfProjetor.setEmail(request.getParameter("email"));
			tfProjetor.setTelefone(request.getParameter("telefone"));
			tfProjetor.setSala(request.getParameter("sala"));
			// inserindo contato
			dao.inserirTarefaProfProjetor(tfProjetor);
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("TelaTipoReq.jsp");

			redirecionar.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void inserirTarefaProfSala(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			tfSala.setNome(request.getParameter("nome"));
			tfSala.setMatricula(request.getParameter("matricula"));
			tfSala.setEmail(request.getParameter("email"));
			tfSala.setTelefone(request.getParameter("telefone"));
			tfSala.setPeriodo(request.getParameter("periodo"));

			// inserindo contato
			dao.inserirTarefaProfSala(tfSala);

			RequestDispatcher redirecionar = request.getRequestDispatcher("TelaTipoReq.jsp");

			redirecionar.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}