package com.vcube.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.dao.StudentDataAccess;
import com.vcube.model.RegisterModel;


@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
//	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname = request.getParameter("fullname");
		String username = request.getParameter("username");
//		long phone = Integer.parseInt(request.getParameter("phone")); NumberFormatException 
//		Integer.parseInt() can only handle values up to 2,147,483,647 (10 digits max).
//		long phone = Long.parseLong(request.getParameter("phone")); // but 0 at the beginning is automatically removed(leading zero)
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		
		RegisterModel rm = new RegisterModel();
		rm.setFullname(fullname);
		rm.setUsername(username);
		rm.setEmail(email);
		rm.setPassword(password);
		rm.setGender(gender);
//		rm.setPhone(phone);
		
		StudentDataAccess sda = new StudentDataAccess();
		String status = sda.insertStudent(rm);
		
		if(status.equals("success")) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		

	}

}
