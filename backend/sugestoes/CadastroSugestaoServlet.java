package br.com.SistemaLogin.sugestoes;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.SistemaLogin.conexao.CriarConexao;



@WebServlet("/CadastroSugestao")
public class CadastroSugestaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    
    public CadastroSugestaoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nome = request.getParameter("txtNome");
		String email = request.getParameter("txtEmail");
		String sugestao = request.getParameter("txtSugestao");
		String topico = request.getParameter("txtTopico");
		
		
		try {
			Connection con = CriarConexao.getConexao();
			
			Sugestao l = new Sugestao();
			
			l.setNome(nome);
			
			l.setEmail(email);
			
			l.setSugestao(sugestao);
			
			l.setTopico(topico);
			
			
			SugestoesDAO dao = new SugestoesDAO(con);
			dao.adicionar(l);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
