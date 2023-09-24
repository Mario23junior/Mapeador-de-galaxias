package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
		} catch (SQLException e) {
			System.out.println("Erro ao realizar  inclusao no banco de dados ");
		}
	};

	public static List<Galaxy> GalaxiaBuscaPor(String pesquisa) {
		sql = String.format("select * from Galaxy where nome like '%s%%' or tipo like '%s%%'", pesquisa, pesquisa);
		List<Galaxy> g = new ArrayList<Galaxy>();

		try {
			Statement statament = conexao.createStatement();
			ResultSet result = statament.executeQuery(sql);

			while (result.next()) {
				Galaxy galaxi = new Galaxy();
				galaxi.setId(result.getInt("id"));
				galaxi.setNome(result.getString("nome"));
				galaxi.setAno(result.getString("ano"));
				galaxi.setMagnitude(result.getString("magnitude"));
				galaxi.setQtproxima(result.getString("qtproxima"));
				galaxi.setDistancia(result.getString("distancia"));
				galaxi.setConstelacao(result.getString("constelacao"));
				galaxi.setTipo(result.getString("tipo"));
				g.add(galaxi);
			}

			System.out.println("Correto busca por galaxias");
			return g;

		} catch (SQLException e) {
			System.out.println("Falha na busca por galaxias :( " + e.getMessage());
			return null;
		}

	}

	public static void exclusaoGalaxy(int galaxiId) {
		sql = "DELETE FROM Galaxy where id = ?";

		try {
			PreparedStatement pr = conexao.prepareStatement(sql);
			pr.setInt(1, galaxiId);
			pr.executeUpdate();
			System.out.println("Deletação realizada com sucessso");
		} catch (SQLException e) {
			System.out.println("Erro ao deletar galxia erro :" + e.getMessage());
		}
	};

	public static void galaxyUpdate(Galaxy galaxy) {
	};
}
