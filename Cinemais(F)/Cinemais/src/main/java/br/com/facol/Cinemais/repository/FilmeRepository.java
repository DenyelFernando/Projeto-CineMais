package br.com.facol.Cinemais.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.facol.Cinemais.controller.DBConnection;
import br.com.facol.Cinemais.entities.Filme;

public class FilmeRepository {
	
	public void cadastrar(Filme filme) {
		
	}
	
	static public Filme buscarPorId(int id) {
		Filme filme = new Filme();
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "SELECT * FROM filmes WHERE id = ?";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setInt(1, id);
                
                ResultSet rs = declaracao.executeQuery();

                if(rs != null && rs.next()) {
                	
                	filme.setId(rs.getInt("id"));
                	filme.setTitulo(rs.getString("titulo"));
                	filme.setAno(rs.getInt("ano_lancamento"));
                	filme.setGenero(rs.getString("genero"));
                	filme.setDescricao(rs.getString("descricao"));
                    
                } else {
                	System.out.println("Filme não encontrado");
                }
                
                conexao.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return filme;
	}
	
	public List<Filme> listarFilmes(){
		return null;
	}
	
	static public List<Filme> listarPorGenero(String genero){
		List<Filme> filmes = new ArrayList<Filme>();
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "SELECT * FROM filmes WHERE genero = ?";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setString(1, genero);

                Filme filme = new Filme();
                
                ResultSet rs = declaracao.executeQuery();

                if(rs != null && rs.next()) {
                	
                	filme.setId(rs.getInt("id"));
                	filme.setTitulo(rs.getString("titulo"));
                	filme.setAno(rs.getInt("ano_lancamento"));
                	filme.setGenero(rs.getString("genero"));
                	filme.setDescricao(rs.getString("descricao"));
                	
                	filmes.add(filme);
                    
                } else {
                	System.out.println("Filmes não encontrados");
                }
                
                conexao.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

		return filmes;
	}
	
	static public List<Filme> listarPorAno(int ano){
		List<Filme> filmes = new ArrayList<Filme>();
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "SELECT * FROM filmes WHERE ano_lancamento = ?";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setInt(1, ano);

                Filme filme = new Filme();
                
                ResultSet rs = declaracao.executeQuery();

                if(rs != null && rs.next()) {
                	
                	filme.setId(rs.getInt("id"));
                	filme.setTitulo(rs.getString("titulo"));
                	filme.setAno(rs.getInt("ano_lancamento"));
                	filme.setGenero(rs.getString("genero"));
                	filme.setDescricao(rs.getString("descricao"));
                	
                	filmes.add(filme);
                    
                } else {
                	System.out.println("Filmes não encontrados");
                }
                
                conexao.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

		return filmes;
	}
	
	static public List<Filme> listarEntreAnos(int anoInicio, int anoFim){
		List<Filme> filmes = new ArrayList<Filme>();
		
		try (Connection conexao = DBConnection.getConnection()) {
            String query = "SELECT * FROM filmes WHERE ano_lancamento BETWEEN ? AND ?";
            try (PreparedStatement declaracao = conexao.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setInt(1, anoInicio);
                declaracao.setInt(2, anoFim);

                Filme filme = new Filme();
                
                ResultSet rs = declaracao.executeQuery();

                if(rs != null && rs.next()) {
                	
                	filme.setId(rs.getInt("id"));
                	filme.setTitulo(rs.getString("titulo"));
                	filme.setAno(rs.getInt("ano_lancamento"));
                	filme.setGenero(rs.getString("genero"));
                	filme.setDescricao(rs.getString("descricao"));
                	
                	filmes.add(filme);
                    
                } else {
                	System.out.println("Filmes não encontrados");
                }
                
                conexao.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

		return filmes;
	}
}
