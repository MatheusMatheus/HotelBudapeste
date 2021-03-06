package br.com.modelo.dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

public class GenericDao<T, I extends Serializable> {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelBudapeste");
	protected EntityManager entityManager = factory.createEntityManager();;
	private Class<T> persistedClass;

	protected GenericDao() {
		// TODO Auto-generated constructor stub
	}

	protected GenericDao(Class<T> persistedClass) {
		this();
		this.persistedClass = persistedClass;
	}

	public T salvar(T entity) {
		EntityTransaction t = entityManager.getTransaction();
		t.begin();
		entityManager.merge(entity);
		entityManager.flush();
		t.commit();
		return entity;
	}

	public T atualizar(T entity) {
		EntityTransaction t = entityManager.getTransaction();
		t.begin();
		entityManager.merge(entity);
		entityManager.flush();
		t.commit();
		return entity;
	}

	public void remover(I id) {
		T entity = encontrar(id);
		EntityTransaction tx = entityManager.getTransaction();
		tx.begin();
		T mergedEntity = entityManager.merge(entity);
		entityManager.remove(mergedEntity);
		entityManager.flush();
		tx.commit();
	}

	public List<T> getList() {
		CriteriaBuilder builder = entityManager.getCriteriaBuilder();
		CriteriaQuery<T> query = builder.createQuery(persistedClass);
		query.from(persistedClass);
		return entityManager.createQuery(query).getResultList();
	}

	public T encontrar(I id) {
		return entityManager.find(persistedClass, id);
	}
	
	public T econtrarPorString(String str) {
		return entityManager.find(persistedClass, str);
	}
}
