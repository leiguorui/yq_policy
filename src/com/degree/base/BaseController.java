package com.degree.base;

import javax.servlet.http.HttpServletRequest;

import com.degree.cons.Cons;
import com.degree.domain.User;

public class BaseController {
	protected User getSessionUser(HttpServletRequest request){
		return (User)request.getSession().getAttribute(Cons.USER_CONTEXT);
	}
	
	protected void setSessionUser(HttpServletRequest request,User user){
		if(user!=null){
			request.getSession().setAttribute(Cons.USER_CONTEXT, user);
		}
	}
}
