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
		
//		Localizacao localizacao = new Localizacao();
//		localizacao.setLogradouro("QR 151 aasdf 1651 asdf 15");
//		localizacao.setCep("13651616");
//		localizacao.setNumero(46);
//		
//		Estabelecimento estab = new Estabelecimento();
//		estab.setCnpj("546546546464");
//		estab.setTelefone("6546546");
//		estab.setQtdQuartos(50);
//		estab.setTipo(TipoEstabelecimento.HOTEL);
//		estab.setLocalizacao(localizacao);
//		
//		EntityManager manager = factory.createEntityManager();
//		manager.getTransaction().begin();
//		manager.persist(estab);
//		manager.getTransaction().commit();
		
/*

	@Embedded
	private Localizacao localizacao;

	@OneToMany
	private List<Quarto> quartos;
	@OneToMany
	private List<Quarto> quartosDisponiveis;
	@OneToMany
	private List<Quarto> quartosOcupados;

	@ElementCollection
	private List<ComodidadeEstab> comodidades;

	@OneToMany
	private List<Avaliacao> avaliacoes;

 * */

	}
}
