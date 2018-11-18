package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.*;
import com.dao.*;

import java.util.ArrayList;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegistrationServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User u = new User();
		JdbcOps db = new JdbcOps();
		ArrayList<User> lst = new ArrayList<User>();
		
		u.setUname(request.getParameter("uname"));
		u.setEmail(request.getParameter("email"));
		u.setMobno(Double.parseDouble(request.getParameter("mobno")));
		u.setPass(request.getParameter("pass"));
		lst.add(u);
		
		int i = db.insertIntoUserInfo(lst);
		
		if(i>0)
			response.sendRedirect("Login.jsp");
		else
			response.sendRedirect("Register.jsp");
	}

}
