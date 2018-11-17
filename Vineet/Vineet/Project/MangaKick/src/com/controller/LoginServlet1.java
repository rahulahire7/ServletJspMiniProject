package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.*;

/**
 * Servlet implementation class LoginServlet1
 */
public class LoginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet1() {
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
		// TODO Auto-generated method stub
//		doGet(request, response);
		String s1=request.getParameter("inputEmail1");
		String s2=request.getParameter("inputPassword1");
		
//		String str=null;
		
		Login l=new Login();
		l.setEmail(s1);
		l.setPassword(s2);
		System.out.println(l.getEmail()+"\t"+l.getPassword());
		DBApplication db=new DBApplication();
		boolean b=db.validateUser(l);
		if(b)
		{
			Register r=db.getUserData(l);
			System.out.println(r.getName()+"\t"+r.getPassword()+"\t"+r.getEmail());			
			HttpSession session=request.getSession(true);
			session.setAttribute("name", r.getName());
			session.setAttribute("email", r.getEmail());
			session.setAttribute("pwd", r.getPassword());
			response.sendRedirect("main.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
			System.out.println("wrong login");
		}
	}

}
