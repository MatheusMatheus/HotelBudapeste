package br.com.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Quarto {

	@Id
	@GeneratedValue
	private long id;
	private boolean solteiro;
	private int qtdCamas;
	private boolean ocupado;
	private BigDecimal valorDiaria;

	@ElementCollection
	private Collection<ComodidadeQuarto> comodidades;

	@OneToOne(mappedBy = "quarto", cascade = CascadeType.ALL)
	private Reserva reserva;

	@Lob
	private byte[][] fotos;
	// File file = new File("img/JBDFav300.png");
	// byte[] picInBytes = new byte[(int) file.length()];
	// FileInputStream fileInputStream = new FileInputStream(file);
	// fileInputStream.read(picInBytes);
	// fileInputStream.close();
	// user.setProfilePic(picInBytes);

	public Quarto() {
		this.comodidades = new ArrayList<ComodidadeQuarto>();
	}

	public void addReserva(Reserva reserva) {
		this.reserva = reserva;
		reserva.setQuarto(this);
	}

	public Collection<ComodidadeQuarto> getComodidades() {
		return comodidades;
	}

	public void setComodidade(ComodidadeQuarto comodidade) {
		this.comodidades.add(comodidade);
	}

	public BigDecimal getValorDiaria() {
		return valorDiaria;
	}

	public void setValorDiaria(BigDecimal valorDiaria) {
		this.valorDiaria = valorDiaria;
	}

	public boolean isOcupado() {
		return ocupado;
	}

	public void setOcupado(boolean ocupado) {
		this.ocupado = ocupado;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public boolean isSolteiro() {
		return solteiro;
	}

	public void setSolteiro(boolean solteiro) {
		this.solteiro = solteiro;
	}

	public int getQtdCamas() {
		return qtdCamas;
	}

	public void setQtdCamas(int qtdCamas) {
		this.qtdCamas = qtdCamas;
	}

	public byte[][] getFotos() {
		return fotos;
	}

	public void setFotos(byte[][] fotos) {
		this.fotos = fotos;
	}

	public void setComodidades(List<ComodidadeQuarto> comodidades) {
		this.comodidades = comodidades;
	}

	public void setComodidades(Collection<ComodidadeQuarto> comodidades) {
		this.comodidades = comodidades;
	}

	public Reserva getReserva() {
		return reserva;
	}

}
