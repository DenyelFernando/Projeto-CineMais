package br.com.facol.Cinemais.entities;

public class Usuario {
	int id;
	String nomePessoal;
	String nomeUsuario;
	String email;
	String senha;
	
	public Usuario() {
		
	}

	public Usuario(int id, String nomePessoal, String nomeUsuario, String email, String senha) {
		super();
		this.id = id;
		this.nomePessoal = nomePessoal;
		this.nomeUsuario = nomeUsuario;
		this.email = email;
		this.senha = senha;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomePessoal() {
		return nomePessoal;
	}

	public void setNomePessoal(String nomePessoal) {
		this.nomePessoal = nomePessoal;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nomePessoal=" + nomePessoal + ", nomeUsuario=" + nomeUsuario + ", email="
				+ email + ", senha=" + senha + "]";
	}
	
}
