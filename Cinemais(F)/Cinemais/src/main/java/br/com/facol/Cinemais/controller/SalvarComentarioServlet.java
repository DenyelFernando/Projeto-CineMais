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

@WebServlet("/salvarComentario")
public class SalvarComentarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		String idUsuario = request.getParameter("id_usuario");
		String idFilme = request.getParameter("id_filme");
		String comentario = request.getParameter("comentario");
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "INSERT INTO comentarios (id_usuario, id_filme, comentario) VALUES (?,?,?)";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setInt(1, Integer.parseInt(idUsuario));
                declaracao.setInt(2, Integer.parseInt(idFilme));
                declaracao.setString(3, comentario);

                int linhasAfetadas = declaracao.executeUpdate();

                if (linhasAfetadas > 0) {
                    response.sendRedirect("Filme.jsp?id="+idFilme);
                } else {
                    
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("erro.html");
        }
		
	}
}
