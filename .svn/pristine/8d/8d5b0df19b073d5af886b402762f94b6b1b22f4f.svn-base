package com.libmis.util;

import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleFragmenter;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.search.FullTextQuery;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.hibernate.search.SearchException;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.wltea.analyzer.lucene.IKAnalyzer;

@Component("hibernateTemplate")
public class MyHibernateTemplate extends HibernateTemplate {
	
	public MyHibernateTemplate(){
		//super.setCacheQueries(true);
	}

	private Analyzer analyzer = new IKAnalyzer();
	private SimpleHTMLFormatter simpleHTMLFormatter = new SimpleHTMLFormatter(
			"<font color='red'>", "</font>");

	@SuppressWarnings("unchecked")
	public List highLightSearch(final Class<?> entityType, final String search,
			final String... fields) throws DataAccessException, SearchException {
		return executeWithNativeSession(new HibernateCallback<List>() {
			public List doInHibernate(Session session)
					throws HibernateException {
				FullTextSession fullTextSession = Search
						.getFullTextSession(session);
				QueryBuilder qb = fullTextSession.getSearchFactory()
						.buildQueryBuilder().forEntity(entityType).get();
				org.apache.lucene.search.Query query = qb.keyword().onFields(
						fields).matching(search).createQuery();
				org.hibernate.Query hibQuery = fullTextSession
						.createFullTextQuery(query, entityType);
				prepareQuery(hibQuery);
				List list = hibQuery.list();

				SimpleHTMLFormatter simpleHTMLFormatter = new SimpleHTMLFormatter(
						"<font color='red'>", "</font>");
				Highlighter highlighter = new Highlighter(simpleHTMLFormatter,
						new QueryScorer(query));
				highlighter.setTextFragmenter(new SimpleFragmenter(128));

				// 利用反射将读到的model高亮处理
				for (Object obj : list) {
					Field[] fields = obj.getClass().getDeclaredFields();
					AccessibleObject.setAccessible(fields, true);
					for (Field field : fields) {
						if (String.class == field.getType()) {
							String temp = null;
							try {
								temp = (String) field.get(obj);
							} catch (IllegalArgumentException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (IllegalAccessException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							String highlightString = null;
							try {
								highlightString = highlighter.getBestFragment(
										analyzer, field.getName(), temp);
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (InvalidTokenOffsetsException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							if (highlightString != null) {
								try {
									field.set(obj, highlightString);
								} catch (IllegalArgumentException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (IllegalAccessException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
						}
					}
				}

				return list;
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List highLightSearch(final Class<?> entityType, final String search,
			final int startResult, final int maxResult, final String... fields)
			throws DataAccessException, SearchException {
		return executeWithNativeSession(new HibernateCallback<List>() {
			public List doInHibernate(Session session)
					throws HibernateException {
				FullTextSession fullTextSession = Search
						.getFullTextSession(session);
				QueryBuilder qb = fullTextSession.getSearchFactory()
						.buildQueryBuilder().forEntity(entityType).get();
				org.apache.lucene.search.Query query = qb.keyword().onFields(
						fields).matching(search).createQuery();
				org.hibernate.Query hibQuery = fullTextSession
						.createFullTextQuery(query, entityType);
				hibQuery.setFirstResult(startResult);
				hibQuery.setMaxResults(maxResult);
				prepareQuery(hibQuery);
				List list = hibQuery.list();

				Highlighter highlighter = new Highlighter(simpleHTMLFormatter,
						new QueryScorer(query));
				highlighter.setTextFragmenter(new SimpleFragmenter(128));

				// 利用反射将读到的model高亮处理
				for (Object obj : list) {
					Field[] fields = obj.getClass().getDeclaredFields();
					AccessibleObject.setAccessible(fields, true);
					for (Field field : fields) {
						if (String.class == field.getType()) {
							String temp = null;
							try {
								temp = (String) field.get(obj);
							} catch (IllegalArgumentException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (IllegalAccessException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							if(temp==null)
								continue;
							String highlightString = null;
							try {
								highlightString = highlighter.getBestFragment(
										analyzer, field.getName(), temp);
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (InvalidTokenOffsetsException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							if (highlightString != null) {
								try {
									field.set(obj, highlightString);
								} catch (IllegalArgumentException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (IllegalAccessException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
						}
					}
				}

				return list;
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List search(final Class<?> entityType, final String search,
			final String... fields) throws DataAccessException, SearchException {
		return executeWithNativeSession(new HibernateCallback<List>() {
			public List doInHibernate(Session session)
					throws HibernateException {
				FullTextSession fullTextSession = Search
						.getFullTextSession(session);
				QueryBuilder qb = fullTextSession.getSearchFactory()
						.buildQueryBuilder().forEntity(entityType).get();
				org.apache.lucene.search.Query query = qb.keyword().onFields(
						fields).matching(search).createQuery();
				org.hibernate.Query hibQuery = fullTextSession
						.createFullTextQuery(query, entityType);
				prepareQuery(hibQuery);
				return hibQuery.list();
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List search(final Class<?> entityType, final String search,
			final int startResult, final int maxResult, final String... fields)
			throws DataAccessException, SearchException {
		return executeWithNativeSession(new HibernateCallback<List>() {
			public List doInHibernate(Session session)
					throws HibernateException {
				FullTextSession fullTextSession = Search
						.getFullTextSession(session);
				QueryBuilder qb = fullTextSession.getSearchFactory()
						.buildQueryBuilder().forEntity(entityType).get();
				org.apache.lucene.search.Query query = qb.keyword().onFields(
						fields).matching(search).createQuery();
				org.hibernate.Query hibQuery = fullTextSession
						.createFullTextQuery(query, entityType);
				hibQuery.setFirstResult(startResult);
				hibQuery.setMaxResults(maxResult);
				prepareQuery(hibQuery);
				return hibQuery.list();
			}
		});
	}

	public Integer getSearchResultSize(final Class<?> entityType,
			final String search, final String... fields)
			throws DataAccessException, SearchException {
		return executeWithNativeSession(new HibernateCallback<Integer>() {
			public Integer doInHibernate(Session session)
					throws HibernateException {
				FullTextSession fullTextSession = Search
						.getFullTextSession(session);
				QueryBuilder qb = fullTextSession.getSearchFactory()
						.buildQueryBuilder().forEntity(entityType).get();
				org.apache.lucene.search.Query query = qb.keyword().onFields(
						fields).matching(search).createQuery();
				FullTextQuery fullTextQuery = fullTextSession
						.createFullTextQuery(query, entityType);
				return fullTextQuery.getResultSize();
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List find(final String queryString, final int startResult,
			final int maxResult, final Object... values)
			throws DataAccessException {
		return executeWithNativeSession(new HibernateCallback<List>() {
			public List doInHibernate(Session session)
					throws HibernateException {
				Query queryObject = session.createQuery(queryString);
				prepareQuery(queryObject);
				if (values != null) {
					for (int i = 0; i < values.length; i++) {
						queryObject.setParameter(i, values[i]);
					}
				}
				queryObject.setMaxResults(maxResult);
				queryObject.setFirstResult(startResult);
				return queryObject.list();
			}
		});
	}

	public Integer getResultSize(final String queryString,
			final Object... values) throws DataAccessException {
		return executeWithNativeSession(new HibernateCallback<Integer>() {
			public Integer doInHibernate(Session session)
					throws HibernateException {
				Query queryObject = session.createQuery(queryString);
				prepareQuery(queryObject);
				if (values != null) {
					for (int i = 0; i < values.length; i++) {
						queryObject.setParameter(i, values[i]);
					}
				}

				return ((Long) queryObject.iterate().next()).intValue();
			}
		});
	}

	@Override
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	public Analyzer getAnalyzer() {
		return analyzer;
	}

	public void setAnalyzer(Analyzer analyzer) {
		this.analyzer = analyzer;
	}

	public SimpleHTMLFormatter getSimpleHTMLFormatter() {
		return simpleHTMLFormatter;
	}

	public void setSimpleHTMLFormatter(SimpleHTMLFormatter simpleHTMLFormatter) {
		this.simpleHTMLFormatter = simpleHTMLFormatter;
	}
}
