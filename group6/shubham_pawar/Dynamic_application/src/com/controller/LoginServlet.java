package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.Login;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s1=request.getParameter("fname");
		String s2=request.getParameter("pass");
	
		Login l=new Login();
		l.setFname(s1);
		l.setPass(s2);
		DBApplication db=new DBApplication();
		boolean b=db.validateUser(l);
		if(b)
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("name", s1);

			response.sendRedirect("wel.jsp");

		}
		else
		{
			response.sendRedirect("LoginError.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
