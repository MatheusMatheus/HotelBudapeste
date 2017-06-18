package br.com.modelo.pagamento;

import java.time.YearMonth;

public class Cartao {
	private String nome;
	private String numero;
	private String cvv;
	private YearMonth validade;

	
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public YearMonth getValidade() {
		return validade;
	}

	public void setValidade(YearMonth validade) {
		this.validade = validade;
	}

}
