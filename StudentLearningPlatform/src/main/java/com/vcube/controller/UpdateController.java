package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.StudentDataAccess;
import com.vcube.model.RegisterModel;
import com.vcube.model.UpdateModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String new_fullname = request.getParameter("fullname");
		String new_username = request.getParameter("username");
		String new_password = request.getParameter("password");
//		long phone = Long.parseLong(request.getParameter("phone")); // but 0 at the beginning is automatically removed(leading zero)
		String new_email = request.getParameter("email");
		String new_gender = request.getParameter("gender");
	
		
		StudentDataAccess sda = new StudentDataAccess();
		RegisterModel old = sda.getOldDetails(new_username);
		if (old == null) {
		    request.setAttribute("errorMsg", "❌ Username does not exist!");
		    request.getRequestDispatcher("update.jsp").forward(request, response);
		    return;
		}

		// if new value is empty -> use old value
		if (new_fullname == null || new_fullname.isEmpty()) new_fullname = old.getFullname();
		if (new_email == null || new_email.isEmpty()) new_email = old.getEmail();
		if (new_password == null || new_password.isEmpty()) new_password = old.getPassword();
		if (new_gender == null || new_gender.isEmpty()) new_gender = old.getGender();
		
		
		UpdateModel um = new UpdateModel();
		um.setNew_fullname(new_fullname);
		um.setNew_username(new_username);
		um.setNew_email(new_email);
		um.setNew_password(new_password);
		um.setNew_gender(new_gender);
		
		
		
		String status = sda.updateStudent(um);
		
		if(status.equals("success")) {
			RequestDispatcher rd = request.getRequestDispatcher("studentPortal.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("errorMsg", "❌ Your username is wrong or does not exist!");
			RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
			rd.forward(request, response);
		}
	}

}
