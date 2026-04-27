package com.servlet;

import java.io.IOException;

import com.servlet.entity.Users;
import com.servlet.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegistrationServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("Service Method Call");
		
//		resp.getWriter().println("Registration SuccessFully...");
				
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		String city = req.getParameter("city");
		String gender = req.getParameter("gender");

		
		Users user = new Users(name, email, password, city, gender);
		UserService userService = new UserService();
		
		String msg = userService.saveUser(user);
		
		req.setAttribute("msg", msg);
		
		req.getRequestDispatcher("Register.jsp").include(req, resp);
		
		
		
	}

}
