package dao;

import java.sql.Connection;

import db.ConexaoMachin;
import model.Galaxy;

public class GalaxyDao implements OperacaoCrudAssinatur {

	private static Connection connection = ConexaoMachin.createConnecton();
	private static String sql;

	public static void cricaoGalaxy(Galaxy galaxy) {
		String sql = "insert into Galaxy (nome, img,ano,magnitude, qtproxima, distancia , constelacao , descricao, tipo) values (?,?,?,?,?,?,?,?,?)";
	};

//	  public static void eclusaoGalaxy(int galaxiId) {};
//	  public static Galaxy buscaIdGalaxy() {return null;}
//	  public static List<Galaxy> GalaxiaBuscaPor(String galaxyPesqu){return null;}
//	  public static void galaxyUpdate(Galaxy galaxy){};
}
