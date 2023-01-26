package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Normalizer;

import ConexaoDB.SingleConexaoDB;
import Model.Funcionario;
import Model.Professor;
import Model.TarefaAluno;
import Model.TarefaProjetor;
import Model.TarefaSala;

public class DAO {
	private Connection conexao;

	public DAO() {
		conexao = SingleConexaoDB.getConexao();
	}

	public void inserirTarefaDeAluno(TarefaAluno tfAluno) throws SQLException {
		String sql = "insert into tfAluno (nome,matricula,cpf,email,telefone,senha) values (?,?,?,?,?,?)";
		
		
		PreparedStatement pst = conexao.prepareStatement(sql);
		
		try {
			pst.setString(1, tfAluno.getNome());
			pst.setString(2, tfAluno.getMatricula());
			pst.setString(3, tfAluno.getCpf());
			pst.setString(4, tfAluno.getEmail());
			pst.setString(5, tfAluno.getTelefone());
			pst.setString(6, tfAluno.getSenha());
			pst.execute();
			conexao.commit();
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void inserirTarefaProfProjetor(TarefaProjetor tfProjetor) throws SQLException {
		String sql = "insert into tfProfProjetor (nome,matricula,email,telefone,sala) values (?,?,?,?,?)";

		PreparedStatement pst = conexao.prepareStatement(sql);

		try {
			pst.setString(1, tfProjetor.getNome());
			pst.setString(2, tfProjetor.getMatricula());
			pst.setString(3, tfProjetor.getEmail());
			pst.setString(4, tfProjetor.getTelefone());
			pst.setString(5, tfProjetor.getSala());
			pst.execute();
			conexao.commit();


		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void inserirTarefaProfSala(TarefaSala tfSala) {
		String sql = "insert into tfSala (nome,matricula,email,telefone,periodo) values (?,?,?,?,?)";
		try {
			PreparedStatement pst = conexao.prepareStatement(sql);
			pst.setString(1, tfSala.getNome());
			pst.setString(2, tfSala.getMatricula());
			pst.setString(3, tfSala.getEmail());
			pst.setString(4, tfSala.getTelefone());
			pst.setString(5, tfSala.getPeriodo());
			pst.execute();
			conexao.commit();


		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean validacaoProf(Professor prof) {
		String sql = "select * from Professor where matricula = ?";
		try {
			PreparedStatement pst = conexao.prepareStatement(sql);

			pst.setString(1, prof.getMatricula());
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				return true;// autenticado
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;

	}

	public boolean validacaoFunc(Funcionario func) {

			String sql = "select * from Funcionario where matricula = ? and cpf = ?";
			try {
				PreparedStatement pst = conexao.prepareStatement(sql);

				pst.setString(1, func.getMatricula());
				pst.setString(2, func.getCpf());
				ResultSet rs = pst.executeQuery();

				if (rs.next()) {
					return true;// autenticado
				} else {
					return false;
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		return true;
	}

	
}
