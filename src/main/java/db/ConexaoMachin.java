package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoMachin {

	private static final String urlAcess = "jdbc:mysql://localhost:3306/galaxyMapper";
	private static final String user = "root";
	private static final String senha = "P@ssw0ord2";

	public static Connection createConnecton() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver fund");
		} catch (ClassNotFoundException e) {
              System.out.println("Driver não encontrado "+ e.getMessage());
		}
		
		try {
			Connection conexao = DriverManager.getConnection(urlAcess, user, senha);
			System.out.println("Conectado com sucesso");
			return conexao;
		} catch (SQLException e) {
			System.out.println("Erro ao conectar com o banco de dados "+ e.getMessage());
			return null ;
		}
	}
}
