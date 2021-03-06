package br.edu.utfpr.aulaVraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.edu.utfpr.aulaVraptor.model.Cliente;

/**
 * Controlador básico para exemplo inicial de funcionamento dos controladores.
 * @author forchesatto
 *
 */

@Controller
public class IndexController {

	@Inject
	private Result result;
	
	public void ola(){
		System.out.println("Passou no ola");
		result.include("teste", "Valor que veio do controller");
		
	}
	
	@IncludeParameters
	public void valorView(Cliente cliente){
		result.include("nome", cliente.getNome()+" Servidor");
		result.include("codigo", cliente.getCodigo());
	}
	
	@Get("/")
	public void index(){
	}
}
