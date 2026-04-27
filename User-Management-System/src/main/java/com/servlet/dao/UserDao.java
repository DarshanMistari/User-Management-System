package com.servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.servlet.entity.Users;
import com.servlet.util.Util;

public class UserDao {
	
	Connection con = Util.getConnection();
	
	public String saveUser(Users user) {
		
		try {
			
			PreparedStatement pstmt = con.prepareStatement("insert into users values(?,?,?,?,?)");
			
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getCity());
			pstmt.setString(5, user.getGender());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "User Register Successfully";
	}
	
	
//	public boolean loginUser(String email, String Password) {
//		try {
//		PreparedStatement pstmt = con.prepareStatement("select email,password from users where email=? and password=?");
//		
//		pstmt.setString(1, email);
//		pstmt.setString(2, Password);
//		
//		ResultSet rs= pstmt.executeQuery();
//		
//		if(rs.next()) {
//			
//			return true;
//		}else {
//			return false;
//		}
//
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		return false;
//	}
	
	public ResultSet loginUser1(String email, String Password) {
		
		ResultSet rs= null;
		try {
		PreparedStatement pstmt = con.prepareStatement("select * from users where email=? and password=?");
		
		pstmt.setString(1, email);
		pstmt.setString(2, Password);
		
		rs= pstmt.executeQuery();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	
	public ArrayList<Users> getAllUsers() {
		
		ArrayList<Users> users = new ArrayList<Users>();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from users");
			
			while(rs.next()) {
				String name = rs.getString("name");
				String email = rs.getString("email");
				String password = rs.getString("password");
				String city = rs.getString("city");
				String gender = rs.getString("gender");
				
				Users user = new Users(name, email, password, city, gender);
				users.add(user);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	

}
