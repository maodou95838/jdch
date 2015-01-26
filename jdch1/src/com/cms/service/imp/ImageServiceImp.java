package com.cms.service.imp;

import java.util.List;

import com.cms.dao.ImageDao;
import com.cms.pojo.CmsImage;
import com.cms.pojo.CmsShowtime;
import com.cms.service.ImageService;
import com.cms.vo.CmsImageVo;

public class ImageServiceImp implements ImageService {

	private ImageDao imageDao;
	@Override
	public int getAllRows(String sql) {
		// TODO Auto-generated method stub
		StringBuilder sb = new StringBuilder(" SELECT  COUNT(c) FROM CmsImage as c WHERE c.isdel=0 ");
		if(sql!=null){
			sb.append(sql);
		}
		return imageDao.getRows(sb.toString());
	}

	@Override
	public List<CmsImage> getImageList(String hql) {
		// TODO Auto-generated method stub
		StringBuilder sb = new StringBuilder(" select c from CmsImage c WHERE c.isdel=0 ");
		if(hql!=null && hql.length()>0){
			sb.append(hql);
		}
		List<CmsImage> list = imageDao.getAllList(sb.toString());
		if(list!=null && list.size()>0)
			return list;
		else
			return null;
	}

	
	/**
	 * 添加相册/图片
	 * */
	@Override
	public boolean saveImage(Object obj) {
		// TODO Auto-generated method stub
		return imageDao.saveObject(obj);
	}

	@Override
	public List<CmsImage> getList(String sql) {
		// TODO Auto-generated method stub
		StringBuilder sb = new StringBuilder("select c FROM CmsImage c WHERE c.isdel=0");
		if(sql!=null && sql.length()>0)
			sb.append(" and ").append(sql);
		List<CmsImage> list = imageDao.getList(sb.toString());
		if(list!=null && list.size()>0)
			return list;
		else
			return null;
	}
	
	
	/**
	 * 修改CmsImage
	 * **/
	@Override
	public void updateImage(String sql) {
		// TODO Auto-generated method stub
		if(sql !=null && sql.length()>0){
			String sqls = "update cms_image set"+sql;
			try {
				imageDao.updateObject(sqls);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@Override
	public CmsImage getOneObject(Integer id) {
		String sql = "select c from CmsImage c where c.isdel=0 and c.imgId="+id;
		List<CmsImage> list = imageDao.getList(sql);
		if(list!=null && list.size()>0)
			return list.get(0);
		else
			return null;
	}
	
	
	public ImageDao getImageDao() {
		return imageDao;
	}

	public void setImageDao(ImageDao imageDao) {
		this.imageDao = imageDao;
	}
	
	
	/**
	 * 检查重复
	 * 
	 * **/
	@Override
	public boolean checkName(String name,String value,String pid) {
		StringBuilder sb = new StringBuilder("select c from CmsImage c where 1=1 and c.isdel=0 ");
		if(name!=null && name.length()>0 && value!=null && value.length()>0){
			sb.append(" and ").append(name).append("=").append("'").append(value).append("'");
		}
		if(pid!=null && pid.length()>0)
			sb.append(" and c.parentId=").append(Integer.parseInt(pid));
		List list = imageDao.getList(sb.toString());
		if(list!=null && list.size()>0)
			return false;
		else
			return true;
	}
	
	/**
	 * 将相册设为首页展示
	 */
	@Override
	public void updateByShows(String id) {
		StringBuffer sql = new StringBuffer(" update cms_image set shows=0 where shows=1 ");
		StringBuffer sql2 = new StringBuffer(" update cms_image set shows=1 where img_id=");
		sql2.append(id);
		try {
			imageDao.updateObject(sql.toString());
			imageDao.updateObject(sql2.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 获取前台首页展示的相册
	 */
	@Override
	public List<CmsImage> getXiangCeByUp() {
		try {
			List<CmsImage> list = imageDao.getXiangCeByUp();
			if(list.size()>=0 && list!=null){
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	/**
	 * 获取数据库中前台页面图片切换时间间隔
	 * 
	 * **/
	
	@Override
	public int getTime() {
		// TODO Auto-generated method stub
		int times = 0;
		try {
			List<CmsShowtime> list = imageDao.getAllList("select s from CmsShowtime s where 1=1");
			if(list!=null && list.size()>0){
				times = list.get(0).getShowTime();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return times;
	}

	
	/**
	 * 修改图片切换时间
	 * **/
	@Override
	public boolean updateTime(int time) {
		// TODO Auto-generated method stub
		boolean bb=false;
		try {
			imageDao.updateObject("update cms_showtime set show_time="+time);
			bb=true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bb;
	}

}
