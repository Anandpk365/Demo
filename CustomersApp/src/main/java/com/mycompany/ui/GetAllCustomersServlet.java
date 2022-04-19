package com.mycompany.ui;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mycompany.dto.Customer;
import com.mycompany.service.CustomerService;
import com.mycompany.service.CustomerServiceImpl;


public class GetAllCustomersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerService customerService = new CustomerServiceImpl();
		ArrayList<Customer> customers = customerService.getAll();
		
		request.setAttribute("customers", customers);//requestScope data
		
		request.getRequestDispatcher("/JSPPages/DisplayGetAllCustomers.jsp").forward(request, response);
		
	}

}