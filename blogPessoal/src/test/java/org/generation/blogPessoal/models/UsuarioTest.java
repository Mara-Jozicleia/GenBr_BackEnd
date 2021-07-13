package org.generation.blogPessoal.models;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.generation.blogPessoal.model.Usuario;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
class UsuarioTest {
	
	public Usuario usuario;
	
	@Autowired
	private ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	Validator validator = factory.getValidator();
	
	
	@BeforeEach 
	public void start() {
		usuario = new Usuario("Mara Pereira", "marajozi", "232323");
	}
	

	@Test
	void testValidaAtributos(){
		Set<ConstraintViolation<Usuario>> validacao = validator.validate(usuario);
		assertTrue(validacao.isEmpty());
	}
	@Test
	void testValidaAtributosRetornaErro() {
		Usuario usuarioErro = new Usuario();
		usuarioErro.setNome("Mara Joziclea");
		Set<ConstraintViolation<Usuario>> validacao = validator.validate(usuarioErro);
		assertFalse(validacao.isEmpty());
		
	}

}
