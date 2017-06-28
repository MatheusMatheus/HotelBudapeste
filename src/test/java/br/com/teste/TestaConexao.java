package br.com.teste;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.model.Avaliacao;
import br.com.model.ComodidadeEstab;
import br.com.model.Estabelecimento;
import br.com.model.Localizacao;
import br.com.model.Quarto;
import br.com.model.TipoEstabelecimento;

public class TestaConexao {
	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelBudapeste");

	}
}
