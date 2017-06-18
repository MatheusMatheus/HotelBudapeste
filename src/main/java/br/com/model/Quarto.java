package br.com.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Quarto {
	private long id;
	private boolean solteiro;
	private int qtdCamas;
	private boolean ocupado;
	private List<Hospede> hospedes;
	private BigDecimal valorDiaria;
	private List<ComodidadeQuarto> comodidades;

	public Quarto() {
		setHospedes(new ArrayList<Hospede>());
		this.comodidades = new ArrayList<ComodidadeQuarto>();
	}
	
	public List<ComodidadeQuarto> getComodidades() {
		return comodidades;
	}

	public void setComodidade(ComodidadeQuarto comodidade) {
		this.comodidades.add(comodidade);
	}

	public BigDecimal getValorDiaria() {
		return valorDiaria;
	}

	public void setValorDiaria(BigDecimal valorDiaria) {
		this.valorDiaria = valorDiaria;
	}

	public List<Hospede> getHospedes() {
		return hospedes;
	}

	public void setHospedes(List<Hospede> hospedes) {
		this.hospedes = hospedes;
	}

	public boolean isOcupado() {
		return ocupado;
	}

	public void setOcupado(boolean ocupado) {
		this.ocupado = ocupado;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public boolean isSolteiro() {
		return solteiro;
	}

	public void setSolteiro(boolean solteiro) {
		this.solteiro = solteiro;
	}

	public int getQtdCamas() {
		return qtdCamas;
	}

	public void setQtdCamas(int qtdCamas) {
		this.qtdCamas = qtdCamas;
	}

}
