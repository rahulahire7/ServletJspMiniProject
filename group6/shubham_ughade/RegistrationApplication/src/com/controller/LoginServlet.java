package com.controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.RegistrationJdbc;
import com.model.Registration;

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
		System.out.println("doget");
		RegistrationJdbc rj = new RegistrationJdbc();
		String s1=request.getParameter("uname");
		String s2=request.getParameter("pass");
		Registration r = new Registration();
		r.setUname(s1);
		r.setPass(s2);
		LinkedList<Registration> lst = new LinkedList<Registration>();
		lst.add(r);
		
		if(rj.validate(lst))
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("rid",s1);
			response.sendRedirect("homepage.jsp");
		} else {
			response.sendRedirect("home.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
