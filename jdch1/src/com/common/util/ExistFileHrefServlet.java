package com.common.util;

import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

/**
 * 加载已经存在文件列表servlet
 * 
 * @author Jackie Hou
 *
 */
public class ExistFileHrefServlet extends HttpServlet {

	@Override
	public void init() throws ServletException {
		String filePath = getInitParameter("path");
		String realRoot = getServletContext().getRealPath("/");
		String surfix = filePath + File.separator ;

		//拼接：   d:\tomcat\webapps\cms\cms_href\
		String realPath = realRoot + surfix; 
		
		//访问：/cms/cms_href/
		String servletPath = getServletContext().getContextPath() ;		
		servletPath = servletPath + "/" + filePath + "/";
		
		//init
		final ArticleProcessor artPcor = ArticleProcessor.getInstance();
		artPcor.setRealPath(realPath);
		artPcor.setServletPath(servletPath);
		
		Timer timer = new Timer();
		timer.schedule(new TimerTask() {
			
			@Override
			public void run() {
				//load
				artPcor.fillSetWithLocalExistFile();
			}
			
		}, (1000 * 60 * 60), 2000);
	}
	
	
}
