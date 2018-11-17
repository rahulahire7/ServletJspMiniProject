package com.controller;

import com.jdbc.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.*;
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email=request.getParameter("email"); // parsing values
		String pass=request.getParameter("pass");
		Data dt=new Data(); Data dt1=new Data();
	    dt.setName(email); dt.setPass(pass);	
		PersonJdbc pj=new PersonJdbc();
		boolean i;
		dt1=pj.admin();  String str=dt1.getName();
		HttpSession session=request.getSession();
		
		if(email.equals(dt1.getName()) && pass.equals(dt1.getPass()))   // validating the admin credentials  
		{  
			session.setAttribute("str", str);
			   response.sendRedirect("WelcomeAdmin.jsp"); //passing the new request
			}	
		else {	
		i=pj.validate(dt);
		
		PrintWriter out=response.getWriter();
		
		if(i) 
		{
			session.setAttribute("str", email);     //setting session sttribute value for further use
			response.sendRedirect("welcome.jsp"); 
		    
		}
		  else 
		     { 
			    out.println("<p>Invalid Credentials</p>"); 
			    response.setHeader("Refresh", "2; URL=http://localhost:9090/NoBank/login.jsp");
			    //response.sendRedirect("login.jsp"); 
			    }
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
