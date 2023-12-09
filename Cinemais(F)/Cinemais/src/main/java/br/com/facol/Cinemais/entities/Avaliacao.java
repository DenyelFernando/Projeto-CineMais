package br.com.facol.Cinemais.entities;

public class Avaliacao {
	int id;
	int idUsuario;
	int idFilme;
	float nota;
	
	public Avaliacao() {
	}

	public Avaliacao(int id, int idUsuario, int idFilme, float nota) {
		super();
		this.id = id;
		this.idUsuario = idUsuario;
		this.idFilme = idFilme;
		this.nota = nota;
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

	public float getNota() {
		return nota;
	}

	public void setNota(float nota) {
		this.nota = nota;
	}
	
	
}
