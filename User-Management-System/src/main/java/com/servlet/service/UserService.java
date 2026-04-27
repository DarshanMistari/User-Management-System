package com.servlet.service;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.servlet.dao.UserDao;
import com.servlet.entity.Users;

public class UserService {

	UserDao userDao = new UserDao();
	
	public String saveUser(Users user) {
		
		String msg = userDao.saveUser(user);
		
		return msg;
	}
	
//	public boolean loginUser(String email,String password) {
//		
//		return userDao.loginUser(email, password);
//	}
	
	public ResultSet loginUser1(String email,String password) {
		return userDao.loginUser1(email, password);
	}
	
	public ArrayList<Users> getAllUsers() {
		
		return userDao.getAllUsers();
	}
}
