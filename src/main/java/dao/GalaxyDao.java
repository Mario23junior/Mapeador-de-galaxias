package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.ConexaoMachin;
import model.Galaxy;

public class GalaxyDao implements OperacaoCrudAssinatur {

	private static Connection conexao = ConexaoMachin.createConnecton();
	private static String sql;

	public static void cricaoGalaxy(Galaxy g) {
		  sql = "insert into Galaxy values (null,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conexao.prepareStatement(sql);  
			  ps.setString(1, g.getNome());
			  ps.setString(2, g.getImg());
			  ps.setString(3, g.getAno());
			  ps.setString(4, g.getMagnitude());
			  ps.setString(5, g.getQtproxima());
			  ps.setString(6, g.getDistancia());
			  ps.setString(7, g.getConstelacao());
			  ps.setString(8, g.getDescricao());
			  ps.setString(9, g.getTipo());
			  ps.executeUpdate();
			  System.out.println("Sucesso");
		}catch (SQLException e) {
			System.out.println("Erro ao realizar  inclusao no banco de dados ");
		}
	};

//	  public static void eclusaoGalaxy(int galaxiId) {};
//	  public static Galaxy buscaIdGalaxy() {return null;}
//	  public static List<Galaxy> GalaxiaBuscaPor(String galaxyPesqu){return null;}
//	  public static void galaxyUpdate(Galaxy galaxy){};
}
