package br.com.modelo.pagamento;

import java.math.BigDecimal;

public interface MetodoPagamento {
	public void pagar(BigDecimal valor);
}
