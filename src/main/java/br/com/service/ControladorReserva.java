package br.com.service;

import java.time.LocalDate;
import java.util.List;

import br.com.model.Cidade;
import br.com.model.Quarto;
import br.com.model.Reserva;

public class ControladorReserva {
	private Cidade cidade;
	private Reserva reserva;
	private LocalDate dtInicialDesejada;
	private LocalDate dtFinalDesejada;
	private Quarto quarto;

	public ControladorReserva() {

	}

	// public boolean verificaDisponibilidade() {
	// if (getReserva().getDataInicial().isBefore(getDtInicial())) {
	// if (getReserva().getDataFinal().isAfter(getDtFinal())) {
	// getQuarto().setOcupado(true);
	// }
	// }
	// return false;
	// }
	
	public boolean verificaDisponibilidade() {
		return true;
	}


}
