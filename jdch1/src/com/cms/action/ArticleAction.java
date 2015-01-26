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

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.cms.pojo.CmsArticle;
import com.cms.pojo.CmsShowMenu;
import com.cms.service.ArticleService;
import com.cms.vo.ArtMenuVo;
import com.cms.vo.CmsShowMenuVO;
import com.common.action.BaseAction;
import com.common.util.ArticleProcessor;
import com.common.util.DateUtil;
import com.common.util.ImageTool;
import com.common.util.StringUtil;

public class ArticleAction extends BaseAction {
	private static final long serialVersionUID = 2236309816909044238L;
	private ArticleService articleService;
	private JSONObject result;
	private Integer page;
	private Integer rows;
	Logger log = Logger.getLogger(ArticleAction.class);

	private File file;
	private String fileFileName;
	private String fileContentType;

	/**
	 * 获取全部菜单(一级,二级)
	 */
	public void showMenuList() {
		// page = Integer.parseInt(this.getRequest().getParameter("page") ==
		// null ? "": this.getRequest().getParameter("page").trim());
		// rows = Integer.parseInt(this.getRequest().getParameter("rows") ==
		// null ? "": this.getRequest().getParameter("rows").trim());
		// int begin = (page - 1) * rows;
		StringBuffer sb = new StringBuffer("");
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		// Object total = articleService.getCountMenu(sb.toString());
		List<CmsShowMenuVO> cmsShowMenuVOs = articleService.getMenuList(sb
				.toString());
		// jsonMap.put("total", total);
		jsonMap.put("rows", cmsShowMenuVOs);
		result = JSONObject.fromObject(jsonMap);
		try {
			StringUtil.responseText(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 添加文章
	 */
	public void addArticle() {
		String menuId = this.getRequest().getParameter("menuId") == null ? ""
				: this.getRequest().getParameter("menuId").trim();
		String articleTitle = this.getRequest().getParameter("articleTitle") == null ? ""
				: this.getRequest().getParameter("articleTitle").trim();
		String articleContent = this.getRequest()
				.getParameter("articleContent") == null ? "" : this
				.getRequest().getParameter("articleContent").trim();
		String shows = this.getRequest().getParameter("shows") == null ? "0"
				: this.getRequest().getParameter("shows");
		String rolls = this.getRequest().getParameter("rolls") == null ? "0"
				: this.getRequest().getParameter("rolls");
		String savePath = ServletActionContext.getServletContext().getRealPath(
				"upfile");
		String fileName = "";
		try {
			if (null != file) {
				try {
					fileName = new Date().getTime()
							+ this.getFileFileName().substring(
									(this.getFileFileName().lastIndexOf(".")),
									(this.getFileFileName().length()));
					InputStream is = new FileInputStream(file);
					File destFile = new File(savePath + "/", fileName);
					this.setFileFileName(savePath + "/" + fileName);
					OutputStream os = new FileOutputStream(destFile);
					byte[] buffer = new byte[400];
					int length = 0;
					while ((length = is.read(buffer)) > 0) {
						os.write(buffer, 0, length);
					}
					is.close();
					os.close();
					long size = file.length() / 1024;
					if (size >= 2048) {
						String url = savePath + "\\";
						ImageTool.getBean().reduce(url, fileName, 1920, 1080,
								true);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if ("1".equals(shows)) {
				articleService.updateByColumn("shows", "0", "menu_id", menuId);
			}
			if ("0".equals(rolls)) {
				articleService.updateByColumn("rolls", "0", "menu_id", menuId);
			}
			CmsArticle cmsArticle = new CmsArticle(Integer.parseInt(menuId),
					articleTitle, articleContent, fileName, DateUtil
							.dateFormat(), 0, Integer.parseInt(shows), Integer
							.parseInt(rolls));
			Boolean bb = articleService.saveArticle(cmsArticle);
			StringUtil.responseText2(this.getResponse(), bb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取前台滚动新闻
	 */
	public void getArtListByRollsHome() {
		String languages = this.getRequest().getParameter("languages") == null ? "0"
				: this.getRequest().getParameter("languages");
		StringBuffer sb = new StringBuffer("");
		if ("1".equals(languages)) {
			sb.append(" and s.languages=").append(languages).append(" ");
		} else {
			sb.append(" and s.languages=0 ");
		}
		try {
			List<CmsArticle> artList = articleService.getArtListByRollsHome(sb
					.toString());
			List<CmsShowMenu> menuList = articleService.findMenu(null);
			List<Object> map = new ArrayList<Object>();
			if (artList != null && artList.size() > 0) {
				for (int i = 0; i < artList.size(); i++) {
					CmsArticle art = artList.get(i);
					for (int j = 0; j < menuList.size(); j++) {
						if (art.getMenuId().equals(menuList.get(j).getMenuId())) {
							CmsShowMenu menu = menuList.get(j);
							ArtMenuVo vo = new ArtMenuVo();
							String menuId = null;
							if (menuList.get(j).getSign() == 0) {
								menuId = menu.getMenuId().toString();
							} else if (menuList.get(j).getSign() == 1) {
								menuId = menu.getParentId() + ","
										+ menu.getMenuId();
							} else if (menuList.get(j).getSign() == 2) {
								for (int k = 0; k < menuList.size(); k++) {
									if (menuList.get(j).getParentId().equals(
											menuList.get(k).getMenuId())) {
										menuId = menuList.get(k).getParentId()
												+ "," + menu.getParentId()
												+ "," + menu.getMenuId();
									}
								}
							}
							if (menuId != null) {
								vo.setMenuName(menu.getMenuName());
								vo.setMenuUrl(menu.getMenuUrl());
								vo.setMenuId(menuId);
								vo.setArticleId(art.getArticleId());
								vo.setArticleTitle(art.getArticleTitle());
								vo.setArticleContent(art.getArticleContent());
								vo.setArticleImg(art.getArticleImg());
								JSONObject jo = JSONObject.fromObject(vo);
								map.add(jo);
							}
						}
					}

				}
			}
			StringUtil.responseText(map.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取文章列表
	 */
	public void articleList() {
		page = Integer
				.parseInt(this.getRequest().getParameter("page") == null ? ""
						: this.getRequest().getParameter("page").trim());
		rows = Integer
				.parseInt(this.getRequest().getParameter("rows") == null ? ""
						: this.getRequest().getParameter("rows").trim());
		String menuId = this.getRequest().getParameter("menuId") == null ? ""
				: this.getRequest().getParameter("menuId").trim();
		String articleTitle = this.getRequest().getParameter("articleTitle") == null ? ""
				: this.getRequest().getParameter("articleTitle").trim();
		String articleDate = this.getRequest().getParameter("articleDate") == null ? ""
				: this.getRequest().getParameter("articleDate").trim();
		StringBuilder sb = new StringBuilder("and a.menuId=" + menuId + "");
		if (articleTitle != null && !"".equals(articleTitle)) {
			sb.append(" and a.articleTitle like '%" + articleTitle + "%'");
		}
		if (articleDate != null && !"".equals(articleDate)) {
			sb.append(" and a.articleDate like '%" + articleDate + "%'");
		}
		int begin = (page - 1) * rows;
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		Object total = articleService.getCountArticle(sb.toString());
		List<CmsArticle> cmsArticleList = articleService.getarticleList(sb
				.toString(), begin, rows);
		jsonMap.put("total", total);
		if (cmsArticleList != null && cmsArticleList.size() > 0) {
			jsonMap.put("rows", cmsArticleList);
		} else {
			jsonMap.put("rows", 0);
		}
		result = JSONObject.fromObject(jsonMap);
		try {
			StringUtil.responseText(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 删除文章
	 */
	public void deleteArticle() {
		String ids = this.getRequest().getParameter("ids");
		String[] id = ids.split(",");
		Boolean bb = articleService.deleteArticle(id);
		try {
			StringUtil.responseText2(this.getResponse(), bb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 通过ID获取文章
	 */
	public void getOneArticle() {
		String articleId = this.getRequest().getParameter("articleId") == null ? ""
				: this.getRequest().getParameter("articleId").trim();
		try {
			CmsArticle cmsArticle = articleService.getOneArtocle(Integer
					.parseInt(articleId));
			JSONObject obj = (JSONObject) JSONSerializer.toJSON(cmsArticle);
			StringUtil.responseText(obj.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 修改文章信息
	 */
	public void updateArticle() {
		String articleId = this.getRequest().getParameter("articleId") == null ? ""
				: this.getRequest().getParameter("articleId").trim();
		String articleTitle = this.getRequest().getParameter("articleTitle") == null ? ""
				: this.getRequest().getParameter("articleTitle").trim();
		String deleteimg = this.getRequest().getParameter("deleteimg") == null ? ""
				: this.getRequest().getParameter("deleteimg").trim();
		String articleContent = this.getRequest()
				.getParameter("articleContent") == null ? "" : this
				.getRequest().getParameter("articleContent").trim();
		String savePath = ServletActionContext.getServletContext().getRealPath(
				"upfile");
		String menuId = this.getRequest().getParameter("menuId") == null ? ""
				: this.getRequest().getParameter("menuId");
		String shows = this.getRequest().getParameter("shows") == null ? ""
				: this.getRequest().getParameter("shows");
		String rolls = this.getRequest().getParameter("rolls") == null ? ""
				: this.getRequest().getParameter("rolls");
		try {
			CmsArticle art = articleService
					.getOneArtocle(new Integer(articleId));
			String fileName = "";
			if (art != null) {
				art.setArticleTitle(articleTitle);
				art.setArticleContent(articleContent);
				if ("0".equals(shows)) {
					articleService.updateByColumn("shows", "0", "menu_id",
							menuId);
					art.setShows(1);
				} else if ("1".equals(shows)) {
					articleService.updateByColumn("rolls", "0", "menu_id",
							menuId);
					art.setShows(0);
					art.setRolls(0);
				}
				if ("0".equals(rolls)) {
					articleService.updateByColumn("shows", "0", "menu_id",
							menuId);
					articleService.updateByColumn("rolls", "0", "menu_id",
							menuId);
					art.setShows(1);
					art.setRolls(1);
				} else if ("1".equals(rolls)) {
					art.setRolls(0);
				}
				if ("hf0346".equals(deleteimg)) {
					art.setArticleImg("");
				} else {
					if (null != file) {
						try {
							fileName = new Date().getTime()
									+ this.getFileFileName().substring(
											(this.getFileFileName()
													.lastIndexOf(".")),
											(this.getFileFileName().length()));
							InputStream is = new FileInputStream(file);
							File destFile = new File(savePath + "/", fileName);
							this.setFileFileName(savePath + "/" + fileName);
							OutputStream os = new FileOutputStream(destFile);
							byte[] buffer = new byte[400];
							int length = 0;
							while ((length = is.read(buffer)) > 0) {
								os.write(buffer, 0, length);
							}
							is.close();
							os.close();
							long size = file.length() / 1024;
							if (size >= 2048) {
								String url = savePath + "\\";
								ImageTool.getBean().reduce(url, fileName, 1920,
										1080, true);
							}
							art.setArticleImg(fileName);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
				Boolean bool = articleService.updateArticle(art);
				if (bool) {
					StringUtil.responseText2(this.getResponse(), bool
							.toString());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String serchMeanCmsArticle() {
		String meanId = this.getRequest().getParameter("meanId") == null ? ""
				: this.getRequest().getParameter("meanId").trim();
		CmsArticle art = articleService.getOneArtocleBymeanid(meanId);
		this.getRequest().setAttribute("article", art);
		return "ok";
	}

	// 单条文章
	public void findArticleById() {
		String menuId = this.getRequest().getParameter("menuId") == null ? ""
				: this.getRequest().getParameter("menuId").trim();
		try {
			CmsArticle art = articleService.getOneArtocleBymeanid(menuId);
			if (art != null) {
				//art = ArticleProcessor.getInstance().addHref4ExistFileName(art);

				JSONObject jo = JSONObject.fromObject(art);
				StringUtil.responseText(jo.toString());
			} else {
				StringUtil.responseText("");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 前台搜索功能（根据内容模糊查询）
	 */
	public void serachArticleList() {
		String languages = this.getRequest().getParameter("languages") == null ? "0"
				: this.getRequest().getParameter("languages");
		StringBuffer sb = new StringBuffer("");
		if ("1".equals(languages)) {
			sb.append(" and s.languages=").append(languages).append(" ");
		} else {
			sb.append(" and s.languages=0 ");
		}
		String content = this.getRequest().getParameter("content") == null ? ""
				: this.getRequest().getParameter("content").trim();
		try {
			List<CmsArticle> artList = articleService.serachArticle(content, sb
					.toString());
			List<CmsShowMenu> menuList = articleService.findMenu(null);
			List<Object> map = new ArrayList<Object>();
			if (artList != null && artList.size() > 0) {
				for (int i = 0; i < artList.size(); i++) {
					CmsArticle art = artList.get(i);
					for (int j = 0; j < menuList.size(); j++) {
						if (art.getMenuId().equals(menuList.get(j).getMenuId())) {
							CmsShowMenu menu = menuList.get(j);
							ArtMenuVo vo = new ArtMenuVo();
							String menuId = null;
							if (menuList.get(j).getSign() == 0) {
								menuId = menu.getMenuId().toString();
							} else if (menuList.get(j).getSign() == 1) {
								menuId = menu.getParentId() + ","
										+ menu.getMenuId();
							} else if (menuList.get(j).getSign() == 2) {
								for (int k = 0; k < menuList.size(); k++) {
									if (menuList.get(j).getParentId().equals(
											menuList.get(k).getMenuId())) {
										menuId = menuList.get(k).getParentId()
												+ "," + menu.getParentId()
												+ "," + menu.getMenuId();
									}
								}
							}
							if (menuId != null) {
								vo.setMenuName(menu.getMenuName());
								vo.setMenuUrl(menu.getMenuUrl());
								vo.setMenuId(menuId);
								vo.setArticleId(art.getArticleId());
								vo.setArticleTitle(art.getArticleTitle());
								vo.setArticleContent(art.getArticleContent());
								vo.setArticleImg(art.getArticleImg());
								JSONObject jo = JSONObject.fromObject(vo);
								map.add(jo);
							}
						}
					}

				}
			}
			StringUtil.responseText(map.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 更新
	 */
	public void updateByColumn() {
		String articleId = this.getRequest().getParameter("articleId") == null ? ""
				: this.getRequest().getParameter("articleId").trim();
		String menuId = this.getRequest().getParameter("menuId") == null ? ""
				: this.getRequest().getParameter("menuId").trim();
		String setCloumn = this.getRequest().getParameter("setCloumn") == null ? ""
				: this.getRequest().getParameter("setCloumn").trim();
		try {
			Boolean bool = false;
			if ("shows".equals(setCloumn)) {
				articleService.updateByColumn("shows", "0", "menu_id", menuId);
				articleService.updateByColumn("rolls", "0", "menu_id", menuId);
				bool = articleService.updateByColumn("shows", "1",
						"article_id", articleId);
			} else if ("rolls".equals(setCloumn)) {
				articleService.updateByColumn("shows", "0", "menu_id", menuId);
				articleService.updateByColumn("rolls", "0", "menu_id", menuId);
				articleService.updateByColumn("shows", "1", "article_id",
						articleId);
				bool = articleService.updateByColumn("rolls", "1",
						"article_id", articleId);
			}
			if (bool) {
				StringUtil.responseText("true");
			}
			StringUtil.responseText("false");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
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

}
