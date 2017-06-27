package br.com.modelo.dao;

import java.util.Collection;
import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;

import br.com.model.Cidade;
import br.com.model.Estabelecimento;

public class CidadeDAO extends GenericDao {

	public CidadeDAO() {
		super(Cidade.class);
	}


}
