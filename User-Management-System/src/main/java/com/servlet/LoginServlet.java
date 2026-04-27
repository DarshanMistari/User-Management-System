package com.servlet;

import java.io.IOException;
import java.sql.ResultSet;

import com.servlet.entity.Users;
import com.servlet.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		
		String password = req.getParameter("password");
		
		UserService userService = new UserService();
		
//		boolean result = userService.loginUser(email, password);
//		if(result == true) {
//			req.getRequestDispatcher("Profile.jsp").forward(req, resp);
//		}else {
//			req.setAttribute("msg","Invalid Credential! Please try again.");
//			req.getRequestDispatcher("Login.jsp").include(req, resp);
//		}
		
		ResultSet rs = userService.loginUser1(email, password);
		
		try {
			if(rs.next()) {
				String name = rs.getString("name");
				String emails = rs.getString("email");
				String passwords = rs.getString("password");
				String city = rs.getString("city");
				String gender = rs.getString("gender");
				Users user = new Users(name, emails, passwords, city, gender);
				req.setAttribute("user", user);
				req.getRequestDispatcher("Profile.jsp").forward(req, resp);
				
			}else {
				req.setAttribute("msg","Invalid Credential! Please try again.");
				req.getRequestDispatcher("Login.jsp").forward(req, resp);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}	
	

}
