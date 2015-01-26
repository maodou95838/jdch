package com.common.dao.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.common.dao.DaoTool;

@SuppressWarnings("unchecked")
public class DaoToolImpl extends HibernateDaoSupport implements DaoTool {

	public void save(Object obj) {
		getHibernateTemplate().save(obj);
	}

	public void saveOrUpdate(Object obj) throws Exception{
		getHibernateTemplate().saveOrUpdate(obj);
	}

	public void update(Object obj) {
		getHibernateTemplate().update(obj);
	}

	public void delete(Object obj) {
		getHibernateTemplate().delete(obj);
	}

	public Object get(Class classz, Serializable pk) {
		Object obj = getHibernateTemplate().get(classz, pk);
		if (obj == null)
			return null;
		else
			getHibernateTemplate().initialize(obj);

		return obj;
	}

	public List find(String queryString) {
		return getHibernateTemplate().find(queryString);
	}

	public List find(String queryString, Object param) {
		return getHibernateTemplate().find(queryString, param);
	}

	public List find(String queryString, Object[] params) {
		return getHibernateTemplate().find(queryString, params);
	}

	public Query createQuery(Session session, String hql) {
		return session.createQuery(hql);
	}
	
	public List createQuery(String hql,  Integer start, Integer end) {
		Session session = super.getSession(true);
		try {
			Query query = session.createQuery(hql);
			if (start != null && end != null) {
				query.setFirstResult(start);
				query.setMaxResults(end);
			}
			return query.list();
		} catch (Exception e) {
			return null;
		} finally {
			releaseSession(session);
		}
	}
	
	public Object createQueryInteger(String sql) {
		Session session = super.getSession(true);
		try {
			Query query = session.createQuery(sql);
			return query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			releaseSession(session);
		}
	}

	public SQLQuery createSQLQuery(Session session, String sql) {
		return session.createSQLQuery(sql);
	}

	public void createSQLUpdate(String sql) {
		Session session = super.getSession(true);
		try {
			session.createSQLQuery(sql).executeUpdate();
		} finally {
			releaseSession(session);
		}
	}

	public List createSQLList(String sql) {
		Session session = super.getSession(true);
		try {
			SQLQuery query = session.createSQLQuery(sql);
			return query.list();
		} catch (Exception e) {
			return null;
		} finally {
			releaseSession(session);
		}
	}

	public List createSQLQuery(String sql, Integer start, Integer end) {
		Session session = super.getSession(true);
		try {
			SQLQuery query = session.createSQLQuery(sql);
			if (start != null && end != null) {
				query.setFirstResult(start);
				query.setMaxResults(end);
			}
			return query.list();
		} catch (Exception e) {
			return null;
		} finally {
			releaseSession(session);
		}
	}

	public Integer createSQLInteger(String sql) {
		Session session = super.getSession(true);
		try {
			SQLQuery query = session.createSQLQuery(sql);
			return (Integer) query.uniqueResult();
		} catch (Exception e) {
			return 0;
		} finally {
			releaseSession(session);
		}
	}

	public Criteria createCriteria(Class classz) {
		return super.getSession(true).createCriteria(classz);
	}

	public Session createSession() {
		return super.getSession(true);
	}
	
	public void closeCreateSession(Session session) {
		if(session != null) {
			releaseSession(session);
		}
	}

	public void deleteAll(Collection c) {
		getHibernateTemplate().deleteAll(c);
	}

	public void saveOrUpdateAll(Collection c) {
		getHibernateTemplate().saveOrUpdateAll(c);
	}

	public List findByProperty(String table, String propertyName, Object value) {

		String queryString = "from " + table + " as model where model."
				+ propertyName + "= ?";
		return getHibernateTemplate().find(queryString, value);

	}

	public void merge(Object obj) {
		getHibernateTemplate().merge(obj);
	}

	public Query createQuery(String hql) {
		 return this.getSession().createQuery(hql);
	}

	public SQLQuery createSQLQuery(String sql) {
		return this.getSession().createSQLQuery(sql);
	}
	
	 //2010-10-11 caisong
	public void saveOrFlush(Object obj) {
		getHibernateTemplate().save(obj);
		getHibernateTemplate().flush();
	}


	public Object find1(String queryString) {
		if(getHibernateTemplate().find(queryString)!=null && (getHibernateTemplate().find(queryString)).size()>0){
			return getHibernateTemplate().find(queryString).get(0);
		}else{
			return null;
		}
	}
}

