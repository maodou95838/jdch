package com.common.util;
 
 import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.pojo.CmsAdminUser;
 
 @SuppressWarnings("serial")
public class LoginFilter extends HttpServlet implements Filter {
     public void destroy() {
     }
 
     public void doFilter(ServletRequest sRequest, ServletResponse sResponse, FilterChain filterChain) throws IOException, ServletException{
    	 try {
    		 HttpServletRequest request = (HttpServletRequest) sRequest;      
             HttpServletResponse response = (HttpServletResponse) sResponse;      
             HttpSession session = request.getSession();      
             String contextPath=request.getContextPath();  
             CmsAdminUser adminUser=(CmsAdminUser)session.getAttribute("cmsAdminUser");  
             String requestURI = request.getRequestURI();
            if(StringUtil.isNotEmpty(requestURI) && ((requestURI.indexOf("cmspage")>-1) || (requestURI.indexOf("hunt")>-1) || (requestURI.indexOf("index.jsp")>-1))){
            	if(adminUser!=null){
            		filterChain.doFilter(sRequest, sResponse);	
            	}else{
            		response.sendRedirect(contextPath+"/login.jsp");
            		return ;
            	}
            }else{
            		 filterChain.doFilter(sRequest, sResponse);	 
            	 }
            	  
		} catch (Exception e) {
			e.printStackTrace();
		}
     }  
 
     public void init(FilterConfig arg0) throws ServletException {
 
     }
     
     public static void main(String[] args) {
		String a="cmspage/article.jsp";
	}
 }