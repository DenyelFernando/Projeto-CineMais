package br.com.facol.Cinemais.entities;

public class Comentario {
	int id;
	int idUsuario;
	int idFilme;
	String comentario;
	public Comentario() {
		super();
	}
	public Comentario(int id, int idUsuario, int idFilme, String comentario) {
		super();
		this.id = id;
		this.idUsuario = idUsuario;
		this.idFilme = idFilme;
		this.comentario = comentario;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public int getIdFilme() {
		return idFilme;
	}
	public void setIdFilme(int idFilme) {
		this.idFilme = idFilme;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
	
}
