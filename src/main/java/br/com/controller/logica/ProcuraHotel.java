package br.com.controller.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.model.Estabelecimento;
import br.com.modelo.dao.EstabelecimentoDAO;

public class ProcuraHotel implements Logica{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Estabelecimento> estabelecimentos = new EstabelecimentoDAO().getList();
		return null;
	}

}
