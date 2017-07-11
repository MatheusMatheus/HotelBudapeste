package br.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "city")
public class Cidade {
	@Id
	@GeneratedValue
	private long id;

	@Column(name = "Name")
	private String nome;

	@Column(name = "CountryCode")
	private String codigoPais;

	@Column(name = "District")
	private String distrito;

	@Column(name = "Population")
	private int populacao;
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("\n\nID: " + getId());
		sb.append("\nNome: " + getNome());
		sb.append("\nCódigo do país: " + getCodigoPais());
		sb.append("\nDistrito: " + getDistrito());
		sb.append("\nPopulação: " + getPopulacao());
		return sb.toString();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCodigoPais() {
		return codigoPais;
	}

	public void setCodigoPais(String codigoPais) {
		this.codigoPais = codigoPais;
	}

	public String getDistrito() {
		return distrito;
	}

	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}

	public int getPopulacao() {
		return populacao;
	}

	public void setPopulacao(int populacao) {
		this.populacao = populacao;
	}

}
