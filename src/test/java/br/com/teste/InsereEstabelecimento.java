package br.com.teste;

import br.com.model.ComodidadeEstab;
import br.com.model.Estabelecimento;
import br.com.model.TipoEstabelecimento;
import br.com.modelo.dao.EstabelecimentoDAO;

public class InsereEstabelecimento {
	public static void main(String[] args) {
		Estabelecimento estab = new Estabelecimento();
		estab.setAvaliacoes(null);
		estab.setCnpj("651651651616161");
		estab.setAvaliacoes(null);
		estab.setComodidades(ComodidadeEstab.ACADEMIA);
		estab.setLocalizacao(null);
		estab.setTelefone("561651");
		estab.setTipo(TipoEstabelecimento.HOTEL);
		
		EstabelecimentoDAO dao = new EstabelecimentoDAO();
		dao.salvar(estab);
	}
}
