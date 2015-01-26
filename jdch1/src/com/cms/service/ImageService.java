package com.cms.service;

import java.util.List;

import com.cms.pojo.CmsImage;
import com.cms.vo.CmsImageVo;

public interface ImageService {

	/*
	 *获取总行数 
	 * */
	
	public int getAllRows(String sql);
	
	
	/*
	 * 获取所有image对象的List
	 * */
	public List<CmsImage> getImageList(String hql);
	
	
	/*
	 * 添加图片/相册
	 * */
	public boolean saveImage(Object obj);
	
	
	/**
	 * 获取List对象
	 * **/
	public List<CmsImage> getList(String sql);
	
	
	
	/**
	 * 修改对象
	 * **/
	public void updateImage(String sql);
	
	/**
	 * 获取单个CmsImage对象
	 * **/
	public CmsImage getOneObject(Integer id);
	
	
	/**
	 * 检查 重复
	 * **/
	public boolean checkName(String name,String value,String pid);
	
	/**
	 * 将相册设为首页展示
	 */
	public void updateByShows(String id);
	
	/**
	 * 获取前台首页展示的相册
	 */
	public List<CmsImage> getXiangCeByUp();
	
	
	/**
	 * 获取前台图片切换时间
	 * 
	 * **/
	public int getTime();
	
	
	/**
	 * 修改图片切换时间
	 * **/
	public boolean updateTime(int time);
	
}
