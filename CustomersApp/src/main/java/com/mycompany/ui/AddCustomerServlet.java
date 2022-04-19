package com.mycompany.ui;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mycompany.dto.Customer;
import com.mycompany.service.CustomerService;
import com.mycompany.service.CustomerServiceImpl;


public class AddCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		String name = request.getParameter("cname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		
		Customer customer = new Customer(customerId, name, phone, email, age);
		
		CustomerService customerService = new CustomerServiceImpl();
		boolean result = customerService.save(customer);
		
		request.setAttribute("result", result);//storing data in request object --> requestScope data
		
		ServletContext application = getServletContext();
		
		application.setAttribute("a", "aaaa");
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/JSPPages/DisplayAddCustomer.jsp");
		requestDispatcher.include(request, response);//clear the out variable --> forwards to displayAddCustomer
	}

}
