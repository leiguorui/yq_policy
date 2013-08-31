package com.degree.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.DispatcherServlet;

public class CustomDispatcherServlet extends DispatcherServlet {
	private static final long serialVersionUID = 1L;
	
	 protected void doService(HttpServletRequest request, HttpServletResponse response) throws Exception {  
		 request.setCharacterEncoding("utf-8");   //filter
		 super.doService(request, response);  
	 }  
}