package com.vcube.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vcube.model.LoginModel;
import com.vcube.model.RegisterModel;
import com.vcube.model.UpdateModel;
import com.vcube.utility.DBConnection;


public class StudentDataAccess implements StudentDAOInterface{
	DBConnection dbc;
	String status="failure";
	public String insertStudent(RegisterModel rm) {
		try {
			dbc = new DBConnection();
			Connection con = dbc.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into users(fullname,username,email,password,gender) values(?,?,?,?,?)");
            
            ps.setString(1, rm.getFullname());
            ps.setString(2,rm.getUsername());
            ps.setString(3, rm.getEmail());
            ps.setString(4, rm.getPassword());
            ps.setString(5, rm.getGender());
			
			int n = ps.executeUpdate();
			if(n>0) {
				status="success";
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
		
	}
	
	public String loginStudent(LoginModel rm) {
		
		try {
			dbc = new DBConnection();
			Connection con = dbc.getConnection();
			PreparedStatement ps = con.prepareStatement("select username from users where username=? and password=?");
            ps.setString(1,rm.getUsername());
            ps.setString(2, rm.getPassword());
			ResultSet n = ps.executeQuery();
			int count=0;
			while(n.next()) {
				count++;
			}
			if(count>0) {
				status="success";
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;

	}

	
public RegisterModel getOldDetails(String username) {
	    RegisterModel rm = null;

	    try {
	        dbc = new DBConnection();
	        Connection con = dbc.getConnection();

	        PreparedStatement ps = con.prepareStatement(
	            "SELECT fullname, email, password, gender FROM users WHERE username=?"
	        );
	        ps.setString(1, username);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            rm = new RegisterModel();
	            rm.setFullname(rs.getString("fullname"));
	            rm.setEmail(rs.getString("email"));
	            rm.setPassword(rs.getString("password"));
	            rm.setGender(rs.getString("gender"));
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return rm;
	}

public String updateStudent(UpdateModel um) 
{ 
	try 
	{ 
		dbc = new DBConnection(); 
		Connection con = dbc.getConnection(); 
		PreparedStatement ps = con.prepareStatement("update users set fullname=?, password=?, email=?, gender=? where username=?");
		ps.setString(1, um.getNew_fullname());
		ps.setString(2, um.getNew_password());
		ps.setString(3, um.getNew_email());
		ps.setString(4, um.getNew_gender());
		ps.setString(5, um.getNew_username());
		int n = ps.executeUpdate(); 
		if(n>0) 
		{ 
			status="success"; 
		}  
	}catch(Exception e) 
	{ 
		System.out.println(e); 
	} return status; 
} 




}
