package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JdbcOps;
import com.model.User;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User u = new User();
		JdbcOps db = new JdbcOps();
		
		Boolean redirect_to_profile = false;
		
		u.setUname(request.getParameter("uname"));
		u.setPass(request.getParameter("pass"));
		
		redirect_to_profile = db.validateUser(u);

		if(redirect_to_profile) {
			User usr = db.getUserProfileData(u);
			HttpSession session = request.getSession(true);
			session.setAttribute("userdata", usr);
			response.sendRedirect("ListUserPostServlet");
			/*
			//for doing the same thing with RequestDispatcher
			request.setAttribute("profileData", usr);
			RequestDispatcher view = request.getRequestDispatcher("ListUserPostServlet");
			view.forward(request, response);
			*/
		}
			
		else
			response.sendRedirect("Login.jsp");
	}

}
