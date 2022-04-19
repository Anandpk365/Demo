package com.mycompany.ui;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class GotoWebSiteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String website = request.getParameter("website");
		
		response.getWriter().println("Hello");
		response.getWriter().flush();
		
		response.sendRedirect("https://"+website+".com");
		response.setStatus(301); //200  //404 //500
		
	}

}