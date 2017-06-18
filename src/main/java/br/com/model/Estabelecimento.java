package br.com.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Embeddable;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
@Embeddable
public class Estabelecimento {
	@Id
	@GeneratedValue
	private long id;
	
	@Enumerated(EnumType.STRING)
	private TipoEstabelecimento tipo;
	private String cnpj;
	
	@Embedded
	private Localizacao localizacao;
	private String telefone;
	private int qtdQuartos;
	
	@OneToMany
	private List<Quarto> quartos;
	@OneToMany
	private List<Quarto> quartosDisponiveis;
	@OneToMany
	private List<Quarto> quartosOcupados;
	
	@ElementCollection
	private List<ComodidadeEstab> comodidades;
	
	@Enumerated(EnumType.STRING)
	private Avaliacao avaliacao;

	public Estabelecimento() {
		setQuartos(new ArrayList<Quarto>());
		setQuartosDisponiveis(new ArrayList<Quarto>());
		setQuartosOcupados(new ArrayList<Quarto>());
		this.comodidades = new ArrayList<ComodidadeEstab>();
	}

	public int getTotalVagas() {
		int vagas = 0;
		for (Quarto quarto : getQuartosDisponiveis()) {
			vagas += quarto.getQtdCamas();
		}
		return vagas;
	}

	private void getDisponibilidade() {
		for (Quarto quarto : getQuartos()) {
			if (quarto.isOcupado() == true)
				getQuartosOcupados().add(quarto);
			else
				getQuartosDisponiveis().add(quarto);
		}
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Avaliacao getAvaliacao() {
		return avaliacao;
	}

	public void setAvaliacao(Avaliacao avaliacao) {
		this.avaliacao = avaliacao;
	}

	public List<ComodidadeEstab> getComodidades() {
		return comodidades;
	}

	public void setComodidades(ComodidadeEstab comodidade) {
		this.comodidades.add(comodidade);
	}

	public void setTipo(TipoEstabelecimento tipo) {
		this.tipo = tipo;
	}

	public TipoEstabelecimento getTipo() {
		return tipo;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public int getQtdQuartos() {
		return qtdQuartos;
	}

	public void setQtdQuartos(int qtdQuartos) {
		this.qtdQuartos = qtdQuartos;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public Localizacao getLocalizacao() {
		return localizacao;
	}

	public void setLocalizacao(Localizacao localizacao) {
		this.localizacao = localizacao;
	}

	public List<Quarto> getQuartos() {
		return quartos;
	}

	public void setQuartos(List<Quarto> quartos) {
		this.quartos = quartos;
	}

	public List<Quarto> getQuartosDisponiveis() {
		return quartosDisponiveis;
	}

	public void setQuartosDisponiveis(List<Quarto> quartosDisponiveis) {
		this.quartosDisponiveis = quartosDisponiveis;
	}

	public List<Quarto> getQuartosOcupados() {
		return quartosOcupados;
	}

	public void setQuartosOcupados(List<Quarto> quartosOcupados) {
		this.quartosOcupados = quartosOcupados;
	}

}
