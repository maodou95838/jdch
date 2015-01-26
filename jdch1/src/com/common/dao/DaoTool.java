package com.common.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

/**
 * @author   zhangkt
 * Data Access interface (DAOTOOL) .   This is an base dao interface
 * Common methods for each model object could be added here.
 * for example:get(),save(),update(),query()...
 *
 */
public interface DaoTool{
	
	/**
	 * 保存对象
	 * @param obj
	 */
    public void save(Object obj);
    
    /**
     * 保存或者更新对象
     * @param obj
     */
    public void saveOrUpdate(Object obj)throws Exception;

    /**
     * 更新对象
     * @param obj
     */
    public void update(Object obj);

    /**
     * 删除对象
     * @param obj
     */
    public void delete(Object obj);
    
    /**
     * 根据Class和主键获取对象
     * @param classz
     * @param pk
     * @return
     */
	@SuppressWarnings("unchecked")
	public Object get(Class classz, Serializable pk);
  
    @SuppressWarnings("unchecked")
	public List find(String queryString);
	public Object find1(String queryString);
    @SuppressWarnings("unchecked")
    public List find(String queryString, Object param);
    
    @SuppressWarnings("unchecked")
    public List find(String queryString, Object[] params);
    
    /**
     * 根据表名字段名获取List
     * @param table 表名
     * @param propertyName 字段名
     * @param value 值
     * @return 查询结果
     */
    
    @SuppressWarnings("unchecked")
	public List findByProperty(String table,String propertyName, Object value);
    
    public Query createQuery(Session session, String hql);
    public Query createQuery(  String hql);
    
    @SuppressWarnings("unchecked")
    public List createQuery(String hql, Integer start, Integer end);
    
    public Object createQueryInteger(String sql);
    
    public SQLQuery createSQLQuery(Session session, String sql);
    public SQLQuery createSQLQuery(  String sql);
    
    @SuppressWarnings("unchecked")
    public List createSQLList(String sql);
    
    public void createSQLUpdate(String sql);
    
    @SuppressWarnings("unchecked")
    public List createSQLQuery(String sql, Integer start, Integer end);
    
    public Integer createSQLInteger(String sql);
    
    @SuppressWarnings("unchecked")
    public Criteria createCriteria(Class classz);
    
    public Session createSession();
    
    @SuppressWarnings("unchecked")
    public void deleteAll(Collection c);
    
    @SuppressWarnings("unchecked")
    public void saveOrUpdateAll(Collection c);
    
    public void merge(Object obj);
    
    public void closeCreateSession(Session session);
    
    //2010-10-11 caisong
    public void saveOrFlush(Object obj);
}
