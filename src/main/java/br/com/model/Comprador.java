package br.com.model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Comprador extends Hospede {
	private String email;
	private LocalDate dataNascimento;
	
	@Embedded
	private Localizacao localizacao;
	
	@OneToOne(optional = false)
	private Login login;
	
	@OneToMany(mappedBy = "comprador")
	private List<Reserva> reservas;

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
