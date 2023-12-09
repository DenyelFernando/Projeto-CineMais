package br.com.facol.Cinemais.controller;

import org.mindrot.jbcrypt.BCrypt;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nomeCompleto = request.getParameter("fullName");
        String nomeUsuario = request.getParameter("username");
        String email = request.getParameter("email");
        String senha = request.getParameter("password");
        
        String salt = BCrypt.gensalt();
        String hashSenha = BCrypt.hashpw(senha, salt);

        try (Connection conexao = DBConnection.getConnection()) {
            String query = "INSERT INTO usuarios (nome_pessoal, nome_usuario, email, senha) VALUES (?,?,?,?)";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setString(1, nomeCompleto);
                declaracao.setString(2, nomeUsuario);
                declaracao.setString(3, email);
                declaracao.setString(4, hashSenha);

                int linhasAfetadas = declaracao.executeUpdate();

                if (linhasAfetadas > 0) {
                    // Obtém o ID gerado automaticamente
                    try (ResultSet generatedKeys = declaracao.getGeneratedKeys()) {
                        if (generatedKeys.next()) {
                            long idUsuario = generatedKeys.getLong(1);
                            // Use o ID do usuário conforme necessário
                            System.out.println("ID do usuário gerado: " + idUsuario);
                        }
                    }

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