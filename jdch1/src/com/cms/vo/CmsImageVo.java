package com.cms.vo;

import java.util.List;

import com.cms.pojo.CmsImage;
import com.cms.pojo.CmsShowMenu;



/**
 * CmsImage entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class CmsImageVo  implements java.io.Serializable {


    // Fields    

     private Integer imgId;
     private String imgContent;
     private String imgPath;
     private Integer imgAlbum;
     private Integer isdel;
     private Integer parentId;
     private List<CmsImage> children;
     private String state;
     private Integer shows;

    // Constructors

    /** default constructor */
    public CmsImageVo() {
    }

    
    public CmsImageVo(Integer imgId, String imgContent, String imgPath,
			Integer imgAlbum, Integer isdel, Integer parentId,
			List<CmsImage> children, String state, Integer shows) {
		super();
		this.imgId = imgId;
		this.imgContent = imgContent;
		this.imgPath = imgPath;
		this.imgAlbum = imgAlbum;
		this.isdel = isdel;
		this.parentId = parentId;
		this.children = children;
		this.state = state;
		this.shows = shows;
	}


	/** full constructor */
   

   
    // Property accessors

    public Integer getImgId() {
        return this.imgId;
    }
    
	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public void setImgId(Integer imgId) {
        this.imgId = imgId;
    }

    public String getImgContent() {
        return this.imgContent;
    }
    
    public void setImgContent(String imgContent) {
        this.imgContent = imgContent;
    }

    public String getImgPath() {
        return this.imgPath;
    }
    
    public List<CmsImage> getChildren() {
		return children;
	}


	public void setChildren(List<CmsImage> children) {
		this.children = children;
	}


	public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public Integer getImgAlbum() {
        return this.imgAlbum;
    }
    
    public void setImgAlbum(Integer imgAlbum) {
        this.imgAlbum = imgAlbum;
    }

    public Integer getIsdel() {
        return this.isdel;
    }
    
    public void setIsdel(Integer isdel) {
        this.isdel = isdel;
    }

    public Integer getParentId() {
        return this.parentId;
    }
    
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }


	public Integer getShows() {
		return shows;
	}


	public void setShows(Integer shows) {
		this.shows = shows;
	}





}