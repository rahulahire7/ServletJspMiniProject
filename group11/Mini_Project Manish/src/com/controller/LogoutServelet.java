package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LogoutServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession(false);
		session.invalidate();                                  
		/**
		 *    destroying the session value
		 */
		
		out.println("<h1>You are Sucessfully Logged out</h1>");
		response.setHeader("Refresh", "2; URL=http://localhost:9090/NoBank/login.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
