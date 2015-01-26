package com.cms.dao;

import java.util.List;

import com.cms.pojo.CmsImage;
import com.cms.vo.CmsImageVo;

public interface ImageDao {
	
	/*
	 * 获取总行数
	 * @param sql 回去总行数的查询语句
	 * */
	public int getRows(String sql);
	
	
	/**
	 * 获取所有图片列表List
	 * sql 回去所有列表List查询语句
	 * start起始位置
	 * end 结束位置
	 * */
	@SuppressWarnings("unchecked")
	public List getAllList(String sql);
	
	
	/**
	 * 添加图片
	 * @param sql 添加图片的insert sql 语句
	 * @param boolean 添加成功返回ture,失败返回false
	 * */
	public boolean saveObject(Object obj);
	
	
	/**
	 *修改图片信息 
	 * Objcet 返回修改后的对象
	 * */
	public void updateObject(String sql);
	
	
	/**
	 * 获取List
	 * */
	public List getList(String sql);
	
	/**
	 * 获取前台首页展示的相册
	 */
	public List<CmsImage> getXiangCeByUp();
	
	
}
