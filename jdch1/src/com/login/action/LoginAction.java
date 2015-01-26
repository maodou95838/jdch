package com.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.common.action.BaseAction;
import com.common.util.StringUtil;
import com.login.pojo.CmsAdminUser;
import com.login.service.LoginService;

@SuppressWarnings("serial")
public class LoginAction extends BaseAction{
	private LoginService loginService;

	public String adminLogin(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String adminName = request.getParameter("adminName")==null?"":request.getParameter("adminName").trim();
		String adminPwd = request.getParameter("adminPwd")==null?"":request.getParameter("adminPwd").trim();
		//String yzm = request.getParameter("yzm")==null?"":request.getParameter("yzm").trim();
		//String verifyCode = request.getSession().getAttribute("verifyCode").toString();
		try {
			/*
			if(!"".equals(yzm) && yzm!=null || !"验证码".equals(yzm)){
				if(!verifyCode.equals(yzm)){
					StringUtil.responseText("2");
				}
			}
			*/
			CmsAdminUser cmsAdminUser = loginService.login(adminName, adminPwd);
			if(cmsAdminUser!=null){
				request.getSession().setAttribute("cmsAdminUser", cmsAdminUser);
				StringUtil.responseText("true");
			}
			StringUtil.responseText("1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
	}
	public String tuichu(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("cmsAdminUser");
		return "login";
	}
	
	public LoginService getLoginService() {
		return loginService;
	}
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
}
