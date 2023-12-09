package br.com.facol.Cinemais.entities;

public class Filme {
	int id;
	String titulo;
	String descricao;
	int ano;
	String genero;
	
	public Filme() {
		super();
	}

	public Filme(int id, String titulo, String descricao, int ano, String genero) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.ano = ano;
		this.genero = genero;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
}
