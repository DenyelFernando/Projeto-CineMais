package br.com.facol.Cinemais.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.facol.Cinemais.controller.DBConnection;
import br.com.facol.Cinemais.entities.Comentario;

public class ComentarioRepository {

	static public List<Comentario> listarComentariosPorFilme(String idFilme) {
		List<Comentario> comentarios = new ArrayList<>();
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "SELECT * FROM comentarios WHERE id_filme = ?";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setString(1, idFilme);

                Comentario comentario = new Comentario();

                ResultSet rs = declaracao.executeQuery();

                if(rs != null && rs.next()) {
                	
                	comentario.setId(rs.getInt("id"));
                	comentario.setIdUsuario(rs.getInt("id_usuario"));
                	comentario.setIdFilme(rs.getInt("id_filme"));
                	comentario.setComentario(rs.getString("comentario"));
                	
                	comentarios.add(comentario);
                    
                } else {
                	System.out.println("Comentarios não encontrados");
                }
                
                conexao.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return comentarios;
	}
}
