package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.Login;

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
		
		String s1=request.getParameter("uno");
		String s2=request.getParameter("pass");
	
		//String str=null;
		
		Login l=new Login();		//object of class login		
		l.setuno(s1);				//sets username to l.uno
		l.setPass(s2);				//sets password to l.pass
		System.out.println("username "+l.getuno());
		System.out.println("password "+l.getPass());
		DBApplication db=new DBApplication();
		boolean b=db.validateUser(l);
		if(b==true)
		{
			response.sendRedirect("Index.jsp");
		}
		else
		{
			response.sendRedirect("Login.jsp");
		}
		
		
		/*HttpSession session=request.getSession(true);
		session.setAttribute("name", s1);
		response.sendRedirect("Welcome.jsp");*/
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
