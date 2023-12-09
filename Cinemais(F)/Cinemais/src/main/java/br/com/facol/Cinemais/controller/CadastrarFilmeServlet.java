package br.com.facol.Cinemais.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastrarFilme")
public class CadastrarFilmeServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		String titulo = request.getParameter("movieName");
		String ano = request.getParameter("movieYear");
		String descricao = request.getParameter("movieDescription");
		String genero = request.getParameter("movieGenre");
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "INSERT INTO filmes (titulo, ano_lancamento, genero, descricao) VALUES (?,?,?,?)";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setString(1, titulo);
                declaracao.setInt(2, Integer.parseInt(ano));
                declaracao.setString(3, genero);
                declaracao.setString(4, descricao);

                int linhasAfetadas = declaracao.executeUpdate();

                if (linhasAfetadas > 0) {
                    // Registro bem-sucedido, redireciona para uma página de sucesso
                    response.sendRedirect("TelaInicial.jsp");
                } else {
                    // Falha no registro, redireciona para uma página de falha
                    response.sendRedirect("registrar.html");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("erro.html");
        }
	}
}
