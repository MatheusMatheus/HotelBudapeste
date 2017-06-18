package br.com.model;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Reserva {
	@Id
	@GeneratedValue
	private long id;
	private BigDecimal valorBase;
	@Temporal(TemporalType.DATE)
	private LocalDate dataInicial;
	@Temporal(TemporalType.DATE)
	private LocalDate dataFinal;

	@OneToMany
	private Quarto quarto;
	
	@OneToMany
	private Hospede hospede;

	public BigDecimal getValorReserva() {
		long dias = getQtdDias(dataInicial, dataFinal);
		BigDecimal valorQuarto = getQuarto().getValorDiaria();
		BigDecimal taxaSistema = getTaxaSistema(valorQuarto);
		return valorQuarto.multiply(new BigDecimal(dias)).multiply(taxaSistema);
	}

	public long getQtdDias(LocalDate inicio, LocalDate fim) {
		return ChronoUnit.DAYS.between(inicio, fim);
	}

	public BigDecimal getTaxaSistema(BigDecimal valorQuarto) {
		if (valorQuarto.compareTo(new BigDecimal(100)) < 1)
			return new BigDecimal(1.2);
		else if (valorQuarto.compareTo(new BigDecimal(200)) < 1) {
			return new BigDecimal(1.1);
		} else {
			return new BigDecimal(1.07);
		}
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getValorBase() {
		return valorBase;
	}

	public void setValorBase(BigDecimal valorBase) {
		this.valorBase = valorBase;
	}

	public LocalDate getDataInicial() {
		return dataInicial;
	}

	public void setDataInicial(LocalDate dataInicial) {
		this.dataInicial = dataInicial;
	}

	public LocalDate getDataFinal() {
		return dataFinal;
	}

	public void setDataFinal(LocalDate dataFinal) {
		this.dataFinal = dataFinal;
	}

	public Quarto getQuarto() {
		return quarto;
	}

	public void setQuarto(Quarto quarto) {
		this.quarto = quarto;
	}

	public Hospede getHospede() {
		return hospede;
	}

	public void setHospede(Hospede hospede) {
		this.hospede = hospede;
	}
}
