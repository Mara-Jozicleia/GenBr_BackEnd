package org.generation.lojaDeGames.controller;

import java.util.List;

import javax.validation.Valid;

import org.generation.lojaDeGames.model.Produto;
import org.generation.lojaDeGames.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/produto")
public class ProdutoController {

	@Autowired
	private ProdutoRepository produto;

	@GetMapping
	public ResponseEntity<List<Produto>> GetAll() {
		return ResponseEntity.ok(produto.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Produto> GetById(@PathVariable Long id) {
		return produto.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/descricao/{descricao}")
	public ResponseEntity<List<Produto>> GetByDescricao(@Valid @PathVariable String descricao) {
		return ResponseEntity.ok(produto.findAllByDescricaoContainingIgnoreCase(descricao));
	}

	@PostMapping
	public ResponseEntity<Produto> post(@Valid @RequestBody Produto produto1) {
		return ResponseEntity.status(HttpStatus.CREATED).body(produto.save(produto1));
	}

	@PutMapping
	public ResponseEntity<Produto> put(@Valid @RequestBody Produto produto1) {
		return ResponseEntity.status(HttpStatus.OK).body(produto.save(produto1));
	}

	@DeleteMapping("/{id}")
	public void delete(@Valid @PathVariable Long id) {
		produto.deleteById(id);
	}

}
