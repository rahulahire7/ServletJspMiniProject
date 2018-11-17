package com.controller;
import java.io.PrintWriter; 

import java.io.IOException;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
import javax.servlet.annotation.WebServlet;


import com.model.Login;
import com.doa.JdbcApplication;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("uname");
		String psw=request.getParameter("psw");
		PrintWriter out=response.getWriter();
		
		Login l=new Login();
		l.setUname(uname);
		l.setPsw(psw);
		JdbcApplication db=new JdbcApplication();
		boolean b=db.validateUser(l);
		if(b)
		{   
		HttpSession session=request.getSession(true);  
        session.setAttribute("uname",l.getUname()); 
			response.sendRedirect("welcome.jsp");
		}
		else
		{   //request.setAttribute("logincheck", l);
			response.sendRedirect("Login.jsp");
		}
		
	}

}
