package br.com.facol.Cinemais.controller;

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
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import br.com.facol.Cinemais.entities.Administrador;
import br.com.facol.Cinemais.entities.Usuario;

@WebServlet("/logar")
public class LogarServlet  extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String type = req.getParameter("type");
		
		if (type.equals("usuario")) {
			try (Connection conexao = DBConnection.getConnection()) {
	            String query = "SELECT * FROM usuarios WHERE nome_usuario = ?";
	            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
	                declaracao.setString(1, username);
	                
	                System.out.println(declaracao);

	                Usuario usuario = new Usuario();
	                
	                ResultSet rs = declaracao.executeQuery();

	                if(rs != null && rs.next()) {
	                	
	                	usuario.setId(rs.getInt("id"));
	                	usuario.setNomePessoal(rs.getString("nome_pessoal"));
	                	usuario.setNomeUsuario(rs.getString("nome_usuario"));
	                	usuario.setEmail(rs.getString("email"));
	                	usuario.setSenha(rs.getString("senha"));
	                	
	                	if (BCrypt.checkpw(password, usuario.getSenha())) {
	                		HttpSession session = req.getSession(false);
		                	session.setAttribute("tipo", "usuario");
		                	session.setAttribute("username", usuario.getNomeUsuario());
		                	
		                	resp.sendRedirect("/Cinemais");
	                	} else {
	                		
	                		resp.sendRedirect("Login.jsp?erro=1");
	                	}

	                	conexao.close();
	                    
	                } else {
	                	System.out.println("Usuario não encontrado");
	                	resp.sendRedirect("Login.jsp?erro=1");
	                    //resp.sendRedirect("registrar.html");
	                }
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            resp.sendRedirect("erro.html");
	        }
		} else if (type.equals("administrador")) {
			try (Connection conexao = DBConnection.getConnection()) {
	            String query = "SELECT * FROM administradores WHERE nome_usuario = ?";
	            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
	                declaracao.setString(1, username);
	                
	                System.out.println(declaracao);

	                Administrador administrador = new Administrador();
	                
	                ResultSet rs = declaracao.executeQuery();

	                if(rs != null && rs.next()) {
	                	
	                	administrador.setId(rs.getInt("id"));
	                	administrador.setNomePessoal(rs.getString("nome_pessoal"));
	                	administrador.setNomeUsuario(rs.getString("nome_usuario"));
	                	administrador.setEmail(rs.getString("email"));
	                	administrador.setSenha(rs.getString("senha"));
	                	
	                	if (BCrypt.checkpw(password, administrador.getSenha())) {
	                		HttpSession session = req.getSession(false);
		                	session.setAttribute("tipo", "administrador");
		                	session.setAttribute("username", administrador.getNomeUsuario());
		                	
		                	resp.sendRedirect("/Cinemais");
	                	} else {
	                		
	                		resp.sendRedirect("Login.jsp?erro=1");
	                	}

	                	conexao.close();
	                    
	                } else {
	                	System.out.println("Usuario não encontrado");
	                	resp.sendRedirect("Login.jsp?erro=1");
	                }
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            resp.sendRedirect("erro.html");
	        }
		}
	}
}