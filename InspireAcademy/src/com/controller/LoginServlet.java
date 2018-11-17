package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DataJdbc;
import com.model.Login;
import com.model.Register;

/**
 * Servlet implementation class LoginServlet
 */
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username = request.getParameter("Username");
		String pwd1 = request.getParameter("pwd1");
		System.out.println("test1");
		Login l = new Login();
		l.setUsername(Username);
		l.setPwd1(pwd1);  
		List<Login> lst = new LinkedList<Login>();
		System.out.println("test2");
		 
		
		System.out.println(l.getUsername());
		lst.add(l); 
		System.out.println(lst);
		DataJdbc db = new DataJdbc();  
		boolean b = db.validateData(l);
		System.out.println(b);
		if (b==true)
		{
			
			HttpSession session = request.getSession();
			session.setAttribute("u1", Username);
		
			System.out.println(Username);
			System.out.println("session");
			response.sendRedirect("User.jsp");
		 	
		}
		
		else  
			
			response.sendRedirect("Error.jsp");
	
		
	}
}

