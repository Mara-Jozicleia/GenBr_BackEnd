package org.generation.lojaDeGames.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "produto")

public class Produto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idProduto;

	@NotNull(message = "Campo Não pode ser Nulo")
	@Size(min = 2, max = 30)
	private String nome;

	@NotNull(message = "Campo Não pode ser Nulo")
	@Size(min = 10, max = 200)
	private String descricao;

	@NotNull(message = "Campo Não pode ser Nulo")
	private double preco;

	@NotNull(message = "Campo Não pode ser Nulo")
	private int codigo;


	@ManyToOne
	@JsonIgnoreProperties({ "produto" })
	private Categoria categoria;

	@ManyToOne
	@JsonIgnoreProperties({ "produto" })
	private Usuario usuario;

	public Long getIdProduto() {
		return idProduto;
	}

	public void setIdProduto(Long idProduto) {
		this.idProduto = idProduto;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
