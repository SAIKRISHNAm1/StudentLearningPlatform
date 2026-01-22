package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.StudentDataAccess;
import com.vcube.model.LoginModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
//	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginModel lm = new LoginModel();
		lm.setUsername(username);
		lm.setPassword(password);
		
		StudentDataAccess sda = new StudentDataAccess();
		String status = sda.loginStudent(lm);
		
		if(status.equals("success")) {
			//request.setAttribute("username",username);
			HttpSession session = request.getSession();
//			session.setAttribute("user_id", user_id);
			session.setAttribute("username", username);
			RequestDispatcher rd = request.getRequestDispatcher("studentPortal.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}

}
