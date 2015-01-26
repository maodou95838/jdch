package com.common.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.log4j.Logger;

import com.cms.pojo.CmsArticle;

/**
 * 文章处理
 * 注意：本类对象为单例
 * 
 * @author Jackie Hou
 *
 */
public class ArticleProcessor {
	private Logger logger = Logger.getLogger(ArticleProcessor.class);
	
	private Set<String> fileNameSet = new HashSet<String>();
	
	private String realPath;
	
	private String servletPath;
	
	/**
	 * 填充
	 */
	public void fillSetWithLocalExistFile() {
		File file = new File(realPath);
		
		if (!file.exists()) {
			logger.error(realPath + "不存在！请创建好，并重新启动web容器！");
			System.exit(0);
			throw new RuntimeException(realPath + "不存在！");
		}
		
		File[] allFiles = file.listFiles();
		
		for (File f : allFiles) {
			fileNameSet.add(f.getName());
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		logger.info(sdf.format(new Date()) + "读到文件数量 = " + (allFiles == null ? 0 : allFiles.length));
	}
	
	/**
	 * 加链接
	 * @param article
	 * @return
	 */
	public CmsArticle addHref4ExistFileName(CmsArticle article) {
		String content = article.getArticleContent();
		if (StringUtils.isEmpty(content)) {
			return article;
		}
		
		for (String name : fileNameSet) {
			if (content.indexOf(name) != -1) {
				content = content.replace(name, addHref4FileName(name));
			}
			
			continue;
		}
		
		article.setArticleContent(content);
		return article;
	}
	
	private String addHref4FileName(String fileName) {
		String prefix = "<a href='" + servletPath; 
		String surfix = "</a>";
		String midStr = fileName + "'>" + fileName;
		return prefix + midStr + surfix;
	}


	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}

	public void setServletPath(String servletPath) {
		this.servletPath = servletPath;
	}
	
	private static ArticleProcessor instance = new ArticleProcessor();
	
	public static ArticleProcessor getInstance() {
		return instance;
	}
	
	private ArticleProcessor() {
		
	}
}
