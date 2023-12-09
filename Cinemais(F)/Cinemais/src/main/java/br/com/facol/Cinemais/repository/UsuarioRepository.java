package br.com.facol.Cinemais.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import br.com.facol.Cinemais.controller.DBConnection;
import br.com.facol.Cinemais.entities.Usuario;

public class UsuarioRepository {
	
	public static Usuario buscarUsuarioPorId(int idUsuario) {
		Usuario usuario = new Usuario();
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "SELECT * FROM usuarios WHERE id = ?";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setInt(1, idUsuario);

                

                ResultSet rs = declaracao.executeQuery();

                if(rs != null && rs.next()) {
                	
                	usuario.setId(rs.getInt("id"));
                	usuario.setNomePessoal(rs.getString("nome_pessoal"));
                	usuario.setNomeUsuario(rs.getString("nome_usuario"));
                	usuario.setEmail(rs.getString("email"));
                	usuario.setSenha(rs.getString("senha"));
                    
                } else {
                	System.out.println("usuario não encontrado");
                }
                
                conexao.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return usuario;
	}
	
	public static Usuario buscarUsuarioPorUsername(String username) {
		Usuario usuario = new Usuario();
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "SELECT * FROM usuarios WHERE nome_usuario = ?";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setString(1, username);

                ResultSet rs = declaracao.executeQuery();

                if(rs != null && rs.next()) {
                	
                	usuario.setId(rs.getInt("id"));
                	usuario.setNomePessoal(rs.getString("nome_pessoal"));
                	usuario.setNomeUsuario(rs.getString("nome_usuario"));
                	usuario.setEmail(rs.getString("email"));
                	usuario.setSenha(rs.getString("senha"));
                    
                } else {
                	System.out.println("usuario não encontrado");
                }
                
                conexao.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return usuario;
	}
}
