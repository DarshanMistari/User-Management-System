package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import com.servlet.entity.Users;
import com.servlet.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/all-Users")
public class GetAllUsers extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserService userService = new UserService();
		
		ArrayList<Users> users = userService.getAllUsers();
		
		req.setAttribute("users", users);
		
		req.getRequestDispatcher("All-Users.jsp").forward(req, resp);
	}

}
