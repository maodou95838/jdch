package com.cms.vo;

import java.util.List;

import com.cms.pojo.CmsShowMenu;



/**
 * 导航VO
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
public class CmsShowMenuVO  implements java.io.Serializable {


    // Fields    

     private Integer menuId;
     private Integer parentId;
     private String menuName;
     private String menuUrl;
     private Integer sort;
     private Integer isdel;
     private Integer sgin;
     private List<CmsShowMenuVO> children;
     private String parentName;
     private String gradName;
     private Integer gradId;
     private String state;
     private String iconCls;
     private Integer languages;

    public CmsShowMenuVO() {
	}
    
    
    
    public CmsShowMenuVO(Integer menuId, Integer parentId, String menuName,
			String menuUrl, Integer sort, Integer isdel, Integer sgin,
			List<CmsShowMenuVO> children, String parentName, String gradName,
			Integer gradId, String state, String iconCls, Integer languages) {
		super();
		this.menuId = menuId;
		this.parentId = parentId;
		this.menuName = menuName;
		this.menuUrl = menuUrl;
		this.sort = sort;
		this.isdel = isdel;
		this.sgin = sgin;
		this.children = children;
		this.parentName = parentName;
		this.gradName = gradName;
		this.gradId = gradId;
		this.state = state;
		this.iconCls = iconCls;
		this.languages = languages;
	}



	public CmsShowMenuVO(Integer menuId, Integer parentId, String menuName,
			String menuUrl, Integer sort, Integer isdel, Integer sgin,
			List<CmsShowMenuVO> children, String parentName, String gradName,
			Integer gradId, String state, String iconCls) {
		super();
		this.menuId = menuId;
		this.parentId = parentId;
		this.menuName = menuName;
		this.menuUrl = menuUrl;
		this.sort = sort;
		this.isdel = isdel;
		this.sgin = sgin;
		this.children = children;
		this.parentName = parentName;
		this.gradName = gradName;
		this.gradId = gradId;
		this.state = state;
		this.iconCls = iconCls;
	}

	public Integer getSgin() {
		return sgin;
	}


	public String getParentName() {
		return parentName;
	}


	public void setParentName(String parentName) {
		this.parentName = parentName;
	}


	public String getGradName() {
		return gradName;
	}


	public void setGradName(String gradName) {
		this.gradName = gradName;
	}


	public void setSgin(Integer sgin) {
		this.sgin = sgin;
	}


	public Integer getGradId() {
		return gradId;
	}


	public void setGradId(Integer gradId) {
		this.gradId = gradId;
	}


	public void addChild(CmsShowMenuVO ctd) { 
        this.children.add(ctd); 
    }

    public Integer getMenuId() {
        return this.menuId;
    }
    
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public Integer getParentId() {
        return this.parentId;
    }
    
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getMenuName() {
        return this.menuName;
    }
    
    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuUrl() {
        return this.menuUrl;
    }
    
    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl;
    }

    public Integer getSort() {
        return this.sort;
    }
    
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getIsdel() {
        return this.isdel;
    }
    
    public void setIsdel(Integer isdel) {
        this.isdel = isdel;
    }

	public List<CmsShowMenuVO> getChildren() {
		return children;
	}
	
	public void setChildren(List<CmsShowMenuVO> children) {
		this.children = children;
	}
	

	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}

	
	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public Integer getLanguages() {
		return languages;
	}

	public void setLanguages(Integer languages) {
		this.languages = languages;
	}


	@Override
	public String toString() {
		return "CmsShowMenuVO [children=" + children + ", isdel=" + isdel
				+ ", menuId=" + menuId + ", menuName=" + menuName
				+ ", menuUrl=" + menuUrl + ", parentId=" + parentId + ", sort="
				+ sort + "]";
	}
   
}