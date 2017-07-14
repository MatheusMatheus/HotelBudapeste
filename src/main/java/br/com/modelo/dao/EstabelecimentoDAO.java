package br.com.modelo.dao;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;

import br.com.model.Cidade;
import br.com.model.Estabelecimento;

public class EstabelecimentoDAO extends GenericDao<Estabelecimento, Long>{
	public EstabelecimentoDAO(){
		super(Estabelecimento.class);
	}
	
	public List<Estabelecimento> getEstabVagos(LocalDate dataInicial, LocalDate dataFinal) {
		TypedQuery<Estabelecimento> query = entityManager.createQuery("SELECT e FROM Estabelecimento", Estabelecimento.class);
		return query.getResultList();
	}
	
//	public List<Estabelecimento> buscaEstabelecimentos() {
//		Query query = entityManager.createQuery("SELECT DISTINCT e FROM Cidade c, IN(c.estabelecimentos) e");
//		return query.getResultList();
//	}
}
