package br.edu.utfpr.aulaVraptor.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import br.edu.utfpr.aulaVraptor.model.Produto;

@Stateless
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager em;
	
	public void inserir(Produto produto) {
		em.persist(produto);
	}
	
	public void alterar(Produto produto) {
		em.merge(produto);
	}
	
	public void remover(Long codigo) {
		em.remove(em.getReference(Produto.class, codigo));
	}

	public List<Produto> listAll() {
		return em.createQuery("select o from Produto o", Produto.class).getResultList();
	}

	public Produto load(Long codigo) {
		TypedQuery<Produto> query = em.createQuery("select o from Produto o where o.codigo=:codigo", Produto.class);
		query.setParameter("codigo", codigo);
		return query.getSingleResult();
	}

	public List<Produto> list(String nome) {
		TypedQuery<Produto> query = em.createQuery("select o from Produto o where o.nome like :nome", Produto.class);
		query.setParameter("nome", "%"+nome+"%");
		return query.getResultList();
	}
	
	
}
