package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegistrationJdbc;
import com.model.Registration;

/**
 * Servlet implementation class RegistrationServlet
 */
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
			System.out.println("validated");
			if(rj.book(lst)) {
				
				response.sendRedirect("success.jsp");
			    }
				else {
					System.out.println("servlet else");
				response.sendRedirect("unsuccess.jsp");	
				}
		} else {
			System.out.println("invalid user id pass combination");
			response.sendRedirect("home.jsp");
		}
	
	    
		doGet(request, response);
	}

}