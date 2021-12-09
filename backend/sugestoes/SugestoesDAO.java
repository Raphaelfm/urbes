package br.com.SistemaLogin.sugestoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class SugestoesDAO {
	
	private Connection con;

	public SugestoesDAO(Connection con) {
		this.con = con;
	}

	public void adicionar(Sugestao l) throws SQLException {

		String sql = "insert into sugestoes(nome,email,sugestao, topico, localizacao)values(?,?,?,?,?)";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, l.getNome());
			stmt.setString(2, l.getEmail());
			stmt.setString(3, l.getSugestao());
			stmt.setString(4, l.getTopico());
			stmt.setString(5, l.getLocalizacao());
			

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
	}

}

