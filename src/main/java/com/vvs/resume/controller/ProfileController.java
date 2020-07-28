package com.vvs.resume.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.vvs.resume.service.NameService;

@Controller
public class ProfileController extends HttpServlet {
       
	private static final long serialVersionUID = -22853229714371429L;
	
	@Autowired
	private NameService nameService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String param = request.getParameter("name");
		if (StringUtils.isNotBlank(param)) {
			request.setAttribute("name", nameService.convertName(param));
		}
		request.getRequestDispatcher("/WEB-INF/JSP/profile.jsp").forward(request, response);
	}
}
