package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.*;
public class CheckBalance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CheckBalance() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		PrintWriter out=response.getWriter();
		PersonJdbc pj=new PersonJdbc();
		
		HttpSession session=request.getSession();
		String str=(String)session.getAttribute("str");   //accessing the session object
		
		
		int i=pj.checkbalance(str);     // calling the balance checking method
		
		
		out.println("<p>Your Balance is"+i+"</p>");
		response.setHeader("Refresh", "4; URL=http://localhost:9090/NoBank/welcome.jsp");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
