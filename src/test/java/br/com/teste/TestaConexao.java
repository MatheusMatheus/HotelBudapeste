package br.com.teste;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceUnit;
import javax.persistence.TypedQuery;

import br.com.model.Avaliacao;
import br.com.model.Cidade;
import br.com.model.ComodidadeEstab;
import br.com.model.Estabelecimento;
import br.com.model.Localizacao;
import br.com.model.Quarto;
import br.com.model.TipoEstabelecimento;

public class TestaConexao {
	@PersistenceUnit(name = "HotelBudapeste")
	static EntityManagerFactory factoryHotel;
	
	@PersistenceUnit(name = "HotelBudapeste")
	static EntityManager managerHotel;
	
	@PersistenceUnit(name = "World")
	static EntityManagerFactory factoryWorld;
	
	@PersistenceUnit(name = "World")
	static EntityManager managerWorld;	
	public static void main(String[] args) {
		
		System.out.println("Banco World");
		factoryWorld = Persistence.createEntityManagerFactory("world");
		managerWorld = factoryWorld.createEntityManager();
		
		String s = "select c from Cidade c where c.id = :id";
		TypedQuery<Cidade> query = managerWorld.createQuery(s, Cidade.class);
		query.setParameter("id", new Long(241));
		Cidade resultado = query.getSingleResult();
		System.out.println(resultado);

//		System.out.println("Banco hotel...");
//		factoryHotel = Persistence.createEntityManagerFactory("HotelBudapeste");
//		
//		System.out.println("Banco hotel criado");
	}
}
