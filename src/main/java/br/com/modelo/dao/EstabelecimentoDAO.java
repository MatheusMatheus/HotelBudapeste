package br.com.modelo.dao;

import br.com.model.Estabelecimento;

public class EstabelecimentoDAO extends GenericDao<Estabelecimento, Long>{
	public EstabelecimentoDAO(){
		super(Estabelecimento.class);
	}
}
