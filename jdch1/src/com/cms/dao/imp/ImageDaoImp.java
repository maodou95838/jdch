package com.cms.dao.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.cms.dao.ImageDao;
import com.cms.pojo.CmsImage;
import com.cms.vo.CmsImageVo;
import com.common.dao.DaoTool;
import com.common.dao.impl.JdbcTool;

public class ImageDaoImp implements ImageDao {

	@Resource
	private DaoTool daoTool;
	@Resource
	private JdbcTool jdbcTool;

	/*
	 * 获取所有List
	 * */
	@SuppressWarnings("unchecked")
	@Override
	public List getAllList(String hql) {
		// TODO Auto-generated method stub
		List list = daoTool.find(hql);
		if(list!=null)
			return list;
		else
			return null;
	}

	/*
	 * 获取总行数
	 * */
	@Override
	public int getRows(String sql) {
		// TODO Auto-generated method stub
		return Integer.parseInt(daoTool.createQueryInteger(sql).toString());
	}

	/*
	 * 添加图片
	 * */
	@Override
	public boolean saveObject(Object obj) {
		// TODO Auto-generated method stub
		try {
			daoTool.save(obj);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public void updateObject(String sql) {
		// TODO Auto-generated method stub
		try {
			daoTool.createSQLUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	@SuppressWarnings("unchecked")
	@Override
	public List getList(String sql) {
		// TODO Auto-generated method stub
		List list = daoTool.find(sql);
		if(list!=null && list.size()>0)
			return list;
		else			
			return daoTool.find(sql);
	}
	/**
	 * 获取前台首页展示的相册
	 */
	public List<CmsImage> getXiangCeByUp(){
		StringBuffer sql = new StringBuffer("select * from cms_image where isdel=0 and parent_id=(select img_id from cms_image where shows=1) OR shows=1");
		try {
			List<Map<String, Object>> list = jdbcTool.queryForList(sql.toString());
			List<CmsImage> lists = new ArrayList<CmsImage>();
			if(list.size()>=0 && list!=null){
				for (int i = 0; i < list.size(); i++) {
					CmsImage vo = new CmsImage();
					vo.setImgId(Integer.parseInt(list.get(i).get("img_id").toString()));
					vo.setImgContent(list.get(i).get("img_content").toString());
					vo.setImgPath(list.get(i).get("img_path").toString());
					lists.add(vo);
				}
				return lists;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public DaoTool getDaoTool() {
		return daoTool;
	}
	
	public void setDaoTool(DaoTool daoTool) {
		this.daoTool = daoTool;
	}

	public JdbcTool getJdbcTool() {
		return jdbcTool;
	}

	public void setJdbcTool(JdbcTool jdbcTool) {
		this.jdbcTool = jdbcTool;
	}

	
}
