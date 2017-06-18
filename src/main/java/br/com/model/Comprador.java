package br.com.model;

import java.time.LocalDate;

import javax.persistence.Entity;

@Entity
public class Comprador extends Hospede {
	private String email;
	private LocalDate dataNascimento;
	private Localizacao localizacao;
	private Login login;

	public String getEmail() {
		return email;
	}

	public Localizacao getLocalizacao() {
		return localizacao;
	}

	public void setLocalizacao(Localizacao localizacao) {
		this.localizacao = localizacao;
	}

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
}
