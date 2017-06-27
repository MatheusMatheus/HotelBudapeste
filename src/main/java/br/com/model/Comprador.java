package br.com.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
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

	@OneToOne(optional = false, cascade = CascadeType.ALL, orphanRemoval = true)
	private Login login;

	@OneToMany(mappedBy = "comprador", cascade = CascadeType.ALL)
	private List<Reserva> reservas;
	
	public Comprador() {
		setReservas(new ArrayList<Reserva>());
	}
	
	public void addReserva(Reserva reserva) {
		getReservas().add(reserva);
		reserva.setComprador(this);
	}

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

	public List<Reserva> getReservas() {
		return reservas;
	}

	public void setReservas(List<Reserva> reservas) {
		this.reservas = reservas;
	}

}
