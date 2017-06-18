package br.com.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Avaliacao {
	@Id
	@GeneratedValue
	private long id;
	@Enumerated(EnumType.STRING)
	private Critica critica;
	private int nota;
	private String avaliacao;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Critica getCritica() {
		return critica;
	}

	public void setCritica(Critica critica) {
		this.critica = critica;
	}

	public int getNota() {
		return nota;
	}

	public void setNota(int nota) {
		this.nota = nota;
	}

	public String getAvaliacao() {
		return avaliacao;
	}

	public void setAvaliacao(String avaliacao) {
		this.avaliacao = avaliacao;
	}

}
