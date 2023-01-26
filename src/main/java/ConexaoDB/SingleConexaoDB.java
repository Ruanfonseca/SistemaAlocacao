package ConexaoDB;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class SingleConexaoDB {
	
	private static String banco = "jdbc:mysql://127.0.0.1:3306/dbsystemaloc?useTimezone=true&serverTimezone=UTC";
	private static String usuario = "root";
	private static String senha = "ruan123";
	private static String driver = "com.mysql.cj.jdbc.Driver";
	private static Connection conexao = null;

	
	
	public static Connection getConexao() {
		return conexao;
	}
	
	static {
		//para solicitar conexao de qualquer lugar
		Conectar();
	}
	
	public SingleConexaoDB() {
		// TODO Auto-generated constructor stub
		Conectar();
	}

	private static void Conectar() {

		try {
			if (conexao == null) {
				Class.forName(driver);// carrega o drive de conexao com o banco
				conexao = DriverManager.getConnection(banco, usuario, senha);
				conexao.setAutoCommit(false);// para não efetuar alteções no banco sem comando prévio
			}

		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e);
			e.printStackTrace();
		}

	}

	
	

}
