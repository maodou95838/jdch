package com.cms.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

import org.apache.struts2.ServletActionContext;

import com.cms.pojo.CmsImage;
import com.cms.service.ImageService;
import com.cms.vo.CmsImageVo;
import com.common.action.BaseAction;
import com.common.util.ImageTool;
import com.common.util.StringUtil;



public class ImageAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	private ImageService imageServ;
	private CmsImage cmsImage = new CmsImage();
	private JSONObject result;
	private Integer page;
	private Integer rows;
	
	private File file;
	private String fileFileName;
	private String fileContentType;
	
	/**
	 * 获取imagelist列表
	 * */
	public void getImageList(){
		String imgId=this.getRequest().getParameter("imgId");
		String imgContent = this.getRequest().getParameter("imgContent");
		String parentId = this.getRequest().getParameter("parentId");
		Map<String,Object> jsonmap = new HashMap<String,Object>();
		StringBuffer sb=new StringBuffer("");
		if(imgId!=null && imgId.length()>0){
			int id=0;
			try {
				id=Integer.parseInt(imgId);
			} catch (Exception e) {
			}
			sb.append(" and c.imgId=").append(id);
		}else if(imgContent!=null && imgContent.length()>0)
			sb.append(" and c.imgContent like '%").append(imgContent).append("%'");
		else if(parentId!=null && parentId.length()>0){
			sb.append(" and c.parentId=").append(parentId);
		}
		try {
			List<CmsImage> cmsimagelist = imageServ.getImageList(sb.toString());
			List<Object> list = new ArrayList<Object>();
			if(cmsimagelist!=null && cmsimagelist.size()>0){
				for (int i = 0; i < cmsimagelist.size(); i++) {
					CmsImageVo civ = new CmsImageVo();
					civ.setImgId(cmsimagelist.get(i).getImgId());
					civ.setImgContent(cmsimagelist.get(i).getImgContent());
					civ.setImgPath(cmsimagelist.get(i).getImgPath());
					civ.setParentId(cmsimagelist.get(i).getParentId());
					civ.setState("open");
					JSONObject job = JSONObject.fromObject(civ);
					list.add(job);
				}
			}
			StringUtil.responseText(list.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 添加相册/图片
	 * types=0 添加相册，types=1 添加图片
	 * */
	public void saveImage(){
		String types = this.getRequest().getParameter("types"); 
		String savePath = ServletActionContext.getServletContext().getRealPath("upfile");
		String content = this.getRequest().getParameter("imgContent");
		String pid = this.getRequest().getParameter("parentId");
		String parent = this.getRequest().getParameter("parent");
		String fileName = "";
		if(checkContent(content,pid)){
			if(null!=file){
				 try {
					 fileName = new Date().getTime()+this.getFileFileName().substring((this.getFileFileName().lastIndexOf(".")), (this.getFileFileName().length()));
					 InputStream is = new FileInputStream(file);
					 File destFile = new File(savePath+"/",fileName);
					 this.setFileFileName(savePath+"/"+fileName);
					 OutputStream os = new FileOutputStream(destFile);
					 byte[] buffer = new byte[400];
					    int length  = 0 ;
					    while((length = is.read(buffer))>0){
					    os.write(buffer, 0, length);
					   }
					  is.close();
					  os.close();
					  long size=file.length()/1024;
					  if(size>=2048){
						  String url=savePath+"\\";
						  ImageTool.getBean().reduce(url,  fileName, 966, 412, true);
					  }
					  if(types!=null && types.equals("0"))
						  cmsImage.setImgAlbum(0);
					  else
						  cmsImage.setImgAlbum(1);
					  Integer pId = null;
					  try {
						  pId=Integer.parseInt(pid);
					  } catch (Exception e) {
						  pId=0;
					  }
					  cmsImage.setParentId(pId);
					  cmsImage.setImgContent(content);
					  cmsImage.setIsdel(0);
					  cmsImage.setImgPath(fileName);
					  Boolean bb=imageServ.saveImage(cmsImage);
					  StringUtil.responseText2(this.getResponse(),bb.toString());
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}else{
			try {
				StringUtil.responseText2(this.getResponse(),"1");
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
	}
	
	/**
	 * 获取相册List
	 * **/
	public void getXiangCe(){
		StringBuilder sb = new StringBuilder("");
		sb.append(" c.parentId=0");
		try {
			List<Object> list = new ArrayList<Object>();
			List<CmsImage> imagelist = imageServ.getList(sb.toString());
			if(imagelist!=null && imagelist.size()>0){
				for (int i = 0; i < imagelist.size(); i++) {
					CmsImageVo civ = new CmsImageVo();
					civ.setImgId(imagelist.get(i).getImgId());
					civ.setImgContent(imagelist.get(i).getImgContent());
					civ.setImgAlbum(imagelist.get(i).getImgAlbum());
					civ.setImgPath(imagelist.get(i).getImgPath());
					civ.setParentId(imagelist.get(i).getParentId());
					civ.setShows(imagelist.get(i).getShows());
					civ.setState("closed");
					JSONObject job = JSONObject.fromObject(civ);
					list.add(job);
				}
			}
			StringUtil.responseText(list.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 修改图片及相册
	 * **/
	public void updateImage(){
		String imgid=this.getRequest().getParameter("imgId");
		String savePath = ServletActionContext.getServletContext().getRealPath("upfile");
		String content = this.getRequest().getParameter("imgContent");
		String pid = this.getRequest().getParameter("pid");
		String cont=this.getRequest().getParameter("content");
		String parid = this.getRequest().getParameter("parent");
		StringBuilder sb = new StringBuilder();
		String fileName = "";
		try {
			 boolean bool=false;
			 if(content!=null && cont!=null && content.equals(cont))
				 bool = true;
			 else
				 bool=checkContent(content,pid);
			if(bool){
				if(null!=file){
					 fileName = new Date().getTime()+this.getFileFileName().substring((this.getFileFileName().lastIndexOf(".")), (this.getFileFileName().length()));
					 InputStream is = new FileInputStream(file);
					 File destFile = new File(savePath+"/",fileName);
					 this.setFileFileName(savePath+"/"+fileName);
					 OutputStream os = new FileOutputStream(destFile);
					 byte[] buffer = new byte[400];
					    int length  = 0 ;
					    while((length = is.read(buffer))>0){
					    os.write(buffer, 0, length);
					   }
					  is.close();
					  os.close();
					  long size=file.length()/1024;
					  if(size>=2048){
						  String url=savePath+"\\";
						  ImageTool.getBean().reduce(url,  fileName, 966, 412, true);
					  }
					  sb.append(" img_path='").append(fileName).append("',");
				}
					if(parid!=null && parid.length()>0)
						sb.append(" parent_id=").append(parid).append(",");
					sb.append(" img_content='").append(content).append("'");
					sb.append(" where img_id=").append(imgid);
					imageServ.updateImage(sb.toString());
					StringUtil.responseText2(this.getResponse(), "true");
			}else{
				StringUtil.responseText2(this.getResponse(), "1");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 删除图片及相册
	 * **/
	public void deleteImage(){
		String id = this.getRequest().getParameter("id");
		String types = this.getRequest().getParameter("types");
		StringBuilder sb = new StringBuilder(" isdel=1 where img_id in('"+id+"')");
		if(types!=null && types.equals("0")){
			sb.append(" or parent_id=").append(id);
		}
		try {
			imageServ.updateImage(sb.toString());
			StringUtil.responseText("true");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	
	/**
	 *获取单个CmsImage对象 
	 * **/
	public void getOneCmsImage(){
		String id = this.getRequest().getParameter("imgId")==null?"0":this.getRequest().getParameter("imgId");
		try {
			CmsImage cmsimage=imageServ.getOneObject(Integer.parseInt(id));
			JSONObject obj = (JSONObject)JSONSerializer.toJSON(cmsimage);
			StringUtil.responseText(obj.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 检查重复
	 * 
	 * **/
	public boolean checkContent(String cont,String pid){
		boolean bb = false;
		try {
			bb = imageServ.checkName("c.imgContent", cont,pid);
		} catch (Exception e) { 
			// TODO: handle exception
			e.printStackTrace();
		}
		return bb;
	}
	
	/**
	 * 将相册设为首页展示
	 */
	public void updateByShows(){
		String id = this.getRequest().getParameter("imgId")==null?"0":this.getRequest().getParameter("imgId");
		try {
			imageServ.updateByShows(id);
			StringUtil.responseText("true");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 获取前台首页展示的相册
	 */
	public String getXiangCeByUp(){
//		String languages =  this.getRequest().getParameter("languages") == null ? "0": this.getRequest().getParameter("languages");
		try {
			List<CmsImage> list = imageServ.getXiangCeByUp();
			this.getRequest().setAttribute("imgList", list);
			return "chinese";
//			if("1".equals(languages)){
//				return "chinese";
//			}
//			return "ok";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ok";
	}
	
	
	/**
	 * 获取数据库中前台页面图片切换时间间隔
	 * 
	 * **/
	public void getShowTime(){
		try {
			int times = imageServ.getTime();
			StringUtil.responseText(times+"");
		} catch (Exception e) {
			try {
				StringUtil.responseText("null");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
	
	/**
	 * 修改图片切换时间
	 * **/
	public void updataTime(){
		try {
			String tt = this.getRequest().getParameter("time")==null?"0":this.getRequest().getParameter("time");
			boolean bb = imageServ.updateTime(Integer.parseInt(tt));
			if(bb)
				StringUtil.responseText("0");
			else
				StringUtil.responseText("1");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public ImageService getImageServ() {
		return imageServ;
	}

	public void setImageServ(ImageService imageServ) {
		this.imageServ = imageServ;
	}

	public JSONObject getResult() {
		return result;
	}
	public void setResult(JSONObject result) {
		this.result = result;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public CmsImage getCmsImage() {
		return cmsImage;
	}

	public void setCmsImage(CmsImage cmsImage) {
		this.cmsImage = cmsImage;
	}
	
	
	
	
	
	
}
